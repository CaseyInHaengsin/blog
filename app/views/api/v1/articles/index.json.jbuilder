json.each do
json.current do
    json.id @article.id
    json.title @article.title
    json.description @article.description
    json.user_id @article.user_id
end

end