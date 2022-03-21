# NFarT - Rails Marketplace

## T2A2-Morgan Ko
---

### Identification of the problem you are trying to solve by building this particular marketplace app.
This Marketplace app aims to disrupt the cryptocurrency and NFT craze. While the premise of these digital assest revolving around decentralisation are very honourable, it is clearly seen that those in rich with resources are benefitting the most from such a platform. Additionally, the global pandemic has highlighted the time spent quarantined and isolated in confined spaces, leading to people moving into larger homes with more physical space to move around in. 

### Why is it a problem that needs solving?
**NFarT** hopes to bring back the surrealism of physical art, moving away from digital assets, to promoting creative endeavours to both relax and create for pleasure.
It can be daunting to learn a new skill, with an increasing focus on monetising hobbies and capitalising on any goods and services produced. However, **NFarT** hopes to disrupt this culture and mindset, instead promoting that any effort can be rewarded.

### A link (URL) to your deployed app (i.e. website)
[Deployed](https://staging-nfart.herokuapp.com/)

### A link to your GitHub repository (repo).
[Github](https://github.com/MKO122/MorganKo_T2A2)

### Description of your marketplace app (website), including:
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

### User stories for your app
Gertrude <br>
I love crafting, sewing, knitting, quilting, etc. Except I always run out of fabric and yarn and can never be bothered finishing it. It makes me sad to see all these ideas unfinished but I can't finish them anymore. I would like to be able to sell them to other people who can finish them or do something with them so it's not wasted.

Bartholemew <br>
I love painting. I'm not a good painter, but I do it because it sparks joy. I have more artworks than friends that I can pass them along to. I would love to find homes for them where they can be appreciated for what they are. Expressions of moments that have been captured.

Florence <br>
I'm an heiress and widow living in my empty manor. I'm eccentric and like having unique art not for value because I'm filthy rich but because they remind me and my guests that I host at my lavish balls in my private estate about the diversity of life. Beauty is in the eye of the beholder.

### Wireframes for your app

Homepage
![Homepage](/img/wireframes/Market.png)

New Listing
![New Listing](/img/wireframes/Create%20listing.png)

Complete Listing
![Complete Listing](/img/wireframes/Completed%20listing.png)

### An ERD for your app
![ERD](/img/ERD-NFarT.png)

### Explain the different high-level components (abstractions) in your app
-Gems
-MVC
-Controllers
-Inheritance in Ruby
-Application Record
-Partials
-ERB

<p> There are a few high-level components that is native to Ruby on Rails that allows for less boilerplate coding, with varying success. In an attempt to create code that is DRY, Rails has created functions that reduce the need for reptitive code by combining/streamlining certain processes, which is both useful and problematic. </p>

<p> For instance, let's star with ruby gems. These are components that assist a developer by containing a packet of code that performs function(s). These gems can be as simple as something that generates files to produce recommended scaffold tests (rspec) or something as complicate as devise which helps build models that provides capability for user creation and functionality. 
</p>

<p> Another is
</p>

<p> Reference <br>
https://www.altcademy.com/explain/rubygems
</p>

### Detail any third party services that your app will use

### Describe your projects models in terms of the relationships (active record associations) they have with each other

### Discuss the database relations to be implemented in your application


### Provide your database schema design
![DBSD](img/database%20schema.png)

### Describe the way tasks are allocated and tracked in your project^
The Trello board can be viewed [here](https://trello.com/b/dD1u3Dph/t2a2)

