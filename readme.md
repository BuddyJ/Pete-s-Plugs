**About Pete's Plugs**

---

I've set this up so that you can maintain it your self. 
So, let's address the basics than shall we? 

**If you need to work in a local environment** 

Make sure you've got Rails installed. 
Install Sinatra & Shotgun -> [see this great post:](http://ruby.about.com/od/sinatra/a/sinatra5.htm)

That post will explain everything or link you to the starter stuff. Essintally after you've installed Ruby, Sinatra & Shotgun you just bust open terminal, cd into the root of your project and run the command shotgun app.rb. This will fire up a localhost server on port 9393. Using Shotgun allows you to do development. If you run ruby app.rb it will fire up a server on port 4567. Anytime you change your code you'll have to stop the server and restart it, which is lame. 

**If you've gotta add a new product**

What do you do with all that fancy javaScript mumbojumbo? That's easy!!! 

1. In the file *"index.erb"* copy the grid_2 that contains the class *"productThumb"*

2. Place it where you want and rename the *"data-producttext"* section to what you want it to be. It's a string so just type what you want. That's whats going to get shoved under the full size picture. 

3. Open your image editing software of choice & crop your photo to 140px wide & 121px tall. I gave your orginal thumbnails a 2px white border inside of that image as well. The shadows & opacity are handled with CSS3 and will just magiclly happen so long the thumbnail gets the class *"productThumb."*

4. Still in the image software Create your large image which is 432px wide by 324px high. I didn't do anything else to this image besides save it. 

5. Save both images in the images folder. For your own sanity i'd recomend using some sort of naming convention.

6. Now back in index.erb replace the src of the img with your new image. The file path should read *src="images/your_image.jpg"* There's no need for ../ or any of that crap. Sinatra will handel all of that for you. It knows to look in public for any resource. by using images/ we've told it to look in public in the images folder for your new thumbnail. 

7. Replace the *"data-fullportait"* string with the proper link to your full size image. It should look like *data-fullportait="your_fullsize_image.jpg"*

So your final line of code should look like this:

`<img class="productThumb" src="images/your_thumbnail_image.jpg" data-fullportait="images/your_fullsize_image" data-producttext="Your caption for your image.">`

WIN!

**What if a product goes out of stock?**

I've thought of everything. On the image thumbnail find the class *productThumb* right after that add the class *disabled* All this does is add a *display:none;* to the image so it is hidden from view. 

**I need to add some more FAQs**

Cool. Fire up your shotgun server if you want to preview it. In your project root locate the folder *"views"* Open it. Inside you'll find all your app's views. Locate FAQ and open it. 
To create a new FAQ just copy and paste an old one. You'll want the title which is a grid_12 with an h3 inside of it. And you'll want the answer, which is a grid_8 with a `<p>` inside of it. Just edit the `<h3>` and the `<p>` as you see fit. Make sure all your divs are closed tho or the page will freak out!

**I want to understand Sinatra a little bit better**

Good! the page I linked in the first part of this doc should answer your questions and explain Sinatra too you. Sinatra is boss. It's a light weight Rails thing that lets us do simple things like make forms and pages and stuff. It has a structure. You have the folder *Public* which is where your images, scripts & styles all live. Sinatra knows to look there for any of that kind of stuff. You also have a folder called *Views* inside of this folder is where all the (you guessed it) views live. It's importaint to note that layout.erb is what will contain your header and footer on your webpage as well as all of the HTML junk needed to link to stylesheets & scripts. The other file app.rb handels all the routing and when you do more complex stuff (which i've never done) it goes there as well. Inside of app.rb you need to `require 'rubygems'`. This is an older pratcie that i read wasn't 100% needed anymore but it's recomended to still do it. After that you'll want to `require 'sinatra'`. This tells the app that it needs ruby & sinatra. If you're wanting to use SASS you'd `require 'sass'` Once you've required all the things you need you'll need to set up your pages. `get '/' do erb :index end` for example is telling sinatra that when ever it sees '/' in as a link it needs to take you to index.erb. We called it erb by saying *erb :index* An HTML page wouldn't work here. Sorry. So if you wanted to link to your store page you'd tell it `get '/store' do erb :store end` YAY! now you know about Sinatra! One last thing tho. you'll need to use the rails `<=% yield %>` command in layout.erb to insert your pages. So you'll want this where the page is suppose to be displayed, after the header and before the footer. 

---

**Using your Logo File**

I've included your logo. `petes_logo.ai` It's an Adobe Illustrator CS5 file. I've included the color samples & a black & White version. The fonts have been flattened so that you can use the file with out having to have the fonts. If you need the fonts you can find them here:

1. [LHF Five & Dime:](http://letterheadfonts.com/fonts/fiveanddime.php) This is the PETE'S font. It's around $45.00. 

2. [Liberator](http://www.losttype.com/font/?name=liberator) Great Retro font. It's free or donate from the Lost Type Co-Op

**I wanna make a T-shirt!**

Cool. You can either have me do it, or, to prep your logo file you'll need to open it in Illustrator, copy your logo to a new document. File > Save As > Illustrator EPS > Illustrator 9. This allows the printer to use Macromedia FreeHand, CorelDraw, or any version of Adobe Illustrator 9 & above. It alsow allows the printer to use any version of Photoshop CS3 & up and see the logo as a vector object. That's ALWAYS a win :)

**I wanna use the logo but i want it distressed**

This one is doable but tricky. Depends on the size. The file on the webpage is not big. We'll have to revisit it if you want that. 

**I wanna make a cool stamp or something**

That'd be awesome and I really think that you should. It'd be super sweet to wrap your wires in brown butcher's paper then stamp your logo on it. Just find a place on the net that does it and then figure out what kind of file they need and what size it is. Then follow The t-shirt steps to produce the proper file! It's bi-winning. I bet you'd wanna use the black & White logo for a stamp tho, just saying

---

**GitHub is awesome, but i want this on my computer.**

That's really doable. 

**On A Mac**

1. Simply download their GitHub for Mac GUI. 

2. On the repo page click the *"Clone In Mac"* button on the upper left. 

3. Save it whereever you want it to be saved at. 

4. Go there on your computer. It's epic winning. 

**For PC**

1. Copy the remote URL

2. In the command line CD to where the project should live

3. `git clone` the remote URL

DONE.

Or...

Click the download ZIP file :)

---

Any other questions you can just ask me. Any server tech questions you probably ought to ask Ben. He's smarter than I am.

---
