<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Electrical Shopee</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        nav{
            width: 100%;
            height: 50px;
            background-color: #e2e2e275;
            display: flex;
            align-items: center;
            justify-content: space-between;  
            padding: 0 2rem;          
        }
        section{
        	padding : 20px;
        }
        .center-y{
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .center-x{
            display: flex;
            justify-content: center;    
            gap: 2rem;        
        }
        .center-y-even{
            display: flex;
            justify-content: space-evenly;  
            align-items: center;
        }
        .center{
            display: flex;
            align-items: center;
            text-align: center;
            gap: 10px;
        }
        .verticalLine{
            background-color: rgba(5, 1, 1, 0.745);
            width: 1px;
            height: 20px;
        }
        .search-btn-div{
            display: flex;
            gap: 0;
            height: 50px;  
            width: 300px;                      
        }
        .search-box{
            width: 80%;
            border: 0.5px solid rgba(0, 0, 0, 0.29);
            border-radius: 0px;
            padding-left: 8px;
            font-size: medium;
        }
        .search-box:focus{
            outline: none;
        }
        .search-btn{
            background-color: red;
            color: white;
            font-weight: bold;
            font-size: large;
            padding: 0 1.4rem;    
            border: none;    
        }
        #OES_logo{
        	height : 100%;        	
        }
        .header-2{
            flex: 1 1 1;
        }
        .header-2-left{
        	height : 50px;
            width: 20%;
        }
        .header-2-middle{
            width: 60%;
        }
        .header-2-right{
            width: 20%;
        }
        .header-2-middle p{
            font-weight: bold;
            margin-left: 2rem;
        }
        .all-catogories-div{           
            width: 230px;
        }
        .hero-section-right{
            width: calc(100% - 230px);
            display: flex;
            flex-direction: column;
        }
        .hero-section-right-top{
            display: flex;
            gap: 1.5rem;
        }
        .serach-product{
            width: 80%;
        }
        .user-info{
            display: flex;
            width: 20%;
        }
        .all-catogories-div td, th{
            padding: 1px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid rgba(0, 0, 0, 0.397);
            padding: 10px;
            text-align: left;
            vertical-align: middle;
        }
        th{
            color: white;
            background-color: red;
        }
        td{
            height: 50px;
             padding:0 15px !important; 
            font-size: large;
        }
        .all-product-header{
            background-color: red;
            color: white;
            font-size: larger;
            font-weight: bold;
            text-align: center;
            padding: 10px;
        }
        .latest-product-heading{
            background-color: red; 
        }
        .latest-product-heading p{
            background-color: rgb(20, 2, 2);
            color: white;
            font-size: larger;
            font-weight: bold;
            text-align: center;
            padding: 10px;
            width: 220px;
            margin: auto;
        }
        footer{
            background-color: rgba(177, 168, 168, 0.204);
            padding: 1rem 2rem;
            display: flex;
            justify-content: space-between;
            
        }
        .footer-child{
            width: 30%;
        }
        .footer-headings{
            font-weight: bold;
            font-size: large;
            padding-bottom: 1rem;
        }
        
        .userful-links-content{
            width: 70%;           
            font-size: medium;
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(120px, 1fr));
            grid-auto-rows: minmax(50px auto);
            column-gap: 10px;
            row-gap: 20px;
        }
        .footer-child{
            font-size: medium;
        }
        .latest-product-list{
            display: flex;
            flex-wrap: wrap;
        }
        .product-div{
            width: 230px;
            height: 500px;
            background-color: yellow;
            margin: 2rem;
            padding: 2rem;
        }
        .product-img{

        }
        
        

    </style>
</head>
<body>
    <nav>
        <div class="left-nav center">
            <p>email : sunil@gmail.com</p>
            <div class="verticalLine"></div>
            <p>Free Shipping for all order of Rs. 999.00+</p>
        </div>
       
        <div class="right-nav center">
            <p>facebook</p>
            <p>linkden</p>
            <p>insta</p>
            <div class="verticalLine"></div>
            <p>Login</p>
            <p>Register</p>
        </div>
    </nav>

    <section class="header-2 center-y">
        <div class="header-2-left">
            <img id="OES_logo" src="<c:url value="/img/logo/OES_logo.jpg" />" alt="OES_LOGO">
        </div>
        <div class="header-2-middle  center-y">
            <p>HOME</p>
            <P>SHOP</P>
            <P>BLOGS</P>
        </div>
        <div class="header-2-right center-y">
            <p>like</p>
            <p>cart</p>
            <p>items : Rs. 00.00</p>
        </div>
    </section>

    <section class="hero-section center-x">
        <div class="all-catogories-div">
            <table>
                <thead>
                    <th>All Categories</th>
                </thead>
                <tbody id="all-catogories-list">
                   
                </tbody>
                
            </table>
        </div>
        <div class="hero-section-right">
            <div class="hero-section-right-top">
                <div class="serach-product search-btn-div">
                    <input type="text" class="search-box" placeholder="What do you need?">
                    <button type="submit" class="search-btn">Submit</button>
                </div>
                <div class="user-info">
                    <img src="" alt="">
                    <p>Welcome : <br> USER </p>
                </div>
            </div>
            <div class="hero-section-right-bottom">
                <img src="" alt="">
            </div>
        </div>
    </section>

    <section class="categories__slider">

    </section>
    <section>
        <div class="all-product-header">
            <p>ALL PRODUCTS</p>        
        </div>
        <div class="services-div">
            <div class="service-div-1"></div>
            <div class="service-div-2"></div>
            <div class="service-div-3"></div>
            <div class="service-div-4"></div>        
        </div>
    </section>
    <section>
        <div class="latest-product-div">
            <div class="latest-product-heading">
                <p>LATEST PRODUCT</p>
            </div>
            <div class="latest-product-list" id="latest-product-list">                
            </div>
        </div>
    </section>

    <footer>
        <div class="address-div footer-child">
            <p class="footer-headings">Address</p>
            <p class="footer-content">LAXMAN BHAWAN LAL IMI SUQARE, METHRO STATION ROAD, behind SAHU HOSPITAL AGRESEN SQUARE, GANDHIBAGH, NAGPUR, MAHARASHTRA Email: sanjaybangre.com</p>
        </div>
        <div class="useful-links-div footer-child">
            <p class="footer-headings">Userfuk Links</p>
            <div class="userful-links-content">                
                <p>About Us </p>
                <p>About Our Shop</p>
                <p>Secure Shopping </p>
                <p>Delivery infomation</p>
                <p>Privacy Policy</p>                 
                <p>Who We Are</p>
                <p>Our Services</p>
                <p>Contact</p>
                <p>Testimony</p>
            </div> 
        </div>
        <div class="join-us-div footer-child">
            <div class="join-us-div-text">
                <p>Get E-mail updates about our latest products and special offers</p>
            </div>
            <div class="join-us-div-email">
                <input type="text" placeholder="Enter Your mail">
            </div>
            <div class="join-us-div-links ">
                <p>facebook</p>
                <p>insta</p>
                <p>Linkden</p>
            </div>
        </div>
    </footer> 
    <script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>  
    <script type="text/javascript" src=" <c:url value="js/AjaxUtility.js" /> "></script>    
    <script type="text/javascript" src=" <c:url value="js/index.js" /> "></script>
</body>
</html>