using System;
using System.Web.UI;

public partial class TestTextReversal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnProcess_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrWhiteSpace(txtInput.Text))
        {
            divResult.Visible = true;
            lblResult.Text = "Please enter some text to process.";
            return;
        }

        try
        {
            // Create web service reference
            TextReversal service = new TextReversal();
            string result = string.Empty;

            // Call the selected operation
            switch (ddlOperation.SelectedValue)
            {
                case "ReverseText":
                    result = service.ReverseText(txtInput.Text);
                    break;
                case "ReverseWords":
                    result = service.ReverseWords(txtInput.Text);
                    break;
                case "ReverseWordOrder":
                    result = service.ReverseWordOrder(txtInput.Text);
                    break;
                case "ReverseParagraphs":
                    result = service.ReverseParagraphs(txtInput.Text);
                    break;
                case "CreatePalindrome":
                    result = service.CreatePalindrome(txtInput.Text);
                    break;
                default:
                    result = "Invalid operation selected.";
                    break;
            }

            // Display the result
            divResult.Visible = true;
            lblResult.Text = Server.HtmlEncode(result);
        }
        catch (Exception ex)
        {
            divResult.Visible = true;
            lblResult.Text = "Error: " + ex.Message;
        }
    }
}