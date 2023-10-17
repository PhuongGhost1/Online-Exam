<%@include file="/view/lecturer/header.jsp" %>
<%@include file="/view/lecturer/rightHead.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<section>
    <p></p>
    <c:forEach var="l" items="${listLec}">
    <div id="page">
        <div id="page-header" class="row">
            <div class="pt-3 pb-3">
                <div class="card ">
                    <div class="card-body ">
                        <div>
                            <div class="mr-auto">
                                <div class="page-context-header">
                                    <div class="page-header-image">
                                        <img src="images/329326992_711765243975851_1360031012412964693_n.jpg" width="150" height="150" alt="">
                                    </div>
                                    <div class="page-header-headings">
                                        <h1>${l.getFullname()}</h1>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="d-flex flex-wrap">
                            <div id="page-navbar">
                                <nav aria-label="Navigation bar">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item">
                                            <a href="">Home  /</a>
                                        </li>
                                        <li class="breadcrumb-item">
                                            <a href="">Dashboard  /</a>
                                        </li>
                                        <li class="breadcrumb-item">
                                            <a href="">Profile</a>
                                        </li>
                                     </ol>
                                </nav>
                            </div>
                            <div class="ml-auto d-flex"></div>
                            <div id="course-header"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="page-content" class="row pb-3 d-print-block">
            <div id="region-main-box" class="col-12">
                <div id="region-main">
                    <span id="user-notifications"></span>
                    <div role="main">
                        <span id="maincontent"></span>
                        <div class="userprofile">
                            <aside data-blockregion="content" data-droptarget="1"></aside>
                            <div>
                                <div class="node_category">
                                    <div class="card-body1">
                                        <h3 class="lead">User details</h3>
                                        <ul>
                                            <li class="contentnode">
                                                <dl>
                                                    <dt>Email address</dt>
                                                    <dd>
                                                        <a href="">${l.getEmail()}</a> (Visible to other course participants)
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li class="contentnode">
                                                <dl>
                                                    <dt>Country</dt>
                                                    <dd>Viet Nam</dd>
                                                </dl>
                                            </li>
                                            <li class="contentnode">
                                                <dl>
                                                    <dt>City/town</dt>
                                                    <dd>Da Nang</dd>
                                                </dl>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="node_category">
                                    <div class="card-body2">
                                        <h3 class="lead">Course details</h3>
                                        <ul>
                                            <li class="contentnode">
                                                <dl>
                                                    <dt>Course profiles</dt>
                                                    <dd>
                                                        <ul>
                                                            <li>
                                                                <a href="">Exam Test</a>
                                                            </li>
                                                            <li>
                                                                <a href="">CSD201 - Summer2023 - Data Structures and Algorithm</a>
                                                            </li>
                                                            <li>
                                                                <a href="">PRF192 - Summer2023 - Programming Fundamentals (Session 2)</a>
                                                            </li>
                                                            <li>
                                                                <a href="">DBI202 - Summer2023 - Database Systems (Session 1)</a>
                                                            </li>
                                                            <li>
                                                                <a href="">Placement Test 2021</a>
                                                            </li>
                                                            <li>
                                                                <a href="">TrinhVQ-FA22-PRF192-Programming Fundamentals</a>
                                                            </li>
                                                            <li>
                                                                <a href="">LongNQ9-FA22-CSI104-Introduction to Computer Science</a>
                                                            </li>
                                                            <li>
                                                                <a href="">DienNV13-FA22-CEA201-Computer Organization and Architecture</a>
                                                            </li>
                                                            <li>
                                                                <a href="">TrangPTM7-SP23-PRO192-Object-Oriented Programming</a>
                                                            </li>
                                                            <li>
                                                                <a href="">HongPTT11-SP23-OSG202-Operating System</a>
                                                            </li>
                                                            <li class="viewmore">
                                                                <a title="View more" href="">View more</a>
                                                            </li>
                                                        </ul>
                                                    </dd>
                                                </dl>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="node_category1">
                                    <div class="card-body3">
                                        <h3 class="lead">Miscellaneous</h3>
                                        <ul>
                                            <li class="contentnode">
                                                <span>
                                                    <a href="">Forum posts</a>
                                                </span>
                                            </li>
                                            <li class="contentnode">
                                                <span>
                                                    <a href="">Forum discussions</a>
                                                </span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="node_category1">
                                    <div class="card-body3">
                                        <h3 class="lead">Reports</h3>
                                        <ul>
                                            <li class="contentnode">
                                                <span>
                                                    <a href="">Grades overview</a>
                                                </span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="node_category1">
                                    <div class="card-body3">
                                        <h3 class="lead">Login activity</h3>
                                        <ul>
                                            <li class="contentnode">
                                                <dl>
                                                    <dt>First access to site</dt>
                                                    <dd>Thursday, 23 September 2021, 4:10 PM&nbsp; (2 years 21 days)</dd>
                                                </dl>
                                            </li>
                                            <li class="contentnode">
                                                <dl>
                                                    <dt>Last access to site</dt>
                                                    <dd>Sunday, 15 October 2023, 1:51 PM&nbsp; (18 secs)</dd>
                                                </dl>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </c:forEach>
    </div>
</section>

<%@include file="/view/lecturer/footer.jsp" %>
