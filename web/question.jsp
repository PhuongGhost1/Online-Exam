<%@include file="/view/lecturer/header.jsp" %>
<%@include file="/view/lecturer/rightHead.jsp" %>

<section>
    <label class="avaQuestion">
        <a href="avaQuestion.jsp" >Available Question</a>
    </label>
    <label class="questionTotal">Total question: 200</label>
    <label class="createQuestion">
         <a href="createQuestion.jsp" >Create Question</a>
    </label>
    
    <form action="ListQuestionServlet" method="get">
        <table class="questionBank">
            <tr>
                <td>1</td>
                <td>Question ID</td>
                <td>Subject ID</td>
                <td>Content of question</td>
                <td>
                    <a class="editQuess" href="editQues.jsp">Edit</a>
                </td>
            </tr>
            
            <tr>
                <td>2</td>
                <td>Question ID</td>
                <td>Subject ID</td>
                <td>Content of question</td>
                <td>
                    <a href="editQues.jsp">Edit</a>
                </td>
            </tr>
            
            <tr>
                <td>3</td>
                <td>Question ID</td>
                <td>Subject ID</td>
                <td>Content of question</td>
                <td>
                    <a href="editQues.jsp">Edit</a>
                </td>
            </tr>
            
            <tr>
                <td>4</td>
                <td>Question ID</td>
                <td>Subject ID</td>
                <td>Content of question</td>
                <td>
                    <a href="editQues.jsp">Edit</a>
                </td>
            </tr>
        </table>
    </form>
</section>

<%@include file="/view/lecturer/footer.jsp" %>