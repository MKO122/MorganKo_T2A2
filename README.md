# NFarT - Rails Marketplace

#### T2A2-Morgan Ko
---

## Identification of the problem you are trying to solve by building this particular marketplace app.
This Marketplace app aims to disrupt the cryptocurrency and NFT craze. While the premise of these digital assest revolving around decentralisation are very honourable, it is clearly seen that those in rich with resources are benefitting the most from such a platform. Additionally, the global pandemic has highlighted the time spent quarantined and isolated in confined spaces, leading to people moving into larger homes with more physical space to move around in. 

## Why is it a problem that needs solving?
**NFarT** hopes to bring back the surrealism of physical art, moving away from digital assets, to promoting creative endeavours to both relax and create for pleasure.
It can be daunting to learn a new skill, with an increasing focus on monetising hobbies and capitalising on any goods and services produced. However, **NFarT** hopes to disrupt this culture and mindset, instead promoting that any effort can be rewarded.

## A link (URL) to your deployed app (i.e. website)
[Deployed](https://staging-nfart.herokuapp.com/)

## A link to your GitHub repository (repo).
[Github](https://github.com/MKO122/MorganKo_T2A2)

## Description of your marketplace app (website), including:
- Purpose <br>
See above

- Functionality / features <br>
This app allegedly boasts the ability to Log in/Log out, View listings, Create Listings, Edit Listings (via updating details or deleting) and Purchase Listings. It also has authorisation embedded so certain functions can only be accessed if certain requirements are met (E.g. Must be logged in before creating or purchasing a listing & loading checkout after a User has committed to purchasing a listing and not before)

- Sitemap <br>
![Sitemap](/img/NFarT%20Sitemap.png)

- Screenshots <br>
![Homepage](/img/screenshots/Homepage.png)
![All Listings](/img/screenshots/All%20Listing.png)
![Create a listing](/img/screenshots/Create%20a%20listing.png)
![Log in](/img/screenshots/Log%20in.png)

- Target audience <br>
The target audience for this app is for eclectic collectors of art and creative people who produce art of various quality and varying levels of completeness.

- Tech stack (e.g. html, css, deployment platform, etc) <br>
<p> Language/Framework <br>
Ruby 2.7.5 <br>
Rails 6.1.4.6 <br>
Javascript <br></p>

<p> Frontend <br>
HTML 5 <br>
Bootstrap 4 <br>
SCSS </p>

<p> Backend <br>
PostgreSQL <br>
Devise <br>
Stripe </p>

<p> Deployment <br>
Ultrahook <br>
Heroku </p>

<p> Storage <br>
Amazon AWS </p>

## User stories for your app
Gertrude <br>
I love crafting, sewing, knitting, quilting, etc. Except I always run out of fabric and yarn and can never be bothered finishing it. It makes me sad to see all these ideas unfinished but I can't finish them anymore. I would like to be able to sell them to other people who can finish them or do something with them so it's not wasted.

Bartholemew <br>
I love painting. I'm not a good painter, but I do it because it sparks joy. I have more artworks than friends that I can pass them along to. I would love to find homes for them where they can be appreciated for what they are. Expressions of moments that have been captured.

Florence <br>
I'm an heiress and widow living in my empty manor. I'm eccentric and like having unique art not for value because I'm filthy rich but because they remind me and my guests that I host at my lavish balls in my private estate about the diversity of life. Beauty is in the eye of the beholder.

## Wireframes for your app

Homepage
![Homepage](/img/wireframes/Market.png)

New Listing
![New Listing](/img/wireframes/Create%20listing.png)

Complete Listing
![Complete Listing](/img/wireframes/Completed%20listing.png)

## An ERD for your app
![ERD](/img/ERD-NFarT.png)

## Explain the different high-level components (abstractions) in your app

<p> There are a few high-level components that is native to Ruby on Rails that allows for less boilerplate coding, with varying success. In an attempt to create code that is DRY, Rails has created functions that reduce the need for reptitive code by combining/streamlining certain processes, which is both useful and problematic. </p>

<p> For instance, let's star with ruby gems. These are components that assist a developer by containing a packet of code that performs function(s). These gems can be as simple as something that generates files to produce recommended scaffold tests (rspec) or something as complicate as devise which helps build models that provides capability for user creation and functionality. </p>

<p> Another is the architecture that Ruby on Rails (RoR) boasts throuhg it's framework. Both Front-end and Back-end disguised in a trenchwork, a developer is able to produce entire applications with a relatively small tech stack. This may be useful for individuals and small teams but becomes increasingly complex the further it is scaled up. <br>
Active Records through the Models-level creates these classes for that allow for associations/relationships between different tables within the database. This allows for SQL queries to be called/performed much quicker. <br>
Meanwhile, at the controller-level, the design of RoR allows for high level abstraction as it blends HTML, Ruby and Javascript into a single file. This can cause high levels of confusion if documentation of knowledge is lacking as it can become quit4e messy. However, this blending also allows for very streamlined code to be written that is comparatively more DRY. It also allows parameters to obtain and funnel information from multiple places to be processed. Not to mention the rendering that provides a scaffold to build methods. <br>
Lastly, in views, HTML can be used in an abstraction that allows for styling to be done instead of through another gem like scss, despite the ability for them to work in tandem. This is where we find files such as erb (embedded ruby) files which include HTML, able to let us dynamically create and style our code for user interface while we code. A useful component for front-end developers as it can reduce or eliminate the need for front-end technologies such as Vue or React. </p>

<p> One more high-level abstraction that Ruby supports is the concept of inheritance. Ruby classes are able to inherit characteristics of another class. this is typically only single classes, however mixins can be used for multiple class inheritance.  While mixins weren't used in this appplication, it is supported natively. The use of inheritance here allows for DRY code where existing code can be inherited from an exisitng class to a new class to save this code being repeated.</p>

<p> Reference <br>
https://www.altcademy.com/explain/rubygems <br>
https://rubyonrails.org/ <br>
https://www.geeksforgeeks.org/ruby-inheritance/ </p>

## Detail any third party services that your app will use
Some third party services include; <br>
Heroku - A cloud platfrom that allows for website deployment. Includes capability for testing environment (staging) via pipelines that can be pushed to production. <br>
Ultrahook - An API CLI tool that allows for local/private servers to connect with a public endpoint to perform a function. In this instance, a local server (localhost:3000) was connected to Stripe to test payment functionality before deploying to production<br>
AWS S3 - A cloud storage service for storing photos/images that Users will upload of their Listings. <br>
Stripe - An API that provides payment processing functionality to applications. <br>
Devise - A popular ruby gem that allows for user authentication in RoR.

## Describe your projects models in terms of the relationships (active record associations) they have with each other
<p>Within User they have a relationship with; <br>
-Listing model where a User can have multiple listings<br>
-Order model where a User can have multiple orders </p>

<p> Within Category they have a relationship with the Listing model where a Category can have multiple listings </p>

<p> Within Feature they have a relationship with; <br>
-ListingsFeature model where a Feature can have multiple listings <br>
-Listings model where a Feature can hace multiple listings </p>

<p> Within ListingsFeature they have a relationship as a jointable with; <br>
-Listings model <br>
-Feature model </p>

<p> Within Listing they have a relationship with; <br>
-User model as they can only belong to one User <br>
-Category model as they can only belong to one Category <br>
-ListingsFeature model where a Listing can have multiple feature listed <br>
-Features model where a Listing can have multiple features </p>

<p> Within Order they have a relationship with; <br>
-Listing model as they can only belong to one Listing <br>
-User model as they can only belong to one User as a buyer or seller </p>

## Discuss the database relations to be implemented in your application
1. Users
2. Category
3. Feature
4. ListingsFeature
5. Listing
6. Order

<p> As seen in the ERD, which no longer reflects the current model since planning (but kept for integrity), a User contains sensitive personal information that is required to access most of the functionality of the website. <br>
A User can create, edit and delete a listing as a 'seller'. This Listing contains most of the information of any controller within the application. Only belonging to one user (seller), it contains information that relates to characteristics/traits that become unique to this Listing. This would include data such as price, condition and description which can widely vary. Then, there are characteristics/traits that are more limited through the use of other controllers to help perform SQL queries. These include the Category and Feature(s) of the Listings. <br>
When a User is ready, they become a buyer, and creates an unique Order for a unique Listing, that contains specific and unique information such as Category and Feature. This Order is processed and status changed to prevent two buyers purchasing one thing.
</p>

## Provide your database schema design
![DBSD](img/database%20schema.png)

## Describe the way tasks are allocated and tracked in your project^
The Trello board can be viewed [here](https://trello.com/b/dD1u3Dph/t2a2)

