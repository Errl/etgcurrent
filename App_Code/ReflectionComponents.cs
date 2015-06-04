using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using ReflectionComponents.EnumUtilities;

namespace ReflectionComponents
{
    namespace EnumUtilities
    {
        public static class CustomManageEnumerations
        {
            /// <summary>
            /// Provide a list of enum items from enum object. Parameter indicates any items to be removed 
            /// </summary>
            public static HashSet<T> GetEnumHashsetItems<T>(object[] oItemsToRemove) where T : struct // enum 
            {
                //Reflection Method - Remove
                const string rMethodRemove = "Remove";

                try
                {
                    //Check for Type
                    if (!typeof(T).IsEnum)
                        throw new ArgumentException("object is not an enumeration");

                    var genericEnumList =
                           Enum.GetValues(typeof(T)).Cast<T>().ToList();

                    if (oItemsToRemove != null)
                    {
                        //Check for Parameter 
                        if (oItemsToRemove.Any(oEnum => oEnum.GetType() != typeof(T)))
                            throw new ArgumentException("parameters do not match the type");

                        //Get Method
                        var methodInfo = genericEnumList.GetType().GetMethod(rMethodRemove);

                        //Remove Items from the list
                        foreach (var oItem in oItemsToRemove)
                            methodInfo.Invoke(genericEnumList, new[] { oItem });
                    }

                    //Return 
                    return new HashSet<T>(genericEnumList);

                }
                catch (ArgumentException ex)
                {
                    //set as you want    
                    throw ex;
                }
                catch (Exception ex)
                {
                    //set as you want 
                    throw ex;
                }
            }
        }
    }

    namespace WebControlsUtilities
    {
        /// <summary>
        /// Web.UI.Controls allowed to change the value of the property. 
        /// You can add element to enumeration to manage other controls 
        /// </summary>
        public enum ManagedControlType
        {
            All,
            TextBox,
            DropDownList,
            CheckBox,
            CheckBoxList,
            RadioButton,
            RadioButtonList,
            Button,
            LinkButton,
            HierarGrid,
            GridView,
            ImageButton,
            TabPanel,
            Panel,
            Label
        }

        /// <summary>
        /// Properties and new values you want to set
        /// </summary>
        public class ManagedControlTypeAttributesValue
        {
            //Property you want to change
            public string Attribute { get; set; }
            
            //New value - Be carefull about the type. (cast will be possible)
            public object AttributeNewValue { get; set; }
            
            //(Optional) - Custom attribute that must checked in order to apply the new value
            public string CustomAttribute { get; set; }

            //(Optional) - Value of the custom attribute that must match in order to apply the new value
            public string CustomAttributeValue { get; set; }
            
            //Costructor (default)
            public ManagedControlTypeAttributesValue()
            {
                Attribute = string.Empty;
                AttributeNewValue = "false";
                CustomAttribute = string.Empty;
                CustomAttributeValue = string.Empty;
            }
        }

        /// <summary>
        /// Parameters for the management of Web.UI.Control properties 
        ///  </summary>
        public class ManagedControlParameter
        {
            //Indicates WebControl or WebControl Container to which you want to set a new property
            //  MasterPage           =   Master
            //  Page                 =   Page 
            //  UserControl          =   UserControl 
            //  WebControl Container =   Each Container WebControl defined in "ManagedControlType" enum 
            //  WebControl           =   Each WebControl defined in "ManagedControlType" enum 
            public List<Control> MainControls { get; set; }

            //Controls where to apply property changes defined in "ManagedControlType" enum 
            //For "All" you'll apply changes to all controls in enum
            public HashSet<ManagedControlType> ManagedControls { get; set; }

            //List of "ManagedControlTypePropertiesValue" where you set new value and (optional) custom attribute conditions. 
            public List<ManagedControlTypeAttributesValue> Attributes { get; set; }

            //Costructor (default)
            public ManagedControlParameter()
            {
                MainControls = new List<Control>();
                ManagedControls = new HashSet<ManagedControlType>();
                Attributes = new List<ManagedControlTypeAttributesValue>();
            }
        }

        /// <summary>
        /// Managed Web.UI.Controls Utility
        /// </summary>
        public static class ManagedControls
        {
           
            private const string SAttributes = "Attributes";

            #region Properties

            /// <summary>
            /// Get "ManagedControlType" Enum List
            /// </summary>
            public static HashSet<ManagedControlType> ListOfManagedControl
            {
                get
                {
                    return CustomManageEnumerations.GetEnumHashsetItems<ManagedControlType>(new object[] { ManagedControlType.All });
                }
            }

            #endregion

            #region Private Methods

            /// <summary>
            ///  //Filter for ManagedControls
            /// </summary>
            private static List<Control> FilterManagedControls(List<Control> controlsList, ManagedControlParameter parameter, Control itemMainControl)
            {
                
                //Filter for ManagedControls and template container
                return (from cl in controlsList
                        from mc in parameter.ManagedControls
                        where (mc.ToString() == cl.GetType().Name) &&
                              (cl.TemplateControl.ID != null && cl.TemplateControl.ID == itemMainControl.TemplateControl.ID)
                        select cl).Distinct().ToList();

               
            }

