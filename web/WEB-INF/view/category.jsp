<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : category
    Created on : Jan 25, 2017, 3:52:39 PM
    Author     : samuel.swayze
--%>

<sql:query var="categories" dataSource="jdbc/friendlyfarmer">
    SELECT * FROM category
</sql:query>
    
<sql:query var="selectedCategory" dataSource="jdbc/friendlyfarmer">
    SELECT name FROM category WHERE id = ?
    <sql:param value="${pageContext.request.queryString}"/>
</sql:query>    
    
<sql:query var="categoryProducts" dataSource="jdbc/friendlyfarmer">
    SELECT * FROM product WHERE category_id = ?
    <sql:param value="${pageContext.request.queryString}"/>
</sql:query>
        

    <div class="catsAndProducts">

        <p class="selectCat">${selectedCategory.rows[0].name}</p>

        <div id="leftCatCol">
            <c:forEach var="category" items="${categories.rows}">
                
                <c:choose>
                    <c:when test="${category.id == pageContext.request.queryString}">
                        <div class="categoryButton" id="selectedCategory">
                            <span class="categoryText">
                                ${category.name}
                            </span>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <a href="category?${category.id}" class="categoryButton">
                            <div class="categoryText">
                                ${category.name}
                            </div>
                        </a>
                    </c:otherwise>
                </c:choose>
                
            </c:forEach>
            
            <!--
            <ul>
                <li><a href="#" class="active">dairy</a></li>
                <li><a href="#">meats</a></li>
                <li><a href="#">bakery</a></li>
                <li><a href="#">fruit & veg</a></li>
            </ul>
            -->
        </div>

        <table id="productTable">
            
            <c:forEach var="product" items="${categoryProducts.rows}" varStatus="iter">
                
                <tr class="${((iter.index % 2) == 0) ? 'lightBlue' : 'white'}">
                    <td>
                        <img src="${initParam.productImagePath}${product.name}.png"
                             alt="${product.name}">
                    </td>
                    <td>
                        ${product.name}
                        <br>
                        <span class="smallText">${product.description}</span>
                    </td>
                    <td>
                        &euro; ${product.price} / unit
                    </td>
                    <td>
                        <form action="addToCart" method="post">
                            <input type="hidden"
                                   name="productId"
                                   value="${product.id}">
                            <input type="submit"
                                   value="add to cart">
                        </form>
                    </td>
                </tr>
                
            </c:forEach>
            
        </table>
        
        <!--
        <div id="productList">
            <div class="productRow">
                <img src="#" class="productImage" alt="product image">

                <div class="nameDescription">
                    [ product name ]
                    <div class="productDescription">
                        [ product description ]
                    </div>
                </div>

                <div class="price">
                    [ price ]
                </div>

                <input type="button" value="purchase button" class="purchaseButton">
            </div>
            <div class="productRow">
                <img src="#" class="productImage" alt="product image">

                <div class="nameDescription">
                    <h4>[ product name ]</h4>
                    <div class="productDescription">
                        [ product description ]
                    </div>
                </div>

                <div class="price">
                    [ price ]
                </div>

                <input type="button" value="purchase button" class="purchaseButton">
            </div>
            <div class="productRow">
                <img src="#" class="productImage" alt="product image">

                <div class="nameDescription">
                    <h4>[ product name ]</h4>
                    <div class="productDescription">
                        [ product description ]
                    </div>
                </div>

                <div class="price">
                    [ price ]
                </div>

                <input type="button" value="purchase button" class="purchaseButton">
            </div>
            <div class="productRow">
                <img src="#" class="productImage" alt="product image">

                <div class="nameDescription">
                    <h4>[ product name ]</h4>
                    <div class="productDescription">
                        [ product description ]
                    </div>
                </div>

                <div class="price">
                    [ price ]
                </div>

                <input type="button" value="purchase button" class="purchaseButton">
            </div>
        </div>
        -->

    </div>
