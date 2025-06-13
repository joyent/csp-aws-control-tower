import boto3

def get_all_ous(parent_id, indent=""):
    client = boto3.client('organizations')
    response = client.list_organizational_units_for_parent(ParentId=parent_id)
    
    for ou in response['OrganizationalUnits']:
        print(f"{ou['Id']}\t{indent}{ou['Name']}")
        get_all_ous(ou['Id'], indent + "  ")

def main():
    client = boto3.client('organizations')
    roots = client.list_roots()
    root_id = roots['Roots'][0]['Id']
    get_all_ous(root_id)

if __name__ == "__main__":
    main()