            /// <summary>
            /// Get Attribute Collection from WebControls
            /// </summary>
            private static AttributeCollection GetControlCustomAttributes(Control control)
            {
                var property = control.GetType().GetProperty(SAttributes);
                
                return property != null
                           ? property.GetValue(control, null) as AttributeCollection
                           : new AttributeCollection(new StateBag());
            }

            /// <summary>
            /// Check and manage parameters
            /// </summary>
            private static ManagedControlParameter CheckParameters(ManagedControlParameter parameter)
            {
                
                //-------------------------------------------------------------------//
                //IF YOU NEED MORE CONTROL, YOU CAN IMPLEMENT VALIDATION LOGIC THERE //
                //-------------------------------------------------------------------//

                //---------
                //Check for "MainControl" 
                //---------
                if (parameter.MainControls == null)
                    throw new ArgumentNullException("parameter", "Parametro.MainControls can not be NULL");

                if (parameter.MainControls.Any(mcl => mcl == null))
                    throw new ArgumentNullException("parameter",
                                                        "Parametro.MainControls no elements can be NULL");

                //---------
                //Check for "ManagedControls"
                //---------
                if (parameter.ManagedControls == null)
                    throw new ArgumentNullException("parameter", "Parametro.ManagedControls can not be NULL");

                //---------
                //Check for "Attributes"
                //---------
                if (parameter.Attributes == null)
                    throw new ArgumentNullException("parameter", "Parametro.Properties non può essere NULL");

                if (parameter.Attributes.Any(p => p == null))
                    throw new ArgumentNullException("parameter",
                                                    "Parametro.Properties nessun elemento può essere NULL");

                //---------
                // build parameters reorganized
                //---------
                var checkedParameter = new ManagedControlParameter();
           
                checkedParameter.MainControls = parameter.MainControls;
                checkedParameter.ManagedControls = parameter.ManagedControls.Contains(ManagedControlType.All)
                                                       ? ListOfManagedControl
                                                       : parameter.ManagedControls;
                checkedParameter.Attributes = parameter.Attributes;

                return checkedParameter;
            }

            /// <summary>
            /// Recursive function that retrieves all the objects Web.UI.Control Container
            /// (Method could be private)
            /// </summary>
            private static List<Control> GetControlsList(Control mainControl)
            {
                //Inizialize list
                var list = new List<Control> { mainControl };

                if (mainControl.HasControls())
                {
                    foreach (Control subControl in mainControl.Controls)
                    {
                        //Children
                        list.AddRange(GetControlsList(subControl));
                    }
                }
                return list;
            }

            /// <summary>
            /// Retrive all webcontrols you want to modify
            /// </summary>
            private static List<Control> GetManagedWebControls(ManagedControlParameter parameter)
            {

                var controlsList = new List<Control>();

                //Retrive Filtered List of controls (duplicate are not important)
                foreach (var itemMainControl in parameter.MainControls)
                    controlsList.AddRange(FilterManagedControls(GetControlsList(itemMainControl), parameter,
                                                                itemMainControl));

                return controlsList;

            }

            #endregion

            #region Public Methods

            /// <summary>
            /// Change Property Values
            /// </summary>
            public static void ChangeControlsAttributesValues(ManagedControlParameter parameter)
            {
               
                try
                {
                    //Check Parameters
                    var checkedParameter = CheckParameters(parameter);

                    //Get List of webcontrols you want manage 
                    var listOfControls = GetManagedWebControls(checkedParameter);

                    //Apply new property values
                    ApplyChanges(listOfControls, checkedParameter.Attributes);
                   
                }
                catch (Exception ex)
                {
                    //manage as you want    
                    throw ex;
                }
            }

            /// <summary>
            /// Apply new property values to controls
            /// </summary>
            public static void ApplyChanges(List<Control> listOfControls, List<ManagedControlTypeAttributesValue> attributes)
            {

                foreach (var control in listOfControls)
                {
                    //Apply new attribute values to each control
                    foreach (var attribute in attributes)
                    {
                        //Get attribute control to change 
                        var controlAttribute = control.GetType().GetProperty(attribute.Attribute);
                        //If exist and can modify it
                        if (controlAttribute != null && controlAttribute.CanWrite)
                        {
                            //Check about Custom attribute (if you set the optional parameter)
                            if (!String.IsNullOrEmpty(attribute.CustomAttribute))
                            {
                                //(Be carfull about contains when you define your custom attribute value)
                                if (GetControlCustomAttributes(control)[attribute.CustomAttribute] != null &&
                                    (GetControlCustomAttributes(control)[attribute.CustomAttribute]).Contains(
                                        attribute.CustomAttributeValue))
                                    //Change with CAST 
                                    controlAttribute.SetValue(control,
                                                             Convert.ChangeType(attribute.AttributeNewValue,
                                                                                controlAttribute.PropertyType),
                                                             null);
                            }
                            else
                            {
                                //Change with CAST
                                controlAttribute.SetValue(control,
                                                         Convert.ChangeType(attribute.AttributeNewValue,
                                                                            controlAttribute.PropertyType),
                                                         null);
                            }
                        }
                    }
                }

            }

            #endregion

        }
    }
}