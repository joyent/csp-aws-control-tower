resource "aws_organizations_organizational_unit" "mx_division" { 
name = "MX-Division" 
parent_id = "r-xxxx" # organization root
}

resource "aws_organizations_account" "mx_existing_account" { 
account_id = "123456789012" 
name = "mx-project" 
email = "root+mx-project@samsung.com" 
parent_id = aws_organizations_organizational_unit.mx_division.id
}