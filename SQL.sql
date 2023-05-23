CREATE TABLE users(
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    first_name TEXT,
    last_name  TEXT
);

INSERT INTO users
      (first_name, last_name)
VALUES
     ('Mohamed', 'Abdi'),
     ('Federica', 'Costantino');

CREATE TABLE expenses(
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    user_id INTEGER REFERENCES users(id),
    category TEXT,
    expense  TEXT,
    price VARCHAR(30),
    date  DATE
);

INSERT INTO expenses
      (user_id, category, expense, price, date)
VALUES
     (1, 'Entertainment', 'Netflix', '10.99', '11/1/2022'),
     (1, 'Health/Fitness', 'Gym', '25.99','11/4/2022'),
     (1,'Entertainment','Amazon Prime', '8.99', '11/1/2022'),
     (1,'Food','Groceries', '200','11/29/2022'),
     (1,'Housing/ Utilities','Rent', '1100', '11/1/2022'),
     (1,'Housing/ Utilities','Electricity', '130','11/27/2022'),
     (1,'Housing/ Utilities','Council Tax', '180', '11/1/2022'),
     (1,'Housing/ Utilities','Water', '60','11/4/2022'),
     (1,'Food','Uber Eats', '40', '11/1/2022');
     