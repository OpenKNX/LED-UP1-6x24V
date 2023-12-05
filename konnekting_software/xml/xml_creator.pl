#!perl -w

use strict;


my $outputfile = "DIM-6CVLED.kdevice.xml";

my @channels = ('a', 'b', 'c', 'd', 'e', 'f');
my @rgbchannels = ('abc', 'def');
my $no_of_co_per_channel = 7;
my $no_of_co_per_rgbchannel = 7;


my $no_of_channels = $#channels +1;
my $no_of_rgbchannels = $#rgbchannels +1;
my $no_of_channels_per_rgbchannel = $no_of_channels / $no_of_rgbchannels;




my $header = <<'END_MESSAGE';
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<KonnektingDevice xmlns="http://konnekting.de/xml/KonnektingDevice/v0">
    <Device ManufacturerId="7337" DeviceId="120" Revision="0">
        <ManufacturerName>SirSydom KNX Labs</ManufacturerName>
        <DeviceName>DIM-xxxxLED.01</DeviceName>
		
		<Parameters>
END_MESSAGE

my $param_gen_s = <<'END_MESSAGE';
			<ParameterGroup Name="General" Id="##pgid##">
END_MESSAGE

my $param_gen_n = <<'END_MESSAGE';
				<Parameter Id="##pid##" IdName="ch_##rgbchannel##_mode">
					<Description>Operating Mode Channel ##rgbchannel##</Description>
					<Value Type="uint8" Default="00" Options="00=3channel|01=RGB"/>
				</Parameter>
END_MESSAGE

my $param_gen_e = <<'END_MESSAGE';
			</ParameterGroup>
END_MESSAGE


