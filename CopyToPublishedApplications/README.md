CopyToPublishedApplications.msbuild
===================================

CopyToPublishedApplications msbuild file inspired by Microsoft web application projects build process file "Microsoft.WebApplication.targets".

It creates _PublishedApplications\yourappname folder in your output directory. 

By using this msbuild file you don't have to deal with seperation of files based on projects when you are building solutions with multiple projects.

Usage
-----------------------
- You just need to add below import line at the bottom of the project file and execute msbuild.exe with the /p:CopyToPublishedApplications=true parameter.

>&lt;Import Project="..\..\CopyToPublishedApplications.msbuild" /&gt;

- Add CopyToPublishedApplications parameter to msbuild command line. default value of CopyToPublishedApplications is false.

>msbuild yoursolutionfile.sln /p:OutputPath=C:\yourcioutputfolder /p:CopyToPublishedApplications=true

Cengiz Han / @hancengiz
-----------------------

- After you addd import line in your projects and run your build with msbuild command line tool as it's shown above you will get an output like below:

- You can find this sample project structure in sampleproject folder. check out the import lines in each .csproj file, and just run build.bat file.

>\sampleproject>dir output /s /b
>\sampleproject\output\ClassLibrary1.dll
>\sampleproject\output\ClassLibrary1.pdb
>\sampleproject\output\WindowsFormsApplication1.exe
>\sampleproject\output\WindowsFormsApplication1.exe.config
>\sampleproject\output\WindowsFormsApplication1.pdb
>\sampleproject\output\WindowsFormsApplication2.exe
>\sampleproject\output\WindowsFormsApplication2.exe.config
>\sampleproject\output\WindowsFormsApplication2.pdb
>\sampleproject\output\_PublishedApplications
>\sampleproject\output\_PublishedApplications\ClassLibrary1
>\sampleproject\output\_PublishedApplications\WindowsFormsApplication1
>\sampleproject\output\_PublishedApplications\WindowsFormsApplication2
>\sampleproject\output\_PublishedApplications\ClassLibrary1\ClassLibrary1.dll
>\sampleproject\output\_PublishedApplications\ClassLibrary1\ClassLibrary1.pdb
>\sampleproject\output\_PublishedApplications\WindowsFormsApplication1\ClassLibrary1.dll
>\sampleproject\output\_PublishedApplications\WindowsFormsApplication1\ClassLibrary1.pdb
>\sampleproject\output\_PublishedApplications\WindowsFormsApplication1\WindowsFormsApplication1.exe
>\sampleproject\output\_PublishedApplications\WindowsFormsApplication1\WindowsFormsApplication1.exe.config
>\sampleproject\output\_PublishedApplications\WindowsFormsApplication1\WindowsFormsApplication1.pdb
>\sampleproject\output\_PublishedApplications\WindowsFormsApplication2\WindowsFormsApplication2.exe
>\sampleproject\output\_PublishedApplications\WindowsFormsApplication2\WindowsFormsApplication2.exe.config
>\sampleproject\output\_PublishedApplications\WindowsFormsApplication2\WindowsFormsApplication2.pdb