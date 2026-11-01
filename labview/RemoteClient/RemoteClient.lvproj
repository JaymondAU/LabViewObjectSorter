<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="26008000">
	<Property Name="NI.LV.All.SaveVersion" Type="Str">26.0</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="NI.Project.Description" Type="Str"></Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="RemoteClient" Type="Folder">
			<Item Name=".RemoteClient.UserState" Type="Folder">
				<Item Name="debug.lvprojstate" Type="Document" URL="../.RemoteClient.UserState/debug.lvprojstate"/>
			</Item>
			<Item Name="clientSCADA" Type="Folder">
				<Item Name=".gitkeep" Type="Document" URL="../clientSCADA/.gitkeep"/>
				<Item Name="SCADA.vi" Type="VI" URL="../clientSCADA/SCADA.vi"/>
			</Item>
			<Item Name="clientTCP" Type="Folder">
				<Item Name=".gitkeep" Type="Document" URL="../clientTCP/.gitkeep"/>
				<Item Name="Client.vi" Type="VI" URL="../clientTCP/Client.vi"/>
			</Item>
			<Item Name="Shared Variables" Type="Folder"/>
			<Item Name="RemoteClient.aliases" Type="Document" URL="../RemoteClient.aliases"/>
		</Item>
		<Item Name="Global.vi" Type="VI" URL="../Variables/Global.vi"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