my $param_ch = <<'END_MESSAGE';
			<ParameterGroup Name="Channel ##channel##" Id="##pgid##">
				<Parameter Id="##pid##" IdName="ch_##channel##_sw_on_dim">
					<Description>Switch On/Off at Dimm</Description>
					<Value Type="uint8" Default="01" Options="00=disabled|01=only ON|02=only OFF|03=ON and OFF"/>
				</Parameter>
				<Parameter Id="##pid##" IdName="ch_##channel##_fade_time">
					<Description>Fading Time</Description>
					<Value Type="uint8" Default="02" Options="00=do not fade|01=6s|02=3s|03=2s|05=1.5s|07=1s|0D=0.5s|1A=0.25s|40=0.1s"/>
				</Parameter>
				<Parameter Id="##pid##" IdName="ch_##channel##_lock_mode">
					<Description>Lock Object Mode</Description>
					<Value Type="uint8" Default="00" Options="00=1Bit: 0: unlock 1: OFF|01=1Bit: 0: unlock 1: ON|02=1Bit: 0: unlock 1: FREEZE|03=1Bit: 0: OFF 1: ON|10=2Bit: 0x: unlock 10: OFF 11:ON|11=2Bit: 0x: unlock 10: OFF 11:FREEZE|12=2Bit: 0x: unlock 10: FREEZE 11:ON|20=8Bit: 0h: unlock 1h-FFh: Dimmvalue" />
				</Parameter>
				<Parameter Id="##pid##" IdName="ch_##channel##_lock_time">
					<Description>Lock Object Unlock Time (x 1min, 0: deactivated</Description>
					<Value Type="uint16" Default="0000"/>
				</Parameter>
				<Parameter Id="##pid##" IdName="ch_##channel##_autooff_time">
					<Description>Automatic Off Time (x 1min, 0: deactivated</Description>
					<Value Type="uint16" Default="0000"/>
				</Parameter>
				<Parameter Id="##pid##" IdName="ch_##channel##_switchvalues">
					<Description>Switch On values for Day (Byte1) and Night (Byte2).</Description>
					<Value Type="raw2" Default="0000"/>
				</Parameter>
			</ParameterGroup>
END_MESSAGE

my $param_rgbch = <<'END_MESSAGE';
			<ParameterGroup Name="Channel ##rgbchannel##" Id="##pgid##">
				<Parameter Id="##pid##" IdName="ch_##rgbchannel##_sw_on_dim">
					<Description>Switch On/Off at Dimm</Description>
					<Value Type="uint8" Default="01" Options="00=disabled|01=only ON|02=only OFF|03=ON and OFF"/>
				</Parameter>
				<Parameter Id="##pid##" IdName="ch_##rgbchannel##_fade_time">
					<Description>Fading Time</Description>
					<Value Type="uint8" Default="01" Options="00=do not fade|01=6s|02=3s|03=2s|05=1.5s|07=1s|0D=0.5s|1A=0.25s|40=0.1s"/>
				</Parameter>
				<Parameter Id="##pid##" IdName="ch_##rgbchannel##_lock_mode">
					<Description>Lock Object Mode</Description>
					<Value Type="uint8" Default="00" Options="00=1Bit: 0: unlock 1: OFF|01=1Bit: 0: unlock 1: ON|02=1Bit: 0: unlock 1: FREEZE|03=1Bit: 0: OFF 1: ON|10=2Bit: 0x: unlock 10: OFF 11:ON|11=2Bit: 0x: unlock 10: OFF 11:FREEZE|12=2Bit: 0x: unlock 10: FREEZE 11:ON" />
				</Parameter>
				<Parameter Id="##pid##" IdName="ch_##rgbchannel##_lock_time">
					<Description>Lock Object Unlock Time (x 1min, 0: deactivated</Description>
					<Value Type="uint16" Default="0000"/>
				</Parameter>
				<Parameter Id="##pid##" IdName="ch_##rgbchannel##_autooff_time">
					<Description>Automatic Off Time (x 1min, 0: deactivated</Description>
					<Value Type="uint16" Default="0000"/>
				</Parameter>
				<Parameter Id="##pid##" IdName="ch_##rgbchannel##_switchvalues">
					<Description>Switch On values for Day (Byte1-3: RGB) and Night (Byte4-6: RGB).</Description>
					<Value Type="raw6" Default="000000000000"/>
				</Parameter>
			</ParameterGroup>
END_MESSAGE


my $param_end = <<'END_MESSAGE';
		</Parameters>
		
        <CommObjects>
END_MESSAGE

my $co_ch = <<'END_MESSAGE';
			<CommObject Id="##coid##" IdName="ch_##channel##_sw">
                <Name>Channel ##channel##</Name>
                <Function>Switch</Function>
                <DataPointType>1.001</DataPointType>
                <Flags>40</Flags> <!-- K_S___ -->
            </CommObject>
			
			<CommObject Id="##coid##" IdName="ch_##channel##_dim">
                <Name>Channel ##channel##</Name>
                <Function>Dimming Absolute</Function>
                <DataPointType>5.001</DataPointType>
                <Flags>40</Flags> <!-- K_S___ -->
            </CommObject>
			
			<CommObject Id="##coid##" IdName="ch_##channel##_dimrel">
                <Name>Channel ##channel##</Name>
                <Function>Dimming Relative</Function>
                <DataPointType>3.007</DataPointType>
                <Flags>40</Flags> <!-- K_S___ -->
            </CommObject>
			
			<CommObject Id="##coid##" IdName="ch_##channel##_lock">
                <Name>Channel ##channel##</Name>
                <Function>Lock</Function>
                <DataPointType>1.003</DataPointType>
                <Flags>56</Flags> <!-- KLS___ -->
            </CommObject>
			
			<CommObject Id="##coid##" IdName="ch_##channel##_scene">
                <Name>Channel ##channel##</Name>
                <Function>Szene</Function>
                <DataPointType>18.001</DataPointType>
                <Flags>56</Flags> <!-- KLS___ -->
            </CommObject>

			<CommObject Id="##coid##" IdName="ch_##channel##_stat_sw">
                <Name>Channel ##channel##</Name>
                <Function>Status On/Off</Function>
                <DataPointType>1.001</DataPointType>
                <Flags>52</Flags> <!-- KL_Ü__ -->
            </CommObject>
			
			<CommObject Id="##coid##" IdName="ch_##channel##_stat_dim">
                <Name>Channel ##channel##</Name>
                <Function>Status Dimming Value</Function>
                <DataPointType>5.001</DataPointType>
                <Flags>52</Flags> <!-- KL_Ü__ -->
            </CommObject>
END_MESSAGE

my $co_rgbch = <<'END_MESSAGE';
			<CommObject Id="##coid##" IdName="ch_##rgbchannel##_sw">
                <Name>Channel ##rgbchannel##</Name>
                <Function>Switch</Function>
                <DataPointType>1.001</DataPointType>
                <Flags>40</Flags> <!-- K_S___ -->
            </CommObject>
			
			<CommObject Id="##coid##" IdName="ch_##rgbchannel##_dim">
                <Name>Channel ##rgbchannel##</Name>
                <Function>Color</Function>
                <DataPointType>232.600</DataPointType>
                <Flags>40</Flags> <!-- K_S___ -->
            </CommObject>
			
			<CommObject Id="##coid##" IdName="ch_##rgbchannel##_animation">
                <Name>Channel ##rgbchannel##</Name>
                <Function>Animation</Function>
                <DataPointType>5.010</DataPointType>
                <Flags>56</Flags> <!-- KLS___ -->
            </CommObject>
			
			<CommObject Id="##coid##" IdName="ch_##rgbchannel##_lock">
                <Name>Channel ##rgbchannel##</Name>
                <Function>Lock</Function>
                <DataPointType>1.003</DataPointType>
                <Flags>56</Flags> <!-- KLS___ -->
            </CommObject>
			
			<CommObject Id="##coid##" IdName="ch_##rgbchannel##_scene">
                <Name>Channel ##rgbchannel##</Name>
                <Function>Szene</Function>
                <DataPointType>18.001</DataPointType>
                <Flags>56</Flags> <!-- KLS___ -->
            </CommObject>

			<CommObject Id="##coid##" IdName="ch_##rgbchannel##_stat_sw">
                <Name>Channel ##rgbchannel##</Name>
                <Function>Status On/Off</Function>
                <DataPointType>1.001</DataPointType>
                <Flags>52</Flags> <!-- KL_Ü__ -->
            </CommObject>
			
			<CommObject Id="##coid##" IdName="ch_##rgbchannel##_stat_dim">
                <Name>Channel ##rgbchannel##</Name>
                <Function>Status Color</Function>
                <DataPointType>232.600</DataPointType>
                <Flags>52</Flags> <!-- KL_Ü__ -->
            </CommObject>
END_MESSAGE

my $co_gen = <<'END_MESSAGE';
			<CommObject Id="##coid##" IdName="gen_casetemp">
                <Name>Global</Name>
                <Function>Case temp</Function>
                <DataPointType>9.001</DataPointType>
                <Flags>48</Flags> <!-- KL____ -->
            </CommObject>
			<CommObject Id="##coid##" IdName="gen_temp_alarm">
                <Name>Global</Name>
                <Function>Temp alarm</Function>
                <DataPointType>1.005</DataPointType>
                <Flags>52</Flags> <!-- KL_Ü__ -->
            </CommObject>
			<CommObject Id="##coid##" IdName="gen_daynight">
                <Name>Global</Name>
                <Function>Day/Night</Function>
                <DataPointType>1.001</DataPointType>
                <Flags>42</Flags> <!-- K_S_A_ -->
            </CommObject>
			<CommObject Id="##coid##" IdName="gen_datetime">
                <Name>Global</Name>
                <Function>DateTime</Function>
                <DataPointType>19.001</DataPointType>
                <Flags>42</Flags> <!-- K_S_A_ -->
            </CommObject>
			<CommObject Id="##coid##" IdName="error_code">
                <Name>ErrorCode</Name>
                <Function>Error</Function>
                <DataPointType>12.001</DataPointType>
                <Flags>52</Flags> <!-- KL_Ü__ -->
            </CommObject>
		</CommObjects>
		<Dependencies>
END_MESSAGE


my $dep_para = <<'END_MESSAGE';
			<ParameterGroupDependency ParamGroupId="##pgid0##" Test="eq" TestParamId="##tpid##" TestValue="00"/>
			<ParameterGroupDependency ParamGroupId="##pgid1##" Test="eq" TestParamId="##tpid##" TestValue="00"/>
			<ParameterGroupDependency ParamGroupId="##pgid2##" Test="eq" TestParamId="##tpid##" TestValue="00"/>
			<ParameterGroupDependency ParamGroupId="##pgid012##" Test="eq" TestParamId="##tpid##" TestValue="01"/>
			
END_MESSAGE


# 3 x 7 + 1 x 7 change number of lines when changing no of co per channel
my $dep_co = <<'END_MESSAGE';
			<CommObjectDependency CommObjId="##coid1##" Test="eq" TestParamId="##tpid##" TestValue="00"/>
			<CommObjectDependency CommObjId="##coid1##" Test="eq" TestParamId="##tpid##" TestValue="00"/>
			<CommObjectDependency CommObjId="##coid1##" Test="eq" TestParamId="##tpid##" TestValue="00"/>
			<CommObjectDependency CommObjId="##coid1##" Test="eq" TestParamId="##tpid##" TestValue="00"/>
			<CommObjectDependency CommObjId="##coid1##" Test="eq" TestParamId="##tpid##" TestValue="00"/>
			<CommObjectDependency CommObjId="##coid1##" Test="eq" TestParamId="##tpid##" TestValue="00"/>
			<CommObjectDependency CommObjId="##coid1##" Test="eq" TestParamId="##tpid##" TestValue="00"/>
			<CommObjectDependency CommObjId="##coid1##" Test="eq" TestParamId="##tpid##" TestValue="00"/>
			<CommObjectDependency CommObjId="##coid1##" Test="eq" TestParamId="##tpid##" TestValue="00"/>
			<CommObjectDependency CommObjId="##coid1##" Test="eq" TestParamId="##tpid##" TestValue="00"/>
			<CommObjectDependency CommObjId="##coid1##" Test="eq" TestParamId="##tpid##" TestValue="00"/>
			<CommObjectDependency CommObjId="##coid1##" Test="eq" TestParamId="##tpid##" TestValue="00"/>
			<CommObjectDependency CommObjId="##coid1##" Test="eq" TestParamId="##tpid##" TestValue="00"/>
			<CommObjectDependency CommObjId="##coid1##" Test="eq" TestParamId="##tpid##" TestValue="00"/>
			<CommObjectDependency CommObjId="##coid1##" Test="eq" TestParamId="##tpid##" TestValue="00"/>
			<CommObjectDependency CommObjId="##coid1##" Test="eq" TestParamId="##tpid##" TestValue="00"/>
			<CommObjectDependency CommObjId="##coid1##" Test="eq" TestParamId="##tpid##" TestValue="00"/>
			<CommObjectDependency CommObjId="##coid1##" Test="eq" TestParamId="##tpid##" TestValue="00"/>
			<CommObjectDependency CommObjId="##coid1##" Test="eq" TestParamId="##tpid##" TestValue="00"/>
			<CommObjectDependency CommObjId="##coid1##" Test="eq" TestParamId="##tpid##" TestValue="00"/>
			<CommObjectDependency CommObjId="##coid1##" Test="eq" TestParamId="##tpid##" TestValue="00"/>
			<CommObjectDependency CommObjId="##coid2##" Test="eq" TestParamId="##tpid##" TestValue="01"/>
			<CommObjectDependency CommObjId="##coid2##" Test="eq" TestParamId="##tpid##" TestValue="01"/>
			<CommObjectDependency CommObjId="##coid2##" Test="eq" TestParamId="##tpid##" TestValue="01"/>
			<CommObjectDependency CommObjId="##coid2##" Test="eq" TestParamId="##tpid##" TestValue="01"/>
			<CommObjectDependency CommObjId="##coid2##" Test="eq" TestParamId="##tpid##" TestValue="01"/>
			<CommObjectDependency CommObjId="##coid2##" Test="eq" TestParamId="##tpid##" TestValue="01"/>
			<CommObjectDependency CommObjId="##coid2##" Test="eq" TestParamId="##tpid##" TestValue="01"/>
			
END_MESSAGE

my $footer = <<'END_MESSAGE';
		</Dependencies>
		
	</Device>
</KonnektingDevice>
END_MESSAGE



open (OUTFILE, '>', $outputfile);
my $pid = 0;
my $pgid = 0;
my $coid = 0;
my $workstr;

print OUTFILE $header;


$workstr = $param_gen_s;
$workstr =~ s/##pgid##/$pgid++/eg;
print OUTFILE $workstr;
foreach my $item (@rgbchannels)
{
	my $workstr = $param_gen_n;
	$workstr =~ s/##pid##/$pid++/eg;
	$workstr =~ s/##rgbchannel##/uc($item)/eg;
	print OUTFILE $workstr;
}
print OUTFILE $param_gen_e;



foreach my $item (@channels)
{
	my $workstr = $param_ch;
	$workstr =~ s/##pgid##/$pgid++/eg;
	$workstr =~ s/##pid##/$pid++/eg;
	$workstr =~ s/##channel##/uc($item)/eg;
	print OUTFILE $workstr;
}


foreach my $item (@rgbchannels)
{
	my $workstr = $param_rgbch;
	$workstr =~ s/##pgid##/$pgid++/eg;
	$workstr =~ s/##pid##/$pid++/eg;
	$workstr =~ s/##rgbchannel##/uc($item)/eg;
	print OUTFILE $workstr;
}



print OUTFILE $param_end;



foreach my $item (@channels)
{
	my $workstr = $co_ch;
	$workstr =~ s/##coid##/$coid++/eg;
	$workstr =~ s/##channel##/uc($item)/eg;
	print OUTFILE $workstr;
}



foreach my $item (@rgbchannels)
{
	my $workstr = $co_rgbch;
	$workstr =~ s/##coid##/$coid++/eg;
	$workstr =~ s/##rgbchannel##/uc($item)/eg;
	print OUTFILE $workstr;
}



$workstr = $co_gen;
$workstr =~ s/##coid##/$coid++/eg;
print OUTFILE $workstr;



my $rgbcnt = 0;
foreach my $item (@rgbchannels)
{
	my $workstr = $dep_para;
	$workstr =~ s/##tpid##/$rgbcnt/eg;
	$workstr =~ s/##pgid0##/1+($rgbcnt*$no_of_channels_per_rgbchannel)+0/eg;
	$workstr =~ s/##pgid1##/1+($rgbcnt*$no_of_channels_per_rgbchannel)+1/eg;
	$workstr =~ s/##pgid2##/1+($rgbcnt*$no_of_channels_per_rgbchannel)+2/eg;
	$workstr =~ s/##pgid012##/1+$no_of_channels+$rgbcnt/eg;
	print OUTFILE $workstr;
	$rgbcnt++;
}



$rgbcnt = 0;
my $coiddep1;
my $coiddep2;
foreach my $item (@rgbchannels)
{
	my $workstr = $dep_co;
	$coiddep1 = $no_of_channels_per_rgbchannel*$no_of_co_per_channel*$rgbcnt;
	$coiddep2 = $no_of_co_per_channel*$no_of_channels+$rgbcnt*$no_of_co_per_rgbchannel;
	$workstr =~ s/##tpid##/$rgbcnt/eg;
	$workstr =~ s/##coid1##/$coiddep1++/eg;
	$workstr =~ s/##coid2##/$coiddep2++/eg;
	print OUTFILE $workstr;
	$rgbcnt++;
}



print OUTFILE $footer;

close (OUTFILE);