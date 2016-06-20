# wallpaper-updater
Windows Batch file which updates your wallpaper with a random image from unsplash.com on every run.

1. In order to configure the file, create a directory in your computer for storing images - we call it $Image Gallery$. 
2. Within $Image Gallery$, create a sub-directory called new download. 
3. Place the run.bat and wget.exe inside the new download sub-directory. 
4. Open run.bat for editing and on line # 3, replace the $Image Gallery$ text with the actual file system path of the folder you created in step # 1 above
5. Save run.bat 

Voila! You are ready. 

You can either run the run.bat file manually or configure it to run as a scheduled task (http://www.thewindowsclub.com/how-to-schedule-batch-file-run-automatically-windows-7). I have configured it to run on every restart of my system; but I also have its shortcut on my desktop so that I can run it manually at wish.  
