<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<AboutUs.Models.Contact>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Contact US
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Please fill out the form</h2>

    <% Html.EnableClientValidation(); %> 
    <% using (Ajax.BeginForm(new AjaxOptions { HttpMethod = "Post", OnComplete = "Contact.onComplete"}))
        { %>
        <%: Html.ValidationSummary(true, "A few fields are still empty") %>
        <fieldset>
            <legend>Contact us</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(m => m.Email) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(m => m.Email) %>
                <%: Html.ValidationMessageFor(m => m.Email) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(m => m.fName) %>
            </div>
            <div class="editor-field"><%: Html.TextBoxFor(m => m.fName) %>
                <%: Html.ValidationMessageFor(m => m.fName) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(m => m.lName) %>
            </div>
            <div class="editor-field"><%: Html.TextBoxFor(m => m.lName) %>
                <%: Html.ValidationMessageFor(m => m.lName) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(m => m.Comment) %>
            </div>
            <div class="editor-field">
                <%: Html.TextAreaFor(m => m.Comment, 10, 25, null) %>
                <%: Html.ValidationMessageFor(m => m.Comment) %>
            </div>
            <p>
                <input type="submit" value="Submit" />
            </p>
        </fieldset>
        <p id="result"><%: TempData["Message"] %></p>
    <% } %>



</asp:Content>
