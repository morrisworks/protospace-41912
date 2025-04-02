# README


---

## users

| Column 		|Type		| Options                    |
| -------------------	| ------------	| ---------------------------|
| email  		| string	| null: false, unique: true	|
| encryped_password	| string	| null: false			|
| name			| string	| null: false			|
| profile		| text		| null: false			|
| occupation		| text		| null: false			|
| position		| string	| null: false			|


### Association
- has_many :prototypes
- has_many :comments



---

## prototypes

| Column 		|Type		| Options                    		|
| -------------------	| ------------	| ---------------------------		|
| title 		| string	| null: false				|
| catch_copy		| text		| null: false				|
| concept		| text		| null: false				|
| user			| references	| null: false, foreign_key: true	|


### Association
- belongs_to :user
- has_many :comments


---

## comments

| Column 		|Type		| Options                       	|
| -------------------	| ------------	| ------------------------------	|
| content  		| text		| null: true				|
| protptype		| references	| null: false, foreign_key: true	|
| user			| references	| null: false, foreign_key: true	|

### Association
- belongs_to :user
- belongs_to :prototype




