<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestTextReversal.aspx.cs" Inherits="TestTextReversal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Text Reversal Service Test</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        h1 {
            color: #336699;
            border-bottom: 1px solid #ccc;
            padding-bottom: 10px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        textarea, select {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .button {
            background-color: #336699;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .result {
            margin-top: 20px;
            padding: 15px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Text Reversal Service Test</h1>
            
            <div class="form-group">
                <label for="txtInput">Enter Text:</label>
                <asp:TextBox ID="txtInput" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <label for="ddlOperation">Select Operation:</label>
                <asp:DropDownList ID="ddlOperation" runat="server">
                    <asp:ListItem Text="Reverse Text" Value="ReverseText" Selected="True" />
                    <asp:ListItem Text="Reverse Words" Value="ReverseWords" />
                    <asp:ListItem Text="Reverse Word Order" Value="ReverseWordOrder" />
                    <asp:ListItem Text="Reverse Paragraphs" Value="ReverseParagraphs" />
                    <asp:ListItem Text="Create Palindrome" Value="CreatePalindrome" />
                </asp:DropDownList>
            </div>
            
            <asp:Button ID="btnProcess" runat="server" Text="Process Text" CssClass="button" OnClick="btnProcess_Click" />
            
            <div class="result" runat="server" id="divResult" visible="false">
                <h3>Result:</h3>
                <pre><asp:Label ID="lblResult" runat="server"></asp:Label></pre>
            </div>
        </div>
    </form>
</body>
</html>