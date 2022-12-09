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
    expense  TEXT,
    price VARCHAR(30),
    date  DATE
);

INSERT INTO expenses
      (user_id, expense, price, date)
VALUES
     (1,'Netflix', '10.99', '11/1/2022'),
     (1,'Gym', '25.99','11/4/2022'),
     (1,'Amazon Prime', '8.99', '11/1/2022'),
     (1,'Groceries', '200','11/29/2022'),
     (1,'Rent', '1100', '11/1/2022'),
     (1,'Electricity', '130','11/27/2022'),
     (1,'Council Tax', '180', '11/1/2022'),
     (1,'Water', '60','11/4/2022'),
     (1,'Uber Eats', '40', '11/1/2022');
     
     
