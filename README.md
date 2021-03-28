### This is the Easy Kana App
## Inspiration
My children are currently learning to read Japanese, but they are not ready for traditional flashcards where the app shows you the flashcard, then the associated pronunciation, and then you choose whether or not you remember the flashcard. They need a way to interact with the app like they would a teacher. The teacher shows them a card. They say the pronunciation, and then the teacher gives them feedback on whether they were correct.

## What it does
The app randomly shows a Japanese hiragana or katakana symbol then gives you three seconds to pronounce the symbol. If you get it correct, it shows a green circle. If not, it shows a red circle. You can then move to the next symbol.

## How we built it
I built it using SwiftUI in Xcode. This was my first time using Swift, so I went through a few tutorials to understand how apps are put together.

## Challenges we ran into
I do not own a Mac, so I had to use a remote Mac Mini server to do the development. I ended up spending about half of a day figuring out how to allow my local USB connect to my phone to be seen by the remote Mac Mini. This was required to test the voice features, so it was a very important milestone in my project once that was working.

Other challenges were related to programming in SwiftUI. It took some time to get a hang of states and how to refresh views. There are still many things in SwiftUI that do not work in a way that is intuitive to me. My programming experience has not been in the MVC (Model-View-Controller) paradigm, so this is something to continue studying.

Working with speech recognition with iOS was also a challenge. For short words and sounds like I am testing, there is not a lot of context for the speech recognition engine to use. This leads to problems with similar sounding words being recorded. I was able to overcome this by comparing the recording with the correct answer as well as a list of common recording errors. This allows the app to work smoothly from the users perspective.

## Accomplishments that we're proud of
I am proud that I was able to create an app with the planned functionality. On Friday morning, I had never written a line of Swift and did not have access to a Mac computer, but I knew that I wanted to create this app to help my children study Japanese. This seemed like an insurmountable task, but I was able to complete it within just one weekend.

## What we learned
I learned how SwiftUI is used to build basic iOS apps. I also had my first exposure to the MVC paradigm of programming, and I learned that I can make significant progress in a programming project when I put my mind to it.

## What's next for Easy Kana
There are a few things left to do to extend the functionality of the app. First, I need to build out the remainder of the kana symbols. Next, I plan to add sounds to play the reading of the kana after it is incorrectly pronounced.
