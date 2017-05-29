# DATABASE

## companies table  

|Column|Type|Options|  
|:--------|:------|:------------------------|  
|name     |string |null: false, unique: true,  index: true|

## assosiation
has_many: stories 
has_many: groups,through: :company_groups  

## groups table  

|Column|Type|Options|  
|:--------|:------|:------------------------|  
|name     |string |null: false, unique: true|

## assosiation
has_many: stories  
has_many: companies,through: :company_groups  

## stories table  

|Column|Type|Options|  
|:--------|:------|:----------|  
|body     |text   ||
|image    |string ||
|company_id  |references|null: false, foreign_key: true|
|group_id |references|null: false, foreign_key: true|

## assosiation
belongs_to: companies  
belongs_to: groups  
 
## company_groups table  

|Column|Type|Options|  
|:--------|:------|:----------|  
|company_id  |references|null: false, foreign_key: true|
|group_id |references|null: false, foreign_key: true|

## assosiation
belongs_to: companies  
belongs_to: groups  
