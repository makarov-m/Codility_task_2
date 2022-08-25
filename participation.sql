drop table if exists public.participation;

create table public.participation
(
	name varchar(30) not null,
	year integer not null,
	unique(name, year)
);

INSERT INTO public.participation (name,year) VALUES
('John', 2003),
('Lyla', 1994),
('Faith', 1996),
('John', 2002),
('Carol', 2000),
('Carol', 1999),
('John', 2001),
('Carol', 2002),
('Lyla', 1996),
('Lyla', 1997),
('Carol', 2001),
('Carol', 2009);