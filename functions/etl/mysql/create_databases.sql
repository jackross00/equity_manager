/* using loose datavault methodology */
CREATE DATABASE staging;
CREATE DATABASE data;

USE staging;

CREATE TABLE stg_holdings (
    portfolio varchar(255),
    ticker varchar(255),
    amount varchar(255)
);

USE data;

CREATE TABLE hub_ticker (
    ticker_seq int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ticker varchar(255) NOT NULL,
    source varchar(255),
    load_date timestamp NOT NULL
);

CREATE TABLE hub_portfolio (
    portfolio_seq int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    portfolio_name varchar(255) NOT NULL,
    source varchar(255),
    load_date timestamp NOT NULL
);

CREATE TABLE sat_ticker (
    ticker_seq int NOT NULL,
    company_name varchar(255),
    sector varchar(255),
    industry varchar(255),
    exchange varchar(255),
    description varchar(2000),
    load_date timestamp NOT NULL
);

CREATE TABLE sat_portfolio (
    portfolio_seq int NOT NULL,
    description varchar(2000),
    strategy varchar(255),
    risk_type varchar(255),
    load_date timestamp NOT NULL
);

CREATE TABLE lnk_ticker_overview (
    ticker_seq int NOT NULL,
    market_date date NOT NULL,
    dividend decimal(19,2),
    dividend_yield decimal(19,4),
    market_cap int,
    eps decimal(19,2),
    peg_ratio decimal(19,3),
    beta decimal(19,3),
    52week_high decimal(19,2),
    52week_low decimal(19,2),
    50day_moving_avg decimal(19,2),
    200day_moving_avg decimal(19,2),
    load_date timestamp NOT NULL
);

CREATE TABLE lnk_ticker_daily_adjusted (
    ticker_seq int NOT NULL,
    market_date date NOT NULL,
    open decimal(19,2),
    high decimal(19,2),
    low decimal(19,2),
    close decimal(19,2),
    adjusted_close decimal(19,2),
    volume int,
    dividend_amount decimal(19,2),
    split_coefficient decimal(19,2),
    load_date timestamp NOT NULL
);
