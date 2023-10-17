<section>
    <p>Progress test 1</p>
    <p>Time remaining: 60 minutes</p>
    <p>Examing Time: 13:00 pm - 14:00 pm 19-09-2022</p>
    
    <p> Time: 60:00 </p>
    
    <!-- check box -->
    <div class="question">
        <h4>Question text 1</h4>            
        <div>
            In order to fairly set flat rates for auto mechanics, a shop foreman needs to estimate the average time it takes to replace a fuel pump in a car. How large a sample must he select if he wants to be 99% confident that the true average time is within 8 minutes of the sample average? Assume the standard deviation of all times is 21 minutes. Let <span style="font-style: italic;">z</span><sub>0.005</sub> = 2.58.<br>
        </div>
        <div>
            Select one:
        </div>
        <div>
            <div>
                <input type="radio" name="q986691:1_answer" value="0">
                <label for="q986691:1_answer0"><span>a. </span>___</label>
            </div>
            <div>
                <input type="radio" name="q986691:1_answer" value="1">
                <label for="q986691:1_answer1"><span>b. </span>___</label>
            </div>
            <div>
                <input type="radio" name="q986691:1_answer" value="2">
                <label for="q986691:1_answer2"><span>c. </span>___</label>
            </div>
            <div>
                <input type="radio" name="q986691:1_answer" value="3">
                <label for="q986691:1_answer3"><span>d. </span>___</label>
            </div>
        </div>
        <div>
            <button type="button" onclick='clearChoices("radio", "q986691:1_answer")'>Clear Choices</button>
        </div>
    </div>

    <br>
  
    <!-- Multiple choice -->
    <div class="question">
        <h4>Question text 2</h4>
        <div>
            In order to fairly set flat rates for auto mechanics, a shop foreman needs to estimate the average time it takes to replace a fuel pump in a car. How large a sample must he select if he wants to be 99% confident that the true average time is within 8 minutes of the sample average? Assume the standard deviation of all times is 21 minutes. Let <span style="font-style: italic;">z</span><sub>0.005</sub> = 2.58.<br>
        </div>
        <div>
            Select one or more:
        </div>
        <div>
            <div>
                <input type="checkbox" name="q986691:1_answer0" value="0">
                <label for="q986691:1_answer0"><span>a. </span>___</label>
            </div>
            <div>
                <input type="checkbox" name="q986691:1_answer1" value="1">
                <label for="q986691:1_answer1"><span>b. </span>___</label>
            </div>
            <div>
                <input type="checkbox" name="q986691:1_answer2" value="2">
                <label for="q986691:1_answer2"><span>c. </span>___</label>
            </div>
            <div>
                <input type="checkbox" name="q986691:1_answer3" value="3">
                <label for="q986691:1_answer3"><span>d. </span>___</label>
            </div>
        </div>
        <div>
            <button type="button" onclick='clearChoices("checkbox", "q986691:1_answer")'>Clear Choices</button>
        </div>
    </div>

    <br>

    <input type="checkbox" id="agreeCheckbox">
    <label for="agreeCheckbox">I am sure to submit</label>
    <button id="submitButton" style="display: none;">Submit</button>
    <p id="warningMessage" style="display: none; color: red;">Please answer all questions before checking "I am sure to submit."</p>
</section>

<%@include file="/view/lecturer/footer.jsp" %>

<script>
    const questions = document.querySelectorAll('.question');
    const agreeCheckbox = document.getElementById("agreeCheckbox");
    const submitButton = document.getElementById("submitButton");
    const warningMessage = document.getElementById("warningMessage");

    // Function to check if all questions are answered
    function checkQuestionsAnswered() {
        return Array.from(questions).every((question) => {
            const inputs = question.querySelectorAll('input[type="radio"]:checked, input[type="checkbox"]:checked');
            return inputs.length > 0;
        });
    }

    // Function to update submit button visibility
    function updateSubmitButtonVisibility() {
        const isAgreeChecked = agreeCheckbox.checked;
        const isQuestionsAnswered = checkQuestionsAnswered();
        submitButton.style.display = isAgreeChecked && isQuestionsAnswered ? "block" : "none";
        warningMessage.style.display = isAgreeChecked ? (isQuestionsAnswered ? "none" : "block") : "none";
    }

    // Update submit button status when questions change
    for (const question of questions) {
        const inputs = question.querySelectorAll('input[type="radio"], input[type="checkbox"]');
        for (const input of inputs) {
            input.addEventListener("change", updateSubmitButtonVisibility);
        }
    }

    // Update submit button status when the agree checkbox changes
    agreeCheckbox.addEventListener("change", updateSubmitButtonVisibility);

    submitButton.addEventListener("click", function() {
        if (agreeCheckbox.checked && checkQuestionsAnswered()) {
            window.location.href = "exam_detail.jsp";
        } else {
            alert(warningMessage);
        }
    });

    function clearChoices(inputType, namePrefix) {
        const inputs = document.querySelectorAll('input[type="' + inputType + '"][name^="' + namePrefix + '"]');
        inputs.forEach((input) => (input.checked = false));
        agreeCheckbox.checked = false;
        updateSubmitButtonVisibility();
    }
</script>
