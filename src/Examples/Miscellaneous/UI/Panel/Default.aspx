﻿<%@ Page Language="C#" %>

<%@ Import Namespace="ListItem=Ext.Net.ListItem" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack && ThemeSelector.SelectedItems.Count > 0)
        {
            ListItem themeItem = ThemeSelector.SelectedItem;
                
            switch (themeItem.Value)
            {
                case "0":
                    this.ResourceManager1.Theme = Ext.Net.Theme.Default;
                    break;
                case "1":
                    this.ResourceManager1.Theme = Ext.Net.Theme.Gray;
                    break;
                case "2":
                    this.ResourceManager1.Theme = Ext.Net.Theme.Neptune;
                    break;
                case "3":
                    this.ResourceManager1.Theme = Ext.Net.Theme.NeptuneTouch;
                    break;
                case "4":
                    this.ResourceManager1.Theme = Ext.Net.Theme.Crisp;
                    break;
                case "5":
                    this.ResourceManager1.Theme = Ext.Net.Theme.CrispTouch;
                    break;
            }
        }            
    }
</script>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Panel UI Styles - Ext.NET Examples</title>
</head>
<body style="padding:30px;">
    <form runat="server">
        <ext:ResourceManager ID="ResourceManager1" runat="server" />

        <ext:ComboBox ID="ThemeSelector" runat="server" FieldLabel="Theme" AutoPostBack="true">
            <Items>
                <ext:ListItem Text="Classic" Value="0" />
                <ext:ListItem Text="Gray" Value="1" />
                <ext:ListItem Text="Neptune" Value="2" />
                <ext:ListItem Text="Neptune Touch" Value="3" />
                <ext:ListItem Text="Crisp" Value="4" />
                <ext:ListItem Text="Crisp Touch" Value="5" />
            </Items>
        </ext:ComboBox>

        <h3>Panel UI</h3>

        <ext:Panel runat="server" Width="800" Height="250" Title="Simple">
            <LayoutConfig>
                <ext:HBoxLayoutConfig Align="Stretch" />
            </LayoutConfig>
            <Defaults>
                <ext:Parameter Name="margin" Value="5" Mode="Raw" />
            </Defaults>  
            <Items>
                <ext:Panel runat="server" UI="Primary" Flex="1" Title='UI="Primary"' />
                <ext:Panel runat="server" UI="Success" Flex="1" Title='UI="Success"' />
                <ext:Panel runat="server" UI="Info" Flex="1" Title='UI="Info"' />
                <ext:Panel runat="server" UI="Danger" Flex="1" Title='UI="Danger"' />
                <ext:Panel runat="server" UI="Warning" Flex="1" Title='UI="Warning"' />
            </Items>
        </ext:Panel>

        <br />

        <ext:Panel runat="server" Width="800" Height="250" Title="Framed">
            <LayoutConfig>
                <ext:HBoxLayoutConfig Align="Stretch" />
            </LayoutConfig>
            <Defaults>
                <ext:Parameter Name="margin" Value="5" Mode="Raw" />
            </Defaults>  
            <Items>
                <ext:Panel runat="server" UI="Primary" Flex="1" Title='UI="Primary"' Frame="true" />
                <ext:Panel runat="server" UI="Success" Flex="1" Title='UI="Success"' Frame="true" />
                <ext:Panel runat="server" UI="Info" Flex="1" Title='UI="Info"' Frame="true" />
                <ext:Panel runat="server" UI="Danger" Flex="1" Title='UI="Danger"' Frame="true" />
                <ext:Panel runat="server" UI="Warning" Flex="1" Title='UI="Warning"' Frame="true" />
            </Items>
        </ext:Panel>

        <br />

        <ext:Panel 
            runat="server" 
            Width="800" 
            Height="250" 
            Title="Tools" 
            UI="Primary" 
            Frame="true" 
            Layout="AccordionLayout">
            <Tools>
                <ext:Tool Type="Toggle" />
                <ext:Tool Type="Close" />
                <ext:Tool Type="Minimize" />
                <ext:Tool Type="Maximize" />
                <ext:Tool Type="Restore" />
                <ext:Tool Type="Gear" />
                <ext:Tool Type="Pin" />
                <ext:Tool Type="Unpin" />
                <ext:Tool Type="Right" />
                <ext:Tool Type="Left" />
                <ext:Tool Type="Up" />
                <ext:Tool Type="Down" />
                <ext:Tool Type="Refresh" />
                <ext:Tool Type="Plus" />
                <ext:Tool Type="Help" />
                <ext:Tool Type="Search" />
                <ext:Tool Type="Save" />
                <ext:Tool Type="Print" />
            </Tools>
            <Items>
                <ext:Panel runat="server" UI="Primary" Title='UI="Primary"' />
                <ext:Panel runat="server" UI="Success" Title='UI="Success"' />
                <ext:Panel runat="server" UI="Info" Title='UI="Info"' />
                <ext:Panel runat="server" UI="Danger" Title='UI="Danger"' />
                <ext:Panel runat="server" UI="Warning" Title='UI="Warning"' />
            </Items>
        </ext:Panel>

        <br />

        <ext:Panel 
            runat="server" 
            Width="800" 
            Height="500" 
            Title="Border Layout" 
            UI="Primary" 
            Frame="true" 
            Layout="BorderLayout">                       
            <Items>
                <ext:Panel 
                    runat="server" 
                    UI="Primary" 
                    Width="200" 
                    Title='UI="Primary"' 
                    Region="West" 
                    Collapsible="true" 
                    MarginSpec="3" 
                    />
                <ext:Panel 
                    runat="server" 
                    UI="Success" 
                    Width="200" 
                    Title='UI="Success"' 
                    Region="East" 
                    Collapsible="true" 
                    MarginSpec="3" 
                    />
                <ext:Panel 
                    runat="server" 
                    UI="Info" 
                    Title='UI="Info"' 
                    Region="Center" 
                    MarginSpec="3" 
                    />
                <ext:Panel 
                    runat="server" 
                    UI="Danger" 
                    Height="100" 
                    Title='UI="Danger"' 
                    Region="North" 
                    Collapsible="true" 
                    MarginSpec="3" 
                    />
                <ext:Panel 
                    runat="server" 
                    UI="Warning" 
                    Height="100" 
                    Title='UI="Warning"' 
                    Region="South" 
                    Collapsible="true" 
                    MarginSpec="3" 
                    />
            </Items>
        </ext:Panel>

    </form>
</body>
</html>