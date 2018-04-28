$LabConfig=@{ DomainAdminName='LabAdmin'; AdminPassword='LS1setup!'; Prefix = 'WSLab-'; SwitchName = 'LabSwitch'; DCEdition='4'; AdditionalNetworksConfig=@(); VMs=@(); ServerVHDs=@()}

1..2 | % { $VMNames="SAN"           ; $LABConfig.VMs += @{ VMName = "$VMNames$_" ; Configuration = 'Shared' ; ParentVHD = 'Win2016NanoHV_G2.vhdx' ; SSDNumber = 1; SSDSize=1GB   ; HDDNumber = 4 ; HDDSize= 4TB ; MemoryStartupBytes= 4GB ; VMSet= 'SAN'           ; NestedVirt=$True} }
1..2 | % { $VMNames="SharedSS"      ; $LABConfig.VMs += @{ VMName = "$VMNames$_" ; Configuration = 'Shared' ; ParentVHD = 'Win2016NanoHV_G2.vhdx' ; SSDNumber = 3; SSDSize=800GB ; HDDNumber = 9 ; HDDSize= 4TB ; MemoryStartupBytes= 4GB ; VMSet= 'SharedSSpaces' ; NestedVirt=$True} }
1..2 | % { $VMNames="S2D"           ; $LABConfig.VMs += @{ VMName = "$VMNames$_" ; Configuration = 'S2D'    ; ParentVHD = 'Win2016NanoHV_G2.vhdx' ; SSDNumber = 0; SSDSize=800GB ; HDDNumber = 4 ; HDDSize= 4TB ; MemoryStartupBytes= 4GB ;                          NestedVirt=$True} }
1..2 | % { $VMNames="SRSite1_Node"  ; $LABConfig.VMs += @{ VMName = "$VMNames$_" ; Configuration = 'Shared' ; ParentVHD = 'Win2016NanoHV_G2.vhdx' ; SSDNumber = 1; SSDSize=800GB ; HDDNumber = 2 ; HDDSize= 4TB ; MemoryStartupBytes= 4GB ; VMSet= 'SRSite1'       ; NestedVirt=$True} }
1..2 | % { $VMNames="SRSite2_Node"  ; $LABConfig.VMs += @{ VMName = "$VMNames$_" ; Configuration = 'Shared' ; ParentVHD = 'Win2016NanoHV_G2.vhdx' ; SSDNumber = 1; SSDSize=800GB ; HDDNumber = 2 ; HDDSize= 4TB ; MemoryStartupBytes= 4GB ; VMSet= 'SRSite2'       ; NestedVirt=$True} }
