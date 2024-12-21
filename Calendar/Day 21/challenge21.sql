WITH 
RecipientWeight AS (    
    SELECT
    recipient_type,
    SUM(weight_kg) AS total_weight
    FROM gifts
    GROUP BY recipient_type
),
TotalWeight AS (
    SELECT
    SUM(total_weight) AS total_weight_recipient
    FROM RecipientWeight
)
SELECT 
    RecipientWeight.recipient_type,
    RecipientWeight.total_weight,
    RecipientWeight.total_weight * 100 / TotalWeight.total_weight_recipient AS weight_percentage
FROM RecipientWeight, TotalWeight;
