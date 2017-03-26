1. Google search jQuery, Look it up on Codecademy
2. Learn about jQuery from a YouTube tutorial (ideally)
3. Find jQuery cheatsheets and bookmark it
4. Refresh my HTML/CSS knowledge
5. Create html, css and js files to practice the gained knowledge
(if necessary download jQuery on my laptop)

Take regular 10 mins breaks (1 per hour)

Research notes:
jQuery is the most popular javaScript library that ever existed, it has been around for over 10 years, it's a stable software. It represents the fastest and easiest way to add interactivity and animation to the websites.
An HTML document is structured according to the Document Object Model (DOM). It's by interacting with the DOM that jQuery is able to access and modify HTML.
The DOM consists of every element on the page, laid out in a hierarchical way that reflects the way the HTML document is ordered.  Just as with an HTML document, elements in the DOM can have parents, children, and siblings.

BASIC SYNTAX
$ sign is a shorthand for a word jQuery, eg. $('#id') = jQuery('#id')
$(document).ready(function(){
});
or 

$(function(){

});
the doc ready statements is required for functions that are gonna be happening to a document itself. We want to make sure that document is loaded before we act upon it.

$(this) refers to whatever the function is called on
alert is great for debugging - alert($(code))

Basic selectors $([html element here])
$('p').css('border', '4px solid red');
$('#lesson-1').css..
$('*') selects everything in the entire document and have red border on it.

Basic animation
$('box:first').animate({bottom: 200px', left: 200px})
$('.box:first').hide(500) - first element of class box hides over a span of 500 ms
$('.box:first').hide(500).show(800) - hide over 500ms and then show over course of 800ms

Index filters
take the selection and filter to just a first
$('p:first').css('border', '4px solid red');
$('p:last')
$('p:gt(2)') - greater than two; less than two $('p:lt(2)'), equal to two $('p:eq(2)')
walking through the selection and finding the ones we specify

Relationship filters
$('h2:has(span)').css('border', '4px solid red');
$('box:parent') - they have children in them
$('box:empty')
based on the relationship between the DOM elements

Attribute filters
- inside of a tag - like class or image source or href
$('p[class="lead"]').css('border', '4px solid red');

Attr method
alert($('p:first').attr('class'));
$('p:first').attr('class', 'not-lead');

Image swap
$('img').fadeOut()
$('img').fadeOut(500, function(){
  $(this).attr('src', img2.jpg').fadeIn(500);
  });

Class methods
$('p:last').hasClass('lead'));

Googling solutions really helped, but YouTube tutorials were the most helpful
(learn jQuery in 15 minutes tutorial by DevTips) 