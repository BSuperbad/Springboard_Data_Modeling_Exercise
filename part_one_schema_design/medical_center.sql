CREATE TABLE diseases (
    id SERIAL PRIMARY KEY,
    name TEXT   NOT NULL
);


CREATE TABLE diagnoses (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    disease_id INTEGER REFERENCES diseases ON DELETE CASCADE
);

CREATE TABLE doctors (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    specialization string NOT NULL,
    patient_id INTEGER REFERENCES users
);

CREATE TABLE patients (
    id SERIAL PRIMARY KEY,
    name TEXT   NOT NULL,
    date_of_birth DATE,
    doctor_id INTEGER REFERENCES doctors,
    diagnosis_id INTEGER REFERENCES diagnoses ON DELETE CASCADE,
    disease_id INTEGER REFERENCES diseases ON DELETE CASCADE
);




CREATE INDEX doctor_name ON doctors (name);
CREATE INDEX patient_name ON patients (name);
CREATE INDEX diagnosis_name ON diagnoses (name);
CREATE INDEX disease_name ON diseases (name);



