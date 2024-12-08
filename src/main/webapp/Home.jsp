<!DOCTYPE html>
<html>

<head>
    <!-- header -->
    <link rel="Stylesheet" href="/css/Home.css" />
    <link rel="favicon" href="icon.jpg" />
    <title>PlacementCell</title>
</head>
<style>

.portfolio {
    /* padding-top: 50px;
    padding-bottom: 50px; */
    width: 100%;
    display: flex;
    justify-content: center;
    background-color: rgba(16, 128, 234, 0.7);
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.portfolio_container {
    flex-wrap: wrap;
    margin-top: 30px;
    width: 100%;
}

.project {
    width: 25%;
    height: 330px;
    background-color: red;
    display: flex;
    overflow: hidden;
}

.project_1 {
    background-image: url("images/tech.jpg");
    background-size: cover;
}

.project_2 {
    background-image: url("images/capgemin.jpeg");
    background-size: cover;
    align-items: flex-end;
}

.project_3 {
    background-image: url("images/tc1.jpg");
    background-size: cover;
}

.project_4 {
    background-image: url("images/infosys.jpeg");
    background-size: cover;
    align-items: flex-end;
}

.project_5 {
    background-image: url("images/aws.jpg");
    background-size: cover;
}

.project_6 {
    background-image: url("images/wipro.jpeg");
    background-size: cover;
    align-items: flex-end;
}

.project_7 {
    background-image: url("images/Legato.jpeg");
    background-size: cover;
}

.project_8 {
    background-image: url("images/Jio.jpeg");
    background-size: cover;
    align-items: flex-end;
}

.project_title {
    padding-top: 0px;
    padding-bottom: 40px;
    color: white;
    width: 100%;
    height: 150px;
    text-indent: 30px;
    line-height: 200px;
    background-color: rgba(16, 128, 234, 0.5);
    align-items: center;
    cursor: pointer;
    overflow: hidden;
}

.project_title:hover {
    height: 360px;
    overflow: hidden;
}

</style>
<body>
    <div class="header" id="header">
        <div class="container header_conatiner">
            <div class="logo" style="padding-left:20px;">
                PlacementCell
            </div>
            <div>
                <ul class="nav-area">
                    <li><a href="#home">Home</a></li>
                    <li><a href="#about">Aboutus</a></li>
                    <li><a href="loginas">Login</a></li>
                    <li><a href="#companies">Companies</a></li>
                    <li><a href="#contactus">Contact Us</a></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- headerend -->
    <!-- banner -->
    <div style="width:100%;height:460px;padding-top: 80px;">
        <div class="slideshow-container" id="home">
            <div class="mySlides fade">
                <img src="images/place1.jpg" style="width: 100%;height:470px;">
            </div>
            <div class="mySlides fade">
                <img src="images/place2.jpg" style="width:100%;height:470px;">
            </div>
            <div class="mySlides fade">
                <img src="images/place3.jpg" style="width:100%;height:470px;">
            </div>
            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>
        </div>
    </div>
    <!--Banner End-->
    <!-- Who are we? -->
    <div class="about" id="about">
        <h1>Who are we?</h1>
        <div class="about_container" style="padding-left:10px;">
            <br>
            <span class="start_text">Hello</span>,Welcome to Quick Hire. Our company is based on making Students from different college get placed in Top-Rated IT Companies like Infosys, Wipro, Tata Consultancy Services, Capgemini, Reliance Jio, Legato,
            Mphasis, etc.,. We provide opportunity for bright minds to get placed in top brand companies.Placement Cell, it goes without saying that much more has to be aimed at. Raising the level of information â support for the students, wider exposure
            to the industry, enthusing more students to take relevant training courses and inculcating the spirit of entrepreneurship in the student community are the areas that need further intensity.Create account now and get placed soon...<br>
            <pre>
                <h2 style="text-align: center;">We help you "Reach Your Goal"...</h2></pre>
        </div>
    </div>


    <!-- Portfolio -->
    <di>
        <div style="width:100%;font-size:20px;text-align:center;padding-top:15px;height:80px;color:white;background-color: rgb(73, 73, 196);">
            <h1 id="companies">Companies</h1>
        </div>
        <div class="portfolio">

            <div class="container portfolio_container ">
                <div class="project project_1 ">
                    <div class="project_title ">
                        <h1>Tech Mahindra</h1>
                    </div>

                </div>
                <div class="project project_2 ">
                    <div class="project_title ">
                        <h1>Capgemini</h1>
                    </div>

                </div>
                <div class="project project_3 ">
                    <div class="project_title ">
                        <h1>TCS</h1>
                    </div>

                </div>
                <div class="project project_4 ">
                    <div class="project_title ">
                        <h1>Infosys</h1>
                    </div>

                </div>
                <div class="project project_5 ">
                    <div class="project_title ">
                        <h1>Amazon</h1>
                    </div>

                </div>
                <div class="project project_6 ">
                    <div class="project_title ">
                        <h1>Wipro</h1>
                    </div>

                </div>
                <div class="project project_7 ">
                    <div class="project_title ">
                        <h1>Legato</h1>
                    </div>

                </div>
                <div class="project project_8 ">
                    <div class="project_title ">
                        <h1>Jio</h1>
                    </div>

                </div>
            </div>
        </div>
    </di>
    <!-- highlight -->
   
    <!-- css for footer -->
    <div class="footer " id="contact ">
        <div class="container footer_container ">
            <div class="footer_child footer_child_1 ">
                <h1 class="footer_logo ">PlacementCell</h1>
            </div>
            <div class="footer_child ">
                <ul>
                    <li class="first " style="color:white; ">Quick Links</li>
                    <li>
                        <a href="#home ">
                            <p style="color:white; ">Home</p>
                        </a>
                    </li>
                    <li>
                        <a href="#about ">
                            <p style="color:white; ">Aboutus</p>
                        </a>
                    </li>
                    <li>
                        <a href="#Home ">
                            <p style="color:white; ">Login</p>
                        </a>
                    </li>
                    <li>
                        <a href="#companies ">
                            <p style="color:white; ">companies</p>
                        </a>
                    </li>
                    <li>
                        <a href="#contact ">
                            <p style="color:white; ">Contact Us</p>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="footer_child ">
                <ul>
                    <li class="first ">Contact Us</li>
                    <li>29th Street, plot 234 washingTon,USA
                    </li>
                    <li>5647839233</li>
                    <li>info@placementteam.com</li>
                </ul>
            </div>
            <div class="footer_child footer_child_4 ">
                <div class="container social_container ">


                    <a href="https://www.facebook.com/ ">
                        <div class="social_items si1 "></div>
                        <br> </a>

                    <a href="https://www.google.com/ ">
                        <div class="social_items si2 "></div>
                        <br>
                    </a>

                    <a href="https://www.instagram.com/ ">
                        <div class="social_items si3 "></div>
                        <br>
                    </a>


                    <a href="https://www.linkedin.com/ ">
                        <div class="social_items si4 "></div>
                        <br>
                    </a>
                </div>
            </div>
        </div>
        <script>
            var slideIndex = 0;
            showSlides();

            function showSlides() {
                var i;
                var slides = document.getElementsByClassName("mySlides ");
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none ";
                }
                slideIndex++;
                if (slideIndex > slides.length) {
                    slideIndex = 1
                }
                slides[slideIndex - 1].style.display = "block ";
                setTimeout(showSlides, 2000); // Change image every 2 seconds
            }

            function myFunction() {
                document.getElementById("demo ").innerHTML = "To attain knowledge, add things everyday.To attain wisdom, remove things every day. ";
            }
            window.onscroll = function() {
                if (window.pageYOffset > 10) {
                    document.getElementById('header').style.backgroundColor = "rgba(16, 128, 234, 0.7) ";
                } else {
                    document.getElementById('header').style.backgroundColor = "transparent ";
                }
            }
        </script>
</body>

</html>