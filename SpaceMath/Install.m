(* Automatic install *)

(*This file was adapted from the 2018 version of the automatic installer of FeynCalc: https://github.com/FeynCalc/feyncalc/blob/master/install.m*)

(*This installer is covered by the GNU General Public License 3.*)

(*Copyright (C) 1990-2018 Rolf Mertig*)
(*Copyright (C) 1997-2018 Frederik Orellana*)
(*Copyright (C) 2014-2018 Vladyslav Shtabovenko*)

(*Copyright (C) 2018-2020 Joydeep Chakrabortty*)
(*Copyright (C) 2018-2020 Sunando Kr Patra*)
(*Copyright (C) 2018-2020 Supratim Das Bakshi*)


(* -- *)

InstallSpaceMath[]:=
		Module[
	     	{
	     	 packageName,
	     	 PackageLocation,
	     	 OverwritePackage, 	 
	     	 TempCompressFolder, 	     	     	      	 	     		
	     	 DecompressTempFolder, 
	     	 PathPackage, 
	     	 CompressFolder
			},

			WriteString["stdout", "\n Please wait a moment while installing the package SpaceMath is performed. \n"];			
        
			packageName = "SpaceMath";
			PackageLocation = FileNameJoin[{$UserBaseDirectory, "Applications","SpaceMath"}];			

			OverwritePackage = "Looks like SpaceMath is already installed. Do you want to replace the current content of " <> PackageLocation <> 
			" with the downloaded version of SpaceMath?";

			If[ DirectoryQ[PackageLocation],
				If[ None, Quiet@DeleteDirectory[PackageLocation, DeleteContents -> True], Null,
					If[ ChoiceDialog[OverwritePackage,{"Yes, overwrite the " <> packageName <>" directory"->True,
						"No, I need to do a backup first. Abort installation."->False}, WindowFloating->True, WindowTitle->
						"Existing SpaceMath Installation detected"],
						Quiet@DeleteDirectory[PackageLocation, DeleteContents -> True],
						Abort[]
					  ]
				  ]
			  ];

			TempCompressFolder = URLSave["https://github.com/spacemathapp/spacemath/archive/refs/heads/development.zip",CreateTemporary[]];
			DecompressTempFolder = TempCompressFolder<>".dir";

			ExtractArchive[TempCompressFolder, DecompressTempFolder];
			Quiet@DeleteFile[TempCompressFolder];

			CompressFolder = FileNames["SpaceMath.m", DecompressTempFolder, Infinity];
			PathPackage = DirectoryName[CompressFolder[[1]]];
			CompressFolder = Last[FileNameSplit[DirectoryName[CompressFolder[[1]]]]];

			CopyDirectory[PathPackage,PackageLocation];
			Quiet@DeleteDirectory[DecompressTempFolder, DeleteContents -> True];
(*   
		(* Activate the documentation	*)
		WriteString["stdout", "Setting up the help system ... "];
		RenameDirectory[FileNameJoin[{PackageLocation,"DocOutput"}],FileNameJoin[{PackageLocation,"Documentation"}]];
		Quiet@DeleteDirectory[FileNameJoin[{PackageLocation,"DocSource"}], DeleteContents -> True];
   *)
			
			

			WriteString["stdout", "\n Installation complete! Loading SpaceMath package ... \n"];
			Get["SpaceMath`"];

];
