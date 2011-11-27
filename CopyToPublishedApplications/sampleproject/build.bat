@set msbuild=C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSBuild.exe
@set outputpath="%CD%\output"

@mkdir %outputpath%
@rmdir /s /q %outputpath%

%msbuild% sampleproject.sln /p:OutputPath=%outputpath% /p:CopyToPublishedApplications=true