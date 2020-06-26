--problem A
SELECT * FROM app_user
LEFT JOIN user_role
ON app_user.role_id = user_role.role_id
WHERE user_role.name = 'BASIC_USER';

--problem B
INSERT INTO app_user(username, PASSWORD, first_name, last_name, role_id)
VALUES ('eliebhauser', 'securepassword', 'Evan', 'Liebhauser', 4);

--problem C
SELECT * FROM app_user
FULL JOIN study_set
ON app_user.user_id = study_set.owner_id
WHERE app_user.user_id = 4;

--problem D
SELECT app_user.username, user_role.name, category.name, flashcard.question, flashcard.answer FROM study_set_card
LEFT JOIN flashcard ON study_set_card.flashcard_id = flashcard.flashcard_id
LEFT JOIN category ON flashcard.category_id = category.category_id
LEFT JOIN study_set ON study_set_card.study_set_id = study_set.study_set_id
LEFT JOIN app_user ON app_user.user_id = study_set.owner_id
LEFT JOIN user_role ON user_role.role_id = app_user.role_id
WHERE study_set.study_set_id = 1;
