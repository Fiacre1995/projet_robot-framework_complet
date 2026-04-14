from faker import Faker

fake = Faker("fr_FR")

def generate_random_name():
    return fake.name()

def generate_random_email():
    return fake.email()

def generate_random_phone():
    return fake.phone_number()

def generate_title():
    return fake.sentence(nb_words=6)
