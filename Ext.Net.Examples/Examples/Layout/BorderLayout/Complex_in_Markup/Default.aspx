<%@ Page Language="C#" %>

<%@ Register assembly="Ext.Net" namespace="Ext.Net" tagprefix="ext" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Complex BorderLayout - Ext.NET Examples</title>
    <link href="/resources/css/examples.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <ext:ResourceManager runat="server" />
    
    <h1>Complex BorderLayout in Markup</h1>
    
    <ext:Button 
        ID="Button1"
        runat="server" 
        Text="Show Window" 
        Icon="Application">
        <Listeners>
            <Click Handler="#{Window1}.show();" />
        </Listeners>    
    </ext:Button>
        
    <ext:Window 
        ID="Window1" 
        runat="server" 
        Title="Complex Layout"
        Icon="Application"
        Width="640" 
        Height="480" 
        Plain="true"
        Border="false"
        Collapsible="true"
        BodyBorder="0"
        AnimateTarget="Button1"
        Layout="BorderLayout">
        <Items>
            <ext:Panel 
                ID="WestPanel" 
                runat="server"
                Region="West" 
                Title="West"
                Width="175"
                Layout="Accordion"
                MinWidth="175" 
                MaxWidth="400" 
                Split="true" 
                Collapsible="true">
                <Items>
                    <ext:Panel 
                        ID="Navigation" 
                        runat="server" 
                        Title="Navigation" 
                        Icon="FolderGo"
                        Border="false" 
                        BodyPadding="6"
                        Html="West"
                        />
                    <ext:Panel 
                        ID="Settings" 
                        runat="server" 
                        Title="Settings" 
                        Icon="FolderWrench"
                        Border="false" 
                        BodyPadding="6" 
                        Collapsed="True"
                        Html="Some settings in here."
                        />
                </Items>
            </ext:Panel>
            <ext:TabPanel 
                ID="CenterPanel" 
                runat="server"
                Region="Center"
                ActiveTabIndex="1">
                <Items>
                    <ext:Panel 
                        ID="Tab1" 
                        runat="server" 
                        Title="Close Me" 
                        Closable="true" 
                        Border="false" 
                        BodyPadding="6"
                        Html="Hello"
                        />
                    <ext:Panel 
                        ID="Tab2" 
                        runat="server" 
                        Title="Center" 
                        Border="false" 
                        BodyPadding="6"
                        Html="...World"
                        />
                </Items>
            </ext:TabPanel>
            <ext:Panel 
                ID="EastPanel" 
                runat="server" 
                Region="East" 
                Collapsible="true" 
                Split="true" 
                MinWidth="225" 
                Width="225" 
                Title="East" 
                Layout="Fit">
                <Items>
                    <ext:TabPanel 
                        runat="server" 
                        ActiveTabIndex="0" 
                        TabPosition="Bottom" 
                        Border="false" 
                        ID="ctl71" 
                        Title="ctl71">
                        <Items>
                            <ext:Panel 
                                runat="server" 
                                Title="Tab 1" 
                                Border="false" 
                                BodyPadding="6"
                                Html="East Tab 1"
                                />
                            <ext:Panel 
                                runat="server" 
                                Title="Tab 2" 
                                Closable="true" 
                                Border="false" 
                                BodyPadding="6"
                                Html="East Tab 2"
                                />
                        </Items>
                    </ext:TabPanel>
                </Items>
            </ext:Panel>
            <ext:Panel 
                ID="SouthPanel" 
                runat="server"
                Region="South"
                Split="true" 
                Collapsible="true"
                Title="South" 
                Height="150"
                BodyPadding="6" 
                />
        </Items>
    </ext:Window>
</body>
</html>