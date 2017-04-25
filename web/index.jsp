<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : Jan 25, 2017, 3:54:31 PM
    Author     : samuel.swayze
--%>

<sql:query var="categories" dataSource="jdbc/friendlyfarmer">
    SELECT * FROM category
</sql:query>

    <div id="indexLeftColumn">
        <div id="welcomeText">
            <p>[ welcome text ]</p>
        </div>
    </div>

    <div id="indexRightColumn">
        <c:forEach var="category" items="${categories.rows}">
            <div class="categoryBox">
                <a href="category?${category.id}">
                    
                    <span class="categoryLabelText">${category.name}</span>
                    
                    <img src="${initParam.categoryImagePath}${category.name}.jpg"
                         alt="${category.name}">
                    
                </a>
            </div>
        </c:forEach>
        
        <!--
        <div class="categoryBox">
            <a href="#">
                <span class="categoryLabelText">dairy</span>
            </a>
        </div>
        <div class="categoryBox">
            <a href="#">
                <span class="categoryLabelText">meats</span>
            </a>
        </div>
        <div class="categoryBox">
            <a href="#">
                <span class="categoryLabelText">bakery</span>
            </a>
        </div>
        <div class="categoryBox">
            <a href="#">
                <span class="categoryLabelText">fruit & veg</span>
            </a>
        </div>
        -->
    </div>