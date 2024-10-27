<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&display=swap" rel="stylesheet">

        <title>Blog - Programming Course</title>

        <link href="blogcss/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <link rel="stylesheet" href="blogcss/assets/css/fontawesome.css">
        <link rel="stylesheet" href="blogcss/assets/css/templatemo-stand-blog.css">
        <link rel="stylesheet" href="blogcss/assets/css/owl.css">

        <style>

            .star-rating {
                direction: rtl;
                font-size: 0;
                unicode-bidi: bidi-override;
            }
            .star-rating .stars {
                display: inline-block;
            }
            .star-rating .stars input[type="radio"] {
                display: none;
            }
            .star-rating .stars label {
                display: inline-block;
                font-size: 30px;
                color: #ccc;
                cursor: pointer;
            }
            .star-rating .stars input[type="radio"]:checked ~ label {
                color: #f5a623;
            }
            .star-rating .stars label:hover,
            .star-rating .stars label:hover ~ label {
                color: #f5a623;
            }


        </style>
    </head>

    <body>

        <div id="preloader">
            <div class="jumper">
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>  

        <div id="header"></div>
		<script>
	        // Sử dụng JavaScript để nhúng nội dung từ một trang HTML
	        fetch('./header-footer-content/header.jsp')
	            .then(response => response.text())
	            .then(html => {
	                document.getElementById('header').innerHTML = html;
	            });
	    </script>


        <div class="heading-page header-text">
            <section class="page-heading">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="text-content">
                                <h4>Post Details</h4>
                                <h2>Single blog post</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>




        <section class="blog-posts grid-system">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="all-blog-posts">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="blog-post">
                                        <div class="blog-thumb">
                                            <img src="${blog.img}" alt="${blog.name}">
                                        </div>
                                        <div class="down-content">           
                                            <span>${blog.name}</span>
                                            <ul class="post-info">
                                                <li><a href="#">Admin</a></li>
                                                <li><a href="#">May 12, 2020</a></li>
                                                <li><a href="#">10 Comments</a></li>
                                            </ul>
                                            <p>${blog.description}</p>
                                            <div class="post-rating">
                                                
                                                <div class="star-rating">
                                                    <div class="stars">
                                                       
                                                        <input type="radio" name="rating" id="star-5-${blog.id}" value="5" ${blog.rating == '5' ? 'checked' : ''}/>
                                                        <label for="star-5-${blog.id}" title="5 stars">&#9733;</label>

                                                        <input type="radio" name="rating" id="star-4-${blog.id}" value="4" ${blog.rating == '4' ? 'checked' : ''}/>
                                                        <label for="star-4-${blog.id}" title="4 stars">&#9733;</label>

                                                        <input type="radio" name="rating" id="star-3-${blog.id}" value="3" ${blog.rating == '3' ? 'checked' : ''}/>
                                                        <label for="star-3-${blog.id}" title="3 stars">&#9733;</label>

                                                        <input type="radio" name="rating" id="star-2-${blog.id}" value="2" ${blog.rating == '2' ? 'checked' : ''}/>
                                                        <label for="star-2-${blog.id}" title="2 stars">&#9733;</label>

                                                        <input type="radio" name="rating" id="star-1-${blog.id}" value="1" ${blog.rating == '1' ? 'checked' : ''}/>
                                                        <label for="star-1-${blog.id}" title="1 star">&#9733;</label>
                                                    </div>
                                                </div>
                                            </div>



                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="sidebar-item comments">
                                        <div class="sidebar-heading">
                                            <h2>4 comments</h2>
                                        </div>
                                        <div class="content">
                                            <ul>
                                                <li>
                                                    <div class="author-thumb">
                                                        <img src="blogcss/assets/images/comment-author-01.jpg" alt="">
                                                    </div>
                                                    <div class="right-content">
                                                        <h4>Charles Kate<span>May 16, 2020</span></h4>
                                                        <p>Fusce ornare mollis eros. Duis et diam vitae justo fringilla condimentum eu quis leo. Vestibulum id turpis porttitor sapien facilisis scelerisque. Curabitur a nisl eu lacus convallis eleifend posuere id tellus.</p>
                                                    </div>
                                                </li>
                                                <li class="replied">
                                                    <div class="author-thumb">
                                                        <img src="blogcss/assets/images/comment-author-02.jpg" alt="">
                                                    </div>
                                                    <div class="right-content">
                                                        <h4>Thirteen Man<span>May 20, 2020</span></h4>
                                                        <p>In porta urna sed venenatis sollicitudin. Praesent urna sem, pulvinar vel mattis eget.</p>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="author-thumb">
                                                        <img src="blogcss/assets/images/comment-author-03.jpg" alt="">
                                                    </div>
                                                    <div class="right-content">
                                                        <h4>Belisimo Mama<span>May 16, 2020</span></h4>
                                                        <p>Nullam nec pharetra nibh. Cras tortor nulla, faucibus id tincidunt in, ultrices eget ligula. Sed vitae suscipit ligula. Vestibulum id turpis volutpat, lobortis turpis ac, molestie nibh.</p>
                                                    </div>
                                                </li>
                                                <li class="replied">
                                                    <div class="author-thumb">
                                                        <img src="blogcss/assets/images/comment-author-02.jpg" alt="">
                                                    </div>
                                                    <div class="right-content">
                                                        <h4>Thirteen Man<span>May 22, 2020</span></h4>
                                                        <p>Mauris sit amet justo vulputate, cursus massa congue, vestibulum odio. Aenean elit nunc, gravida in erat sit amet, feugiat viverra leo.</p>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="sidebar-item submit-comment">
                                        <div class="sidebar-heading">
                                            <h2>Your comment</h2>
                                        </div>
                                        <div class="content">
                                            <form id="comment" action="#" method="post">
                                                <div class="row">
                                                    <div class="col-md-6 col-sm-12">
                                                        <fieldset>
                                                            <input name="name" type="text" id="name" placeholder="Your name" required="">
                                                        </fieldset>
                                                    </div>
                                                    <div class="col-md-6 col-sm-12">
                                                        <fieldset>
                                                            <input name="email" type="text" id="email" placeholder="Your email" required="">
                                                        </fieldset>
                                                    </div>
                                                    <div class="col-md-12 col-sm-12">
                                                        <fieldset>
                                                            <input name="subject" type="text" id="subject" placeholder="Subject">
                                                        </fieldset>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <fieldset>
                                                            <textarea name="message" rows="6" id="message" placeholder="Type your comment" required=""></textarea>
                                                        </fieldset>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <fieldset>
                                                            <button type="submit" id="form-submit" class="main-button">Submit</button>
                                                        </fieldset>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="sidebar">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="sidebar-item search">
                                        <form id="search_form" name="gs" method="GET" action="#">
                                            <input type="text" name="q" class="searchText" placeholder="type to search..." autocomplete="on">
                                        </form>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="sidebar-item recent-posts">
                                        <div class="sidebar-heading">
                                            <h2>Recent Posts</h2>
                                        </div>
                                        <div class="content">
                                            <ul>
                                                <li><a href="post-details.html">
                                                        <h5>Vestibulum id turpis porttitor sapien facilisis scelerisque</h5>
                                                        <span>May 31, 2020</span>
                                                    </a></li>
                                                <li><a href="post-details.html">
                                                        <h5>Suspendisse et metus nec libero ultrices varius eget in risus</h5>
                                                        <span>May 28, 2020</span>
                                                    </a></li>
                                                <li><a href="post-details.html">
                                                        <h5>Swag hella echo park leggings, shaman cornhole ethical coloring</h5>
                                                        <span>May 14, 2020</span>
                                                    </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="sidebar-item categories">
                                        <div class="sidebar-heading">
                                            <h2>Categories</h2>
                                        </div>
                                        <div class="content">
                                            <ul>
                                                <li><a href="#">- Nature Lifestyle</a></li>
                                                <li><a href="#">- Awesome Layouts</a></li>
                                                <li><a href="#">- Creative Ideas</a></li>
                                                <li><a href="#">- Responsive Templates</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="sidebar-item tags">
                                        <div class="sidebar-heading">
                                            <h2>Tag Clouds</h2>
                                        </div>
                                        <div class="content">
                                            <ul>
                                                <li><a href="#">Lifestyle</a></li>
                                                <li><a href="#">Creative</a></li>
                                                <li><a href="#">HTML5</a></li>
                                                <li><a href="#">Inspiration</a></li>
                                                <li><a href="#">Motivation</a></li>
                                                <li><a href="#">PSD</a></li>
                                                <li><a href="#">Responsive</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <ul class="social-icons">
                            <li><a href="#">Facebook</a></li>
                            <li><a href="#">Twitter</a></li>
                            <li><a href="#">Behance</a></li>
                            <li><a href="#">Linkedin</a></li>
                            <li><a href="#">Dribbble</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>


        <script src="blogcss/vendor/jquery/jquery.min.js"></script>
        <script src="blogcss/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <script src="blogcss/assets/js/custom.js"></script>
        <script src="blogcss/assets/js/owl.js"></script>
        <script src="blogcss/assets/js/slick.js"></script>
        <script src="blogcss/assets/js/isotope.js"></script>
        <script src="blogcss/assets/js/accordions.js"></script>


        <script language = "text/Javascript">
            cleared[0] = cleared[1] = cleared[2] = 0;
            function clearField(t) {
                if (!cleared[t.id]) {
                    cleared[t.id] = 1;
                    t.value = '';
                    t.style.color = '#fff';
                }
            }
        </script>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
            function setRating(starValue, id) {
                $.ajax({
                    type: "POST",
                    url: "RateBlogServlet",
                    data: {
                        id: id,
                        rating: starValue
                    },
                    success: function (response) {
                        if (response === "Success") {
                            alert("Rating updated to " + starValue + " stars.");
                        } else {
                            alert("Error updating rating.");
                        }
                    },
                    error: function () {
                        alert("Error updating rating.");
                    }
                });
            }

            $(document).ready(function () {
                $(".stars input[type='radio']").change(function () {
                    var starValue = $(this).val();
                    var blogId = $(this).attr("id").split('-')[2]; 
                    setRating(starValue, blogId);
                });
            });
        </script>




    </body>

</html>