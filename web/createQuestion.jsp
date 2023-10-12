
<%@include file="/view/lecturer/header.jsp" %>
<%@include file="/view/lecturer/rightHead.jsp" %>

<section>
    <button class="button2" onclick="javascript:history.go(-1)" ><< Back to question bank</button>  
    <form action="CreateQuestion" method="get">
        <table class="createQues">
            
            <tr>
                <th>LO</th>
                <td>
                    <select onchange="sendRedictLO(this)">
                        <option value="">PRJ301</option>
                        <option value="">MAS291</option>
                        <option value="">JPD123</option>
                        <option value="">IOT102</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>Question ID</th>
                <td>
                    PRJ301.Q0001
                </td>
            </tr>
            <tr>
                <th>Content of question</th>
                <td>
                    In the following Java code, how many variables are mentioned?
                </td>
            </tr>
            <tr>
                <th>Difficulty</th>
                <td>
                    Medium
                </td>
            </tr>
            <tr>
                <th>Type of question</th>
                <td>
                    <input type="checkbox" value="forPractice">For Practice
                    <input type="checkbox" value="forExam">For Exam
                </td>
            </tr>
            <tr>
                <th>Attachment</th>
                <td>
                    <img src="images/teacher.png" alt="Logo teacher"/>
                </td>
            </tr>
            <tr>
                <th>Answer</th>
                <td>
                    <div class="checkbox-container">
                        <input type="checkbox" id="answer1" value="Answer 1">
                        <label for="answer1" class="custom-checkbox">Answer 1</label>
                    </div>

                    <div class="checkbox-container">
                        <input type="checkbox" id="answer2" value="Answer 2">
                        <label for="answer2" class="custom-checkbox">Answer 2</label>
                    </div>

                    <div class="checkbox-container">
                        <input type="checkbox" id="answer3" value="Answer 3">
                        <label for="answer3" class="custom-checkbox">Answer 3</label>
                    </div>
                    
                    <div class="checkbox-container">
                        <input type="checkbox" id="answer4" value="Answer 4">
                        <label for="answer4" class="custom-checkbox">Answer 4</label>
                    </div>
                </td>
            </tr>
        </table>
        
        <input class="saveQues changeT1" type="submit" value="Save">
        <input class="saveQues changeT2" type="submit" value="Discard Question">
    </form>
</section>

<%@include file="/view/lecturer/footer.jsp" %>

