@user_1 = User.create(username: "kim", password: "123")

@survey_1 = Survey.create(title: "Which is the best pet?")

@user_1.surveys << @survey_1

@question_1 = Question.create(body: "Cat or Dog?")

@survey_1.questions << @question_1

@choice_1 = Choice.create(body: "Cat")
@choice_2 = Choice.create(body: "Dog")

@question_1.choices << @choice_1
@question_1.choices << @choice_2

@completed_survey_1 = CompletedSurvey.create

@user_1.completed_surveys << @completed_survey_1
@survey_1.completed_surveys << @completed_survey_1

@response_1 = Response.create

@completed_survey_1.responses << @response_1

@question_1.responses << @response_1

@choice_1.responses << @response_1

