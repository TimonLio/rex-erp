--
-- PostgreSQL database dump
--

-- Started on 2009-02-27 20:23:32

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = erp, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 1491 (class 1259 OID 16523)
-- Dependencies: 1771 6
-- Name: sell; Type: TABLE; Schema: erp; Owner: erp; Tablespace: 
--

CREATE TABLE sell (
    id integer NOT NULL,
    customer_name character varying(64) NOT NULL,
    customer_address character varying(128) NOT NULL,
    customer_phone1 character varying(64) NOT NULL,
    customer_phone2 character varying(64) NOT NULL,
    customer_postcode character varying(6) NOT NULL,
    fee real NOT NULL,
    fee_real real NOT NULL,
    create_date timestamp without time zone NOT NULL,
    express_id integer NOT NULL,
    sender character varying(8) NOT NULL,
    status integer NOT NULL,
    comment_express character varying(64) NOT NULL,
    comment_invoice character varying(64) NOT NULL,
    send_date date NOT NULL,
    customer_im character varying(64) NOT NULL,
    customer_im_type integer DEFAULT 0 NOT NULL,
    customer_im_comment character varying(64) NOT NULL
);


ALTER TABLE erp.sell OWNER TO erp;

--
-- TOC entry 1498 (class 1259 OID 16558)
-- Dependencies: 1491 6
-- Name: sell_id_seq; Type: SEQUENCE; Schema: erp; Owner: erp
--

CREATE SEQUENCE sell_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE erp.sell_id_seq OWNER TO erp;

--
-- TOC entry 1779 (class 0 OID 0)
-- Dependencies: 1498
-- Name: sell_id_seq; Type: SEQUENCE OWNED BY; Schema: erp; Owner: erp
--

ALTER SEQUENCE sell_id_seq OWNED BY sell.id;


--
-- TOC entry 1772 (class 2604 OID 16568)
-- Dependencies: 1498 1491
-- Name: id; Type: DEFAULT; Schema: erp; Owner: erp
--

ALTER TABLE sell ALTER COLUMN id SET DEFAULT nextval('sell_id_seq'::regclass);


--
-- TOC entry 1775 (class 2606 OID 16579)
-- Dependencies: 1491 1491
-- Name: sell_p_key; Type: CONSTRAINT; Schema: erp; Owner: erp; Tablespace: 
--

ALTER TABLE ONLY sell
    ADD CONSTRAINT sell_p_key PRIMARY KEY (id);


--
-- TOC entry 1773 (class 1259 OID 16589)
-- Dependencies: 1491
-- Name: sell_date; Type: INDEX; Schema: erp; Owner: erp; Tablespace: 
--

CREATE INDEX sell_date ON sell USING btree (create_date);


--
-- TOC entry 1776 (class 1259 OID 16591)
-- Dependencies: 1491
-- Name: sell_status; Type: INDEX; Schema: erp; Owner: erp; Tablespace: 
--

CREATE INDEX sell_status ON sell USING btree (status);


-- Completed on 2009-02-27 20:23:33

--
-- PostgreSQL database dump complete
--

