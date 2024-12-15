SELECT name, COUNT(child_id) AS total_number_of_children
FROM family_members
INNER JOIN parent_child_relationships ON family_members.member_id = parent_child_relationships.parent_id
GROUP BY name
ORDER BY total_number_of_children DESC
LIMIT 3;
