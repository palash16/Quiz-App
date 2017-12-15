json.extract! question, :id, :title, :subgenre_id, :op1, :op2, :op3, :op4, :answer, :created_at, :updated_at
json.url question_url(question, format: :json)
