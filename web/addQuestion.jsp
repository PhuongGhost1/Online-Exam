
<%@include file="/view/lecturer/header.jsp" %>
<%@include file="/view/lecturer/rightHead.jsp" %>

<section>
    <button class="button1" onclick="javascript:history.go(-1)">>>> Back</button>
    <p class="title1">20 question selected</p>
    <form action="AddQuestion" method="get">
            <input class="addQuesSub" type="submit" value="Add Question">
        <table class="addQuessDo">
            <tr>
                <th>Question ID</th>
                <th>Content</th>
                <th>
                    <input type="checkbox" value="true">
                </th>
            </tr>
            
            <tr>
                <th>Question ID</th>
                <th>Content</th>
                <th>
                    <input type="checkbox" value="true">
                </th>
            </tr>
            
            <tr>
                <th>Question ID</th>
                <th>Content</th>
                <th>
                    <input type="checkbox" value="true">
                </th>
            </tr>
            
            <tr>
                <th>Question ID</th>
                <th>Content</th>
                <th>
                    <input type="checkbox" value="true">
                </th>
            </tr>
            
        </table>
    </form>
</section>

<%@include file="/view/lecturer/footer.jsp" %>

