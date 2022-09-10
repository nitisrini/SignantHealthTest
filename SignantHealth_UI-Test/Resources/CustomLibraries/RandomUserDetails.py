from faker import Faker


def generate_random_user_details():
    fake = Faker()

    firstname = fake.first_name()
    familyname = fake.last_name()
    phone = fake.phone_number()
    username = firstname + str(fake.random_int(max=9999))
    password = fake.password(length=8)

    user_details = {
        'username': username,
        'password': password,
        'firstname': firstname,
        'familyname': familyname,
        'phone': phone
    }

    return user_details
