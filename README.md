# Jamf It - Open Source Iphone App Project

![](test1.gif)

## What You Can Currently do with JAMF and this APP

By using the ID number, you can search for computers and the app will return the Computer name, local IP Address, and the Mac Address of the device. (Using the ID number was the easiest thing for me to code to start testing)

Please reach out to me for any questions, or if you decide to take any code here please let me know! I want to see what you do with it/improve on the current code.

Email: chrisdotorellana@gmail.com

Tested on an IPhone 7Plus on iOS 12.4. with Jamf Instance v 10.14
Code written in Swift 5 via XCode 10.3 

## PLEASE NOTE THIS IS JUST A PROOF OF CONCEPT APP 

This app is by no means ready for distribution/deployment. It is a very mcgyvered app that I managed to scramble different bits of code and testing what worked. It is my first time developing around an API and I wanted to share this with other amateur/beginner coders such as myself that it is doable. I am hoping that by sharing this testing app someone with more experience in development can take the bits of things I have placed here to make something better. 

Definitely check out JAMFKit, a framework to talk to the JSS API. I tried to incorporate into my project but I was trying to find a way to to make my app work without any third party framework. Regardless, check it out very nice work from Ethenyl.
https://github.com/Ethenyl/JamfKit

## How to get the app to Run/ Sideload on your phone

You are going to need XCode 10.3 on a Mojave Mac. I am not sure if you can compile the code in an earlier version, I tried running this app on a High Sierra Mac with Xcode 10.1 but it threw me some errors.

1. Open the Jamf It.xcodeproj 
2. Provide a Developer Account Under the General Tab > Signing (If you don't have one making one is easy and free: https://9to5mac.com/2016/03/27/how-to-create-free-apple-developer-account-sideload-apps/)
3. Under /testing/Model/NetworkProcessor.swift Enter a username and password with permissions to access the JAMF API from your JAMF instance. I would suggest avoiding using your master account for security, and creating another dummy/test account to try out the app.
4. Under /testing/Model/ComputerService.swift Enter your JAMF URL for your JAMF instance. This will act as the default API URL address.
5. Try running the App. If you do not have an IPhone lying around, you can use the built in Simulator to run the app. Otherwise, building it on an actual iphone would be a lot cooler IMHO. You can select the type of Device under the Menu Bar > Product > Destination > The type of device you want to use.
6. You must trust your own Developer account that you assigned to the app to test the app on your phone. It will prompt you to go to your phone Settings > General > Device Management Menu and to click on "Trust <Your Developer Apple ID>" Here is an example of how that will look like: https://testersupport.usertesting.com/hc/en-us/articles/115003712912-How-to-Trust-an-Unreleased-iOS-App
7. If that was all a success the app should run! I pasted screenshots of how that should look like.

## TL;DR

I been pretty busy so making this app has been frustrating as I am not good in coding and this app required a lot of attention but I am definitely willing to learn. A lot of my time spent on the app has been trying to learn how to access an API in Swift and incorporating that code into an IPhone app.

## Some background of my small app (for those curious)

I have been trying to work on this app for the past two years (which I believe shows and not in a good way haha.) Here is a simple meme I created that reflects how I feel towards my work. My sense of humor has been compared to that of a dead rat so forgive me.

https://imgflip.com/i/39o0vh

In these past two years I had recently graduated with my bachelors and was lucky and found a job in IT. I was trying to work on this app as a proof of concept during my first IT job to show to my higher uppers. After a year in that position I decided to get a different IT position somewhere else as the stress from my first job had become overwhelming. Now here at my current job I was able to get some more free time to troubleshoot and work on my app, but the learning curve at my new job required me to pull back from my app and focus more on what was needed of me at my job. Since neither of my jobs require of me to be developing apps, this has become my side project.


## Goals for the app

Some of my future goals of the app is to incorporate actual menus and grids where I can see all the devices I have in my Jamf instance, and to be able to deploy policies easily through the app and see their policy status. I also want to incorporate a search bar that can search devices with different criteria besides just the ID number of a device.

## Credit must be given

KeyPath.swift code: I honestly misplaced the source of where I found this code but once I find it I will share it. This was very useful in helping me access the different keys within JAMF. If you have another way of accessing the dictionaries parsed from the JSON returned from the API, please feel free to share it with me! 

How to Use Key Paths to access Dictionaries: https://oleb.net/blog/2017/01/dictionary-key-paths/

View Headers in Google Chrome: https://www.mkyong.com/computer-tips/how-to-view-http-headers-in-google-chrome/

How to make an HTTP Request in Swift: https://stackoverflow.com/questions/24379601/how-to-make-an-http-request-basic-auth-in-swift 

How to build a Weather App With API and JSON Parsing by David Tran: https://www.youtube.com/watch?v=LEFsK9mUwAE

Accesing User Input: https://www.youtube.com/watch?v=uVCFV668dSQ

Here is a cool app you can use to test your JAMF API: Rested https://apps.apple.com/us/app/rested-simple-http-requests/id421879749?mt=12

## More Disclaimers

The icons and wallpapers of the app were all shared through the Youtube video created by David Tran. The icon for the app itself was an icon I had lying around and used it for testing.
