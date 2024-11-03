# Overview

This is my first time working on a project in Swift as well as developing an app that isn't from an app builder. My personal goal in building this app was to push myself with learning a new language and to try building an app. Although there is definitely a learning process to building in Swift and XCode, I believe it's a valuable tool and being able to use it effectively will open up my resources in the professional industry. 

This app is a flashcard app. The goal is for individuals to save a card with data for the front and back. On the main page there are two buttons at the bottom. One is for adding cards and one is for viewing cards. When you select to add a card, a view will open up which will prompt you for the front and back of the card information. After you input, you are able to choose "Add". The added cards will display on the main page showing the front and back of the card. If you choose the button to view cards (which you can only do when you have at least one card saved), you will be brought to the second page which will show you one card at a time. It will show the front of the card by default. When you click the card, it will show the back. You can click again to return to the front. You may choose to view the next or the previous card.

My purpose for creating this app was to give myself an introduction to Swift. The purpose of this app specifically is because I think flashcards are a helpful way for students to learn to pair ideas with terms. An application of this for myself is that I've been learning Polish for a few years, and I find it relevant to use this app to save English words on one side and Polish words on the other. There are other online resources for flashcards, but they are often locked behind a paywall. Another option is paper flashcards, but these get lost easily and are overall not the most eco-friendly option.

{Provide a link to your YouTube demonstration.  It should be a 4-5 minute demo of the app running and a walkthrough of the code.}

[Software Demo Video](https://youtu.be/1iqnsOHEAW4)

# Development Environment

I used XCode, which is the apple code developing environment. It supports Swift, which is a language made for iOS development. I used Git to version control my project, with GitHub as the remote host for my project. I programmed on a MacBook Sequoia 15 with an M1 chip and tested my app both with the virtual environments and debugging tools through XCode, as well as on my iPhone 16 which runs iOS 18.

I used Swift for this project, which is a high-level programming language used specifically for the development of iOS apps. Swift has the best support in XCode, which is the environment I used for this app. I used SWIFTUI, which is the built in framework for app views in Swift, as well as Foundation in my Flashcard.swift file to build the data structure for each Flashcard, as each needs to contain an ID, frontText, and backText.

# Useful Websites

{Make a list of websites that you found helpful in this project}
* [Official Swift Home Page](https://www.swift.org)
* [Swift Informational and Intro Youtube Video](https://www.youtube.com/watch?v=nAchMctX4YA)
* [Intro to Swift Youtube Video Playlist](https://www.youtube.com/playlist?list=PLwvDm4VfkdpiLvzZFJI6rVIBtdolrJBVB)
* [Official Swift Guide](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/guidedtour/)
* [TutorialsPoint](https://www.tutorialspoint.com/swift/swift_basic_syntax.htm)

# Future Work

* Implement Option for Editing and Deleting a Card
* Users can create groups for their Cards and View Cards by Group. This way users can have cards for different purposes
* Implement a familiarity system. Users can tag their cards with properties such as 'new' or 'learning' or 'mastered', for example, and the cards will change colors based on this. This will help users focus on specific cards
