<%@ Control Language="C#" AutoEventWireup="true" EnableViewState="false" Inherits="BlogEngine.Core.Web.Controls.PostViewBase" %>
<article class="post" id="post<%=Index %>">
    <h2 class="post-title">
        <a href="<%=Post.RelativeOrAbsoluteLink %>" class="taggedlink"><%=Server.HtmlEncode(Post.Title) %></a>
    </h2>
    <div class="post-info Clear">
        <span class="post-date"><%=Post.DateCreated.ToString("d. MMMM yyyy") %> <span class="separator"></span></span>
        <span class="post-author"><a href="<%=BlogEngine.Core.Utils.AbsoluteWebRoot + "author/" + BlogEngine.Core.Utils.RemoveIllegalCharacters(Post.Author) + BlogEngine.Core.BlogConfig.FileExtension %>"><%=Post.AuthorProfile != null ? Post.AuthorProfile.DisplayName : Post.Author %></a> <span class="separator"></span></span>
        <span class="post-category"><%=CategoryLinks(" , ") %> </span>
        <a class="post-comment" rel="nofollow" href="<%=Post.RelativeOrAbsoluteLink %>#comment"><%=Resources.labels.comments %> (<%=Post.ApprovedComments.Count %>)</a>
        <script type="text/javascript">$('#post<%=Index %> .post-category:has(a)').append('<span class="separator"></span>');</script>
    </div>
    <div class="post-body text">
        <asp:PlaceHolder ID="BodyContent" runat="server" />
    </div>
    <% if (Location == BlogEngine.Core.ServingLocation.SinglePost)
       {%>
    <div class="post-footer clearfix">
        <%=Rating %>
        <div class="post-tags">
            <%=Resources.labels.tags %>: <%=TagLinks(" , ") %>
        </div>
    </div>
    <script type="text/javascript">$(".post").addClass("post-single");</script>
    <%  }%>
    <%=AdminLinks %><!-- AddThis Smart Layers BEGIN -->
<!-- Go to http://www.addthis.com/get/smart-layers to customize -->
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-530fd0f46a214607"></script>
<script type="text/javascript">
    addthis.layers({
        'theme': 'transparent',
        'share': {
            'position': 'left',
            'numPreferredServices': 5
        },
        'follow': {
            'services': [
              { 'service': 'facebook', 'id': 'pages/Elite-Travel-Guru/594618127288979' },
              { 'service': 'twitter', 'id': 'elitetravelguru' },
              { 'service': 'linkedin', 'id': 'elite-travel-guru?report%2Esuccess=KJ_KkFGTDCfMt-A7wV3Fn9Yvgwr02Kd6AZHGx4bQCDiP6-2rfP2oxyVoEQiPrcAQ7Bf' },
              { 'service': 'google_follow', 'id': '+Elitetravelguruflights/posts' },
              { 'service': 'linkedin', 'id': 'elite-travel-guru?report%2Esuccess=KJ_KkFGTDCfMt-A7wV3Fn9Yvgwr02Kd6AZHGx4bQCDiP6-2rfP2oxyVoEQiPrcAQ7Bf', 'usertype': 'company' }
            ]
        }
    });
</script>
<!-- AddThis Smart Layers END -->
</article>
