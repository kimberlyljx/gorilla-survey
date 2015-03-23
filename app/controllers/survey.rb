enable :sessions

# go to survey where they will answer
get '/survey/:survey_id' do
  @survey = Survey.find(params[:survey_id])
  erb :survey
end

# records the response for 'completedsurvey' (which actually the survey the user participated in)
post '/answer' do
  cs = CompletedSurvey.create(user_id: session[:user_id], survey_id: params[:survey_id])
  params["choices"].each do |z|
    a_new = Response.create(completed_survey_id: cs.id, choice_id: z[0].to_i , question_id: z[1].chars.first.to_i)
  end
  erb :index
end

post '/create' do
  i = 0
  s_new = Survey.create(user_id: session[:user_id], title: params[:title])
  params["questions"].each do |q|
    q_new = Question.create(survey_id: s_new.id, body: q[1])
    params["choices"][i.to_s].each do |c|
      Choice.create(question_id:q_new.id, body:c[1]);
    end
    i += 1
  end
  
  @photo = Photo.new(survey_id: s_new.id)
  @photo.file = params[:image]
  @photo.caption = params[:photo][:caption]
  @photo.save
  redirect to ('/survey/' << s_new.id.to_s)
end

get '/completed/:completed_survey_id' do
  @completed_survey = CompletedSurvey.find(params[:completed_survey_id])
  erb :completed
end