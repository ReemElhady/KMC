--
-- PostgreSQL database dump
--

-- Dumped from database version 10.23
-- Dumped by pg_dump version 10.23

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: FAQ_faq; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."FAQ_faq" (
    id integer NOT NULL,
    question character varying(500) NOT NULL,
    answer text NOT NULL
);


ALTER TABLE public."FAQ_faq" OWNER TO postgres;

--
-- Name: FAQ_faq_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."FAQ_faq_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."FAQ_faq_id_seq" OWNER TO postgres;

--
-- Name: FAQ_faq_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."FAQ_faq_id_seq" OWNED BY public."FAQ_faq".id;


--
-- Name: about_us_aboutus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.about_us_aboutus (
    id integer NOT NULL,
    about_title character varying(255) NOT NULL,
    about_text text NOT NULL,
    about_image character varying(100) NOT NULL,
    testimonial_title character varying(255) NOT NULL,
    testimonial_subtitle text NOT NULL,
    testimonial_image character varying(100) NOT NULL
);


ALTER TABLE public.about_us_aboutus OWNER TO postgres;

--
-- Name: about_us_aboutus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.about_us_aboutus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.about_us_aboutus_id_seq OWNER TO postgres;

--
-- Name: about_us_aboutus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.about_us_aboutus_id_seq OWNED BY public.about_us_aboutus.id;


--
-- Name: about_us_aboutusstatistics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.about_us_aboutusstatistics (
    id integer NOT NULL,
    sav character varying(100) NOT NULL,
    number integer NOT NULL,
    text character varying(255) NOT NULL,
    about_us_id integer NOT NULL
);


ALTER TABLE public.about_us_aboutusstatistics OWNER TO postgres;

--
-- Name: about_us_aboutusstatistics_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.about_us_aboutusstatistics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.about_us_aboutusstatistics_id_seq OWNER TO postgres;

--
-- Name: about_us_aboutusstatistics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.about_us_aboutusstatistics_id_seq OWNED BY public.about_us_aboutusstatistics.id;


--
-- Name: about_us_testimonial; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.about_us_testimonial (
    id integer NOT NULL,
    about_us_id integer NOT NULL,
    image character varying(100) NOT NULL
);


ALTER TABLE public.about_us_testimonial OWNER TO postgres;

--
-- Name: about_us_testimonial_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.about_us_testimonial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.about_us_testimonial_id_seq OWNER TO postgres;

--
-- Name: about_us_testimonial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.about_us_testimonial_id_seq OWNED BY public.about_us_testimonial.id;


--
-- Name: article_article; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.article_article (
    id uuid NOT NULL,
    created_at timestamp with time zone NOT NULL,
    article_image character varying(100) NOT NULL,
    article_title character varying(255) NOT NULL,
    article_text text NOT NULL,
    article_writer character varying(255) NOT NULL,
    article_department character varying(255) NOT NULL,
    "isArchived" boolean NOT NULL
);


ALTER TABLE public.article_article OWNER TO postgres;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: cart_cart; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cart_cart (
    id integer NOT NULL,
    coupon_id integer,
    user_id integer NOT NULL
);


ALTER TABLE public.cart_cart OWNER TO postgres;

--
-- Name: cart_cart_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cart_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cart_cart_id_seq OWNER TO postgres;

--
-- Name: cart_cart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cart_cart_id_seq OWNED BY public.cart_cart.id;


--
-- Name: cart_cartitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cart_cartitem (
    id integer NOT NULL,
    quantity integer NOT NULL,
    cart_id integer NOT NULL,
    product_id character varying(255) NOT NULL,
    product_item_id integer,
    CONSTRAINT cart_cartitem_quantity_check CHECK ((quantity >= 0))
);


ALTER TABLE public.cart_cartitem OWNER TO postgres;

--
-- Name: cart_cartitem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cart_cartitem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cart_cartitem_id_seq OWNER TO postgres;

--
-- Name: cart_cartitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cart_cartitem_id_seq OWNED BY public.cart_cartitem.id;


--
-- Name: contact_us_contactform; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contact_us_contactform (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(254) NOT NULL,
    phone character varying(11) NOT NULL,
    subject character varying(255) NOT NULL,
    message text NOT NULL
);


ALTER TABLE public.contact_us_contactform OWNER TO postgres;

--
-- Name: contact_us_contactform_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contact_us_contactform_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_us_contactform_id_seq OWNER TO postgres;

--
-- Name: contact_us_contactform_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contact_us_contactform_id_seq OWNED BY public.contact_us_contactform.id;


--
-- Name: contact_us_contactus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contact_us_contactus (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    sub_title character varying(255) NOT NULL,
    image character varying(100) NOT NULL,
    phone character varying(11) NOT NULL,
    email character varying(254) NOT NULL,
    address text NOT NULL,
    phone1 character varying(11),
    address_url character varying(200)
);


ALTER TABLE public.contact_us_contactus OWNER TO postgres;

--
-- Name: contact_us_contactus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contact_us_contactus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_us_contactus_id_seq OWNER TO postgres;

--
-- Name: contact_us_contactus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contact_us_contactus_id_seq OWNED BY public.contact_us_contactus.id;


--
-- Name: coupon_coupon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.coupon_coupon (
    id integer NOT NULL,
    code character varying(8) NOT NULL,
    discount_percentage double precision NOT NULL,
    expire_date date NOT NULL,
    usages_per_user integer NOT NULL,
    max_discount_value integer NOT NULL,
    min_value_to_apply integer NOT NULL,
    is_home boolean NOT NULL,
    CONSTRAINT coupon_coupon_max_discount_value_check CHECK ((max_discount_value >= 0)),
    CONSTRAINT coupon_coupon_min_value_to_apply_check CHECK ((min_value_to_apply >= 0)),
    CONSTRAINT coupon_coupon_usages_per_user_check CHECK ((usages_per_user >= 0))
);


ALTER TABLE public.coupon_coupon OWNER TO postgres;

--
-- Name: coupon_coupon_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.coupon_coupon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coupon_coupon_id_seq OWNER TO postgres;

--
-- Name: coupon_coupon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.coupon_coupon_id_seq OWNED BY public.coupon_coupon.id;


--
-- Name: coupon_coupon_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.coupon_coupon_users (
    id integer NOT NULL,
    coupon_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.coupon_coupon_users OWNER TO postgres;

--
-- Name: coupon_coupon_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.coupon_coupon_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coupon_coupon_users_id_seq OWNER TO postgres;

--
-- Name: coupon_coupon_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.coupon_coupon_users_id_seq OWNED BY public.coupon_coupon_users.id;


--
-- Name: courses_course; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses_course (
    id integer NOT NULL,
    image character varying(100) NOT NULL,
    title character varying(255) NOT NULL,
    language character varying(255) NOT NULL,
    fees character varying(255) NOT NULL,
    description text NOT NULL,
    number_of_videos bigint NOT NULL,
    duration character varying(255) NOT NULL,
    level character varying(255) NOT NULL,
    instructor_name character varying(255) NOT NULL,
    instructor_position character varying(255) NOT NULL,
    branch_id integer NOT NULL,
    type_id integer NOT NULL,
    iframe_link character varying(255),
    brand_id integer,
    CONSTRAINT courses_course_number_of_videos_check CHECK ((number_of_videos >= 0))
);


ALTER TABLE public.courses_course OWNER TO postgres;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_id_seq OWNER TO postgres;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses_course.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: footer_service; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.footer_service (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text NOT NULL,
    slug character varying(50) NOT NULL
);


ALTER TABLE public.footer_service OWNER TO postgres;

--
-- Name: footer_service_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.footer_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.footer_service_id_seq OWNER TO postgres;

--
-- Name: footer_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.footer_service_id_seq OWNED BY public.footer_service.id;


--
-- Name: general_general; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.general_general (
    id integer NOT NULL,
    tax_percentage double precision NOT NULL,
    point_value double precision NOT NULL
);


ALTER TABLE public.general_general OWNER TO postgres;

--
-- Name: general_general_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.general_general_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.general_general_id_seq OWNER TO postgres;

--
-- Name: general_general_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.general_general_id_seq OWNED BY public.general_general.id;


--
-- Name: home_homedetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.home_homedetails (
    id integer NOT NULL,
    categories_caption text,
    about_us_1_caption text,
    about_us_2_caption text,
    about_us_1_image character varying(100),
    about_us_2_image character varying(100),
    about_us_title character varying(255) NOT NULL
);


ALTER TABLE public.home_homedetails OWNER TO postgres;

--
-- Name: home_homedetails_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.home_homedetails_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_homedetails_id_seq OWNER TO postgres;

--
-- Name: home_homedetails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.home_homedetails_id_seq OWNED BY public.home_homedetails.id;


--
-- Name: home_homeswiper; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.home_homeswiper (
    id integer NOT NULL,
    media character varying(100) NOT NULL,
    link character varying(255),
    mobile_view_media character varying(100)
);


ALTER TABLE public.home_homeswiper OWNER TO postgres;

--
-- Name: home_homeswiper_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.home_homeswiper_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_homeswiper_id_seq OWNER TO postgres;

--
-- Name: home_homeswiper_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.home_homeswiper_id_seq OWNED BY public.home_homeswiper.id;


--
-- Name: home_popularproduct; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.home_popularproduct (
    id integer NOT NULL,
    product_id character varying(255) NOT NULL
);


ALTER TABLE public.home_popularproduct OWNER TO postgres;

--
-- Name: home_popularproduct_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.home_popularproduct_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_popularproduct_id_seq OWNER TO postgres;

--
-- Name: home_popularproduct_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.home_popularproduct_id_seq OWNED BY public.home_popularproduct.id;


--
-- Name: offers_offer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.offers_offer (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    image character varying(100) NOT NULL
);


ALTER TABLE public.offers_offer OWNER TO postgres;

--
-- Name: offers_offer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.offers_offer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.offers_offer_id_seq OWNER TO postgres;

--
-- Name: offers_offer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.offers_offer_id_seq OWNED BY public.offers_offer.id;


--
-- Name: order_order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_order (
    id integer NOT NULL,
    code character varying(12) NOT NULL,
    price_paid double precision NOT NULL,
    total_price double precision NOT NULL,
    created_at timestamp with time zone NOT NULL,
    order_status character varying(255) NOT NULL,
    payment_type character varying(255) NOT NULL,
    transaction_id character varying(255),
    delivery_date date,
    coupon_id integer,
    user_id integer NOT NULL,
    tax_value double precision NOT NULL,
    registered_order_id character varying(255),
    compelted_at date,
    awb character varying(20) NOT NULL,
    number_of_boxes double precision NOT NULL,
    order_weight double precision NOT NULL,
    shipping_fees double precision NOT NULL,
    shipping_status character varying(255) NOT NULL,
    discount double precision NOT NULL
);


ALTER TABLE public.order_order OWNER TO postgres;

--
-- Name: order_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_order_id_seq OWNER TO postgres;

--
-- Name: order_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_order_id_seq OWNED BY public.order_order.id;


--
-- Name: order_orderaddress; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_orderaddress (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    phone character varying(11) NOT NULL,
    country character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    address text NOT NULL,
    order_id integer NOT NULL,
    phone_country_code character varying(5) NOT NULL,
    apartment character varying(255),
    building character varying(255) NOT NULL,
    floor character varying(255)
);


ALTER TABLE public.order_orderaddress OWNER TO postgres;

--
-- Name: order_orderaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_orderaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_orderaddress_id_seq OWNER TO postgres;

--
-- Name: order_orderaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_orderaddress_id_seq OWNED BY public.order_orderaddress.id;


--
-- Name: order_orderitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_orderitem (
    id integer NOT NULL,
    product_title_en character varying(255) NOT NULL,
    product_image character varying(100) NOT NULL,
    quantity integer NOT NULL,
    price double precision NOT NULL,
    status character varying(255) NOT NULL,
    order_id integer NOT NULL,
    product_title_ar character varying(255),
    product_uuid character varying(255),
    product_item_title character varying(255),
    product_item_type character varying(255),
    product_item_weight double precision NOT NULL,
    product_item_id integer,
    CONSTRAINT order_orderitem_product_item_id_check CHECK ((product_item_id >= 0)),
    CONSTRAINT order_orderitem_quantity_check CHECK ((quantity >= 0))
);


ALTER TABLE public.order_orderitem OWNER TO postgres;

--
-- Name: order_orderitem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_orderitem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_orderitem_id_seq OWNER TO postgres;

--
-- Name: order_orderitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_orderitem_id_seq OWNED BY public.order_orderitem.id;


--
-- Name: order_refund; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_refund (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    reason text,
    order_id integer NOT NULL
);


ALTER TABLE public.order_refund OWNER TO postgres;

--
-- Name: order_refund_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_refund_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_refund_id_seq OWNER TO postgres;

--
-- Name: order_refund_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_refund_id_seq OWNED BY public.order_refund.id;


--
-- Name: order_refunditem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_refunditem (
    id integer NOT NULL,
    requested_quantity integer NOT NULL,
    refunded_quantity integer NOT NULL,
    reason text,
    to_refund_quantity integer NOT NULL,
    order_item_id integer NOT NULL,
    refund_id integer NOT NULL,
    CONSTRAINT order_refunditem_refunded_quantity_check CHECK ((refunded_quantity >= 0)),
    CONSTRAINT order_refunditem_requested_quantity_check CHECK ((requested_quantity >= 0)),
    CONSTRAINT order_refunditem_to_refund_quantity_check CHECK ((to_refund_quantity >= 0))
);


ALTER TABLE public.order_refunditem OWNER TO postgres;

--
-- Name: order_refunditem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_refunditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_refunditem_id_seq OWNER TO postgres;

--
-- Name: order_refunditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_refunditem_id_seq OWNED BY public.order_refunditem.id;


--
-- Name: product_branch; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_branch (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    type_id integer NOT NULL,
    image character varying(100)
);


ALTER TABLE public.product_branch OWNER TO postgres;

--
-- Name: product_branch_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_branch_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_branch_id_seq OWNER TO postgres;

--
-- Name: product_branch_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_branch_id_seq OWNED BY public.product_branch.id;


--
-- Name: product_brand; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_brand (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    image character varying(100)
);


ALTER TABLE public.product_brand OWNER TO postgres;

--
-- Name: product_brand_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_brand_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_brand_id_seq OWNER TO postgres;

--
-- Name: product_brand_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_brand_id_seq OWNED BY public.product_brand.id;


--
-- Name: product_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_product (
    id character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    description text NOT NULL,
    price double precision NOT NULL,
    sale_price double precision,
    stock integer NOT NULL,
    rate integer NOT NULL,
    is_archived boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    branch_id integer NOT NULL,
    brand_id integer NOT NULL,
    sub_branch_id integer,
    type_id integer NOT NULL,
    product_item_title character varying(255),
    number_of_boxes integer NOT NULL,
    weight double precision NOT NULL,
    CONSTRAINT product_product_number_of_boxes_check CHECK ((number_of_boxes >= 0)),
    CONSTRAINT product_product_rate_check CHECK ((rate >= 0)),
    CONSTRAINT product_product_stock_check CHECK ((stock >= 0))
);


ALTER TABLE public.product_product OWNER TO postgres;

--
-- Name: product_productimage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_productimage (
    id integer NOT NULL,
    image character varying(100) NOT NULL,
    is_main boolean NOT NULL,
    product_id character varying(255) NOT NULL
);


ALTER TABLE public.product_productimage OWNER TO postgres;

--
-- Name: product_productimage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_productimage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_productimage_id_seq OWNER TO postgres;

--
-- Name: product_productimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_productimage_id_seq OWNED BY public.product_productimage.id;


--
-- Name: product_productitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_productitem (
    id integer NOT NULL,
    species character varying(255) NOT NULL,
    stock integer NOT NULL,
    product_id character varying(255) NOT NULL,
    CONSTRAINT product_productitem_stock_check CHECK ((stock >= 0))
);


ALTER TABLE public.product_productitem OWNER TO postgres;

--
-- Name: product_productitem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_productitem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_productitem_id_seq OWNER TO postgres;

--
-- Name: product_productitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_productitem_id_seq OWNED BY public.product_productitem.id;


--
-- Name: product_productvideourl; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_productvideourl (
    id integer NOT NULL,
    url character varying(255) NOT NULL,
    product_id character varying(255)
);


ALTER TABLE public.product_productvideourl OWNER TO postgres;

--
-- Name: product_productvideourl_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_productvideourl_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_productvideourl_id_seq OWNER TO postgres;

--
-- Name: product_productvideourl_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_productvideourl_id_seq OWNED BY public.product_productvideourl.id;


--
-- Name: product_subbranch; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_subbranch (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    branch_id integer NOT NULL
);


ALTER TABLE public.product_subbranch OWNER TO postgres;

--
-- Name: product_subbranch_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_subbranch_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_subbranch_id_seq OWNER TO postgres;

--
-- Name: product_subbranch_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_subbranch_id_seq OWNED BY public.product_subbranch.id;


--
-- Name: product_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_type (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    image character varying(100),
    hover_image character varying(100),
    category_details_image character varying(100),
    category_image character varying(100),
    display_ordering integer,
    CONSTRAINT product_type_display_ordering_check CHECK ((display_ordering >= 0))
);


ALTER TABLE public.product_type OWNER TO postgres;

--
-- Name: product_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_type_id_seq OWNER TO postgres;

--
-- Name: product_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_type_id_seq OWNED BY public.product_type.id;


--
-- Name: product_wishlist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_wishlist (
    id integer NOT NULL,
    product_id character varying(255) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.product_wishlist OWNER TO postgres;

--
-- Name: product_wishlist_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_wishlist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_wishlist_id_seq OWNER TO postgres;

--
-- Name: product_wishlist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_wishlist_id_seq OWNED BY public.product_wishlist.id;


--
-- Name: smsa_zone; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.smsa_zone (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    first_1_kg_price numeric(10,2) NOT NULL,
    additional_1_kg_price numeric(10,2) NOT NULL,
    cod_up_to_cod_limit numeric(10,2) NOT NULL,
    cod_above_cod_limit numeric(3,2) NOT NULL,
    cod_limit double precision NOT NULL
);


ALTER TABLE public.smsa_zone OWNER TO postgres;

--
-- Name: smsa_zone_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.smsa_zone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.smsa_zone_id_seq OWNER TO postgres;

--
-- Name: smsa_zone_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.smsa_zone_id_seq OWNED BY public.smsa_zone.id;


--
-- Name: smsa_zonecity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.smsa_zonecity (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    zone_id integer NOT NULL
);


ALTER TABLE public.smsa_zonecity OWNER TO postgres;

--
-- Name: smsa_zonecity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.smsa_zonecity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.smsa_zonecity_id_seq OWNER TO postgres;

--
-- Name: smsa_zonecity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.smsa_zonecity_id_seq OWNED BY public.smsa_zonecity.id;


--
-- Name: translations_translation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.translations_translation (
    id integer NOT NULL,
    object_id character varying(128) NOT NULL,
    field character varying(64) NOT NULL,
    language character varying(32) NOT NULL,
    text text NOT NULL,
    content_type_id integer NOT NULL
);


ALTER TABLE public.translations_translation OWNER TO postgres;

--
-- Name: translations_translation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.translations_translation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.translations_translation_id_seq OWNER TO postgres;

--
-- Name: translations_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.translations_translation_id_seq OWNED BY public.translations_translation.id;


--
-- Name: user_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    phone character varying(11) NOT NULL,
    name character varying(255) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    email character varying(255)
);


ALTER TABLE public.user_user OWNER TO postgres;

--
-- Name: user_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.user_user_groups OWNER TO postgres;

--
-- Name: user_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_user_groups_id_seq OWNER TO postgres;

--
-- Name: user_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_user_groups_id_seq OWNED BY public.user_user_groups.id;


--
-- Name: user_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_user_id_seq OWNER TO postgres;

--
-- Name: user_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_user_id_seq OWNED BY public.user_user.id;


--
-- Name: user_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.user_user_user_permissions OWNER TO postgres;

--
-- Name: user_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: user_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_user_user_permissions_id_seq OWNED BY public.user_user_user_permissions.id;


--
-- Name: user_useraddress; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_useraddress (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    phone character varying(11) NOT NULL,
    country character varying(255) NOT NULL,
    address text NOT NULL,
    building character varying(255) NOT NULL,
    floor character varying(255),
    apartment character varying(255),
    is_default boolean NOT NULL,
    user_id integer NOT NULL,
    phone_country_code character varying(5) NOT NULL,
    city_id integer NOT NULL
);


ALTER TABLE public.user_useraddress OWNER TO postgres;

--
-- Name: user_useraddress_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_useraddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_useraddress_id_seq OWNER TO postgres;

--
-- Name: user_useraddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_useraddress_id_seq OWNED BY public.user_useraddress.id;


--
-- Name: FAQ_faq id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FAQ_faq" ALTER COLUMN id SET DEFAULT nextval('public."FAQ_faq_id_seq"'::regclass);


--
-- Name: about_us_aboutus id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.about_us_aboutus ALTER COLUMN id SET DEFAULT nextval('public.about_us_aboutus_id_seq'::regclass);


--
-- Name: about_us_aboutusstatistics id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.about_us_aboutusstatistics ALTER COLUMN id SET DEFAULT nextval('public.about_us_aboutusstatistics_id_seq'::regclass);


--
-- Name: about_us_testimonial id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.about_us_testimonial ALTER COLUMN id SET DEFAULT nextval('public.about_us_testimonial_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: cart_cart id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_cart ALTER COLUMN id SET DEFAULT nextval('public.cart_cart_id_seq'::regclass);


--
-- Name: cart_cartitem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_cartitem ALTER COLUMN id SET DEFAULT nextval('public.cart_cartitem_id_seq'::regclass);


--
-- Name: contact_us_contactform id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_us_contactform ALTER COLUMN id SET DEFAULT nextval('public.contact_us_contactform_id_seq'::regclass);


--
-- Name: contact_us_contactus id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_us_contactus ALTER COLUMN id SET DEFAULT nextval('public.contact_us_contactus_id_seq'::regclass);


--
-- Name: coupon_coupon id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coupon_coupon ALTER COLUMN id SET DEFAULT nextval('public.coupon_coupon_id_seq'::regclass);


--
-- Name: coupon_coupon_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coupon_coupon_users ALTER COLUMN id SET DEFAULT nextval('public.coupon_coupon_users_id_seq'::regclass);


--
-- Name: courses_course id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_course ALTER COLUMN id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: footer_service id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_service ALTER COLUMN id SET DEFAULT nextval('public.footer_service_id_seq'::regclass);


--
-- Name: general_general id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.general_general ALTER COLUMN id SET DEFAULT nextval('public.general_general_id_seq'::regclass);


--
-- Name: home_homedetails id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_homedetails ALTER COLUMN id SET DEFAULT nextval('public.home_homedetails_id_seq'::regclass);


--
-- Name: home_homeswiper id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_homeswiper ALTER COLUMN id SET DEFAULT nextval('public.home_homeswiper_id_seq'::regclass);


--
-- Name: home_popularproduct id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_popularproduct ALTER COLUMN id SET DEFAULT nextval('public.home_popularproduct_id_seq'::regclass);


--
-- Name: offers_offer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.offers_offer ALTER COLUMN id SET DEFAULT nextval('public.offers_offer_id_seq'::regclass);


--
-- Name: order_order id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_order ALTER COLUMN id SET DEFAULT nextval('public.order_order_id_seq'::regclass);


--
-- Name: order_orderaddress id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_orderaddress ALTER COLUMN id SET DEFAULT nextval('public.order_orderaddress_id_seq'::regclass);


--
-- Name: order_orderitem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_orderitem ALTER COLUMN id SET DEFAULT nextval('public.order_orderitem_id_seq'::regclass);


--
-- Name: order_refund id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_refund ALTER COLUMN id SET DEFAULT nextval('public.order_refund_id_seq'::regclass);


--
-- Name: order_refunditem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_refunditem ALTER COLUMN id SET DEFAULT nextval('public.order_refunditem_id_seq'::regclass);


--
-- Name: product_branch id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_branch ALTER COLUMN id SET DEFAULT nextval('public.product_branch_id_seq'::regclass);


--
-- Name: product_brand id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_brand ALTER COLUMN id SET DEFAULT nextval('public.product_brand_id_seq'::regclass);


--
-- Name: product_productimage id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_productimage ALTER COLUMN id SET DEFAULT nextval('public.product_productimage_id_seq'::regclass);


--
-- Name: product_productitem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_productitem ALTER COLUMN id SET DEFAULT nextval('public.product_productitem_id_seq'::regclass);


--
-- Name: product_productvideourl id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_productvideourl ALTER COLUMN id SET DEFAULT nextval('public.product_productvideourl_id_seq'::regclass);


--
-- Name: product_subbranch id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_subbranch ALTER COLUMN id SET DEFAULT nextval('public.product_subbranch_id_seq'::regclass);


--
-- Name: product_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_type ALTER COLUMN id SET DEFAULT nextval('public.product_type_id_seq'::regclass);


--
-- Name: product_wishlist id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_wishlist ALTER COLUMN id SET DEFAULT nextval('public.product_wishlist_id_seq'::regclass);


--
-- Name: smsa_zone id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.smsa_zone ALTER COLUMN id SET DEFAULT nextval('public.smsa_zone_id_seq'::regclass);


--
-- Name: smsa_zonecity id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.smsa_zonecity ALTER COLUMN id SET DEFAULT nextval('public.smsa_zonecity_id_seq'::regclass);


--
-- Name: translations_translation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.translations_translation ALTER COLUMN id SET DEFAULT nextval('public.translations_translation_id_seq'::regclass);


--
-- Name: user_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user ALTER COLUMN id SET DEFAULT nextval('public.user_user_id_seq'::regclass);


--
-- Name: user_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_groups ALTER COLUMN id SET DEFAULT nextval('public.user_user_groups_id_seq'::regclass);


--
-- Name: user_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.user_user_user_permissions_id_seq'::regclass);


--
-- Name: user_useraddress id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_useraddress ALTER COLUMN id SET DEFAULT nextval('public.user_useraddress_id_seq'::regclass);


--
-- Data for Name: FAQ_faq; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."FAQ_faq" (id, question, answer) FROM stdin;
2	What is KMC’s working hours?	- Our branches are open 6 days a week from 10am to 6pm, with the exception of the weekend, Friday.
3	What brands are you selling under?	We are selling under the names: Woodpecker, Philips Zoom, Vericom, Woson, Ultradent and Huge.
4	What happens if my card isn’t working on my account?	- Feel free to call any one of our customer service help team to solve any problems you may face.
5	How many days will it take to get my package?	- This depends on the district to which we are delivering to, so there is no specific time or amount of days, however we do our best to be as fast as possible and the courier will constantly be in touch to keep you updated.
6	What is the longest time I can wait before refunding the product I recieved?	- You have a maximum of 14 days to refund your product providing it is unopened and still in the same condition that you bought it.
7	What will the procedure be if my package came damaged?	- You are absolutely entitled to a replacement, and it will be delivered to your door in the quickest possible time.
8	Where do you deliver to?	- Our delivery service is not limited to any region, we deliver to all over Egypt.
9	What do you sell?	- Our product portfolio consists of all things clinic-related, from equipments to tools, devices and materials.
1	What are all the locations of KMC?	- Madinet Nasr.\r\n - El Qasr El Ainy.\r\n - El Manial.\r\n - Alexandria.\r\n - Heliopolis.
\.


--
-- Data for Name: about_us_aboutus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.about_us_aboutus (id, about_title, about_text, about_image, testimonial_title, testimonial_subtitle, testimonial_image) FROM stdin;
1	Why KMC?	In 1989, Dr. Waleed Kandil established Kandil Medical Company, originally headquartered in Heliopolis. Over time, KMC has expanded significantly, emerging as a prominent Egyptian medical enterprise with multiple branches across the nation, including Heliopolis, El Manial, Alexandria, Nasr City, and El Qasr El-Ainy. Additionally, the company has forged international connections with partners in the US, UK, Canada, and China. This outreach has facilitated the introduction of renowned multinational brands into the Egyptian market, aligning with the company's mission to continually provide cutting-edge dental technology to meet the professional and practical needs of Egyptian consumers.	about_us/about/2023_09_23_WK_png_02_1.png	Testimonials	Here's some of what our customers said about KMC.	about_us/testimonial/atikah-akhtar-XJptUS8nbhs-unsplash.jpeg
\.


--
-- Data for Name: about_us_aboutusstatistics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.about_us_aboutusstatistics (id, sav, number, text, about_us_id) FROM stdin;
1	about_us/statistic/Group_672.svg	50000	Happy Customers	1
3	about_us/statistic/Group_675.svg	100	Cilincs & Centers	1
2	about_us/statistic/Group_674_HS3xxzi.svg	8	Brands	1
\.


--
-- Data for Name: about_us_testimonial; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.about_us_testimonial (id, about_us_id, image) FROM stdin;
1	1	about_us/testimonials/Untitled_design_4.png
\.


--
-- Data for Name: article_article; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.article_article (id, created_at, article_image, article_title, article_text, article_writer, article_department, "isArchived") FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add translation	6	add_translation
22	Can change translation	6	change_translation
23	Can delete translation	6	delete_translation
24	Can view translation	6	view_translation
25	Can add contact form	7	add_contactform
26	Can change contact form	7	change_contactform
27	Can delete contact form	7	delete_contactform
28	Can view contact form	7	view_contactform
29	Can add contact us	8	add_contactus
30	Can change contact us	8	change_contactus
31	Can delete contact us	8	delete_contactus
32	Can view contact us	8	view_contactus
33	Can add about us	9	add_aboutus
34	Can change about us	9	change_aboutus
35	Can delete about us	9	delete_aboutus
36	Can view about us	9	view_aboutus
37	Can add testimonial	10	add_testimonial
38	Can change testimonial	10	change_testimonial
39	Can delete testimonial	10	delete_testimonial
40	Can view testimonial	10	view_testimonial
41	Can add about us statistics	11	add_aboutusstatistics
42	Can change about us statistics	11	change_aboutusstatistics
43	Can delete about us statistics	11	delete_aboutusstatistics
44	Can view about us statistics	11	view_aboutusstatistics
45	Can add branch	12	add_branch
46	Can change branch	12	change_branch
47	Can delete branch	12	delete_branch
48	Can view branch	12	view_branch
49	Can add brand	13	add_brand
50	Can change brand	13	change_brand
51	Can delete brand	13	delete_brand
52	Can view brand	13	view_brand
53	Can add product	14	add_product
54	Can change product	14	change_product
55	Can delete product	14	delete_product
56	Can view product	14	view_product
57	Can add product image	15	add_productimage
58	Can change product image	15	change_productimage
59	Can delete product image	15	delete_productimage
60	Can view product image	15	view_productimage
61	Can add product video url	16	add_productvideourl
62	Can change product video url	16	change_productvideourl
63	Can delete product video url	16	delete_productvideourl
64	Can view product video url	16	view_productvideourl
65	Can add review	17	add_review
66	Can change review	17	change_review
67	Can delete review	17	delete_review
68	Can view review	17	view_review
69	Can add sub branch	18	add_subbranch
70	Can change sub branch	18	change_subbranch
71	Can delete sub branch	18	delete_subbranch
72	Can view sub branch	18	view_subbranch
73	Can add type	19	add_type
74	Can change type	19	change_type
75	Can delete type	19	delete_type
76	Can view type	19	view_type
77	Can add wish list	20	add_wishlist
78	Can change wish list	20	change_wishlist
79	Can delete wish list	20	delete_wishlist
80	Can view wish list	20	view_wishlist
81	Can add user	21	add_user
82	Can change user	21	change_user
83	Can delete user	21	delete_user
84	Can view user	21	view_user
100	Can add user address	34	add_useraddress
101	Can change user address	34	change_useraddress
102	Can delete user address	34	delete_useraddress
103	Can view user address	34	view_useraddress
104	Can add otp	35	add_otp
105	Can change otp	35	change_otp
106	Can delete otp	35	delete_otp
107	Can view otp	35	view_otp
108	Can add course	36	add_course
109	Can change course	36	change_course
110	Can delete course	36	delete_course
111	Can view course	36	view_course
112	Can add article	37	add_article
113	Can change article	37	change_article
114	Can delete article	37	delete_article
115	Can view article	37	view_article
116	Can add cart	38	add_cart
117	Can change cart	38	change_cart
118	Can delete cart	38	delete_cart
119	Can view cart	38	view_cart
120	Can add cart item	39	add_cartitem
121	Can change cart item	39	change_cartitem
122	Can delete cart item	39	delete_cartitem
123	Can view cart item	39	view_cartitem
124	Can add coupon	40	add_coupon
125	Can change coupon	40	change_coupon
126	Can delete coupon	40	delete_coupon
127	Can view coupon	40	view_coupon
128	Can add general	41	add_general
129	Can change general	41	change_general
130	Can delete general	41	delete_general
131	Can view general	41	view_general
132	Can add points	42	add_points
133	Can change points	42	change_points
134	Can delete points	42	delete_points
135	Can view points	42	view_points
136	Can add order	43	add_order
137	Can change order	43	change_order
138	Can delete order	43	delete_order
139	Can view order	43	view_order
140	Can add order item	44	add_orderitem
141	Can change order item	44	change_orderitem
142	Can delete order item	44	delete_orderitem
143	Can view order item	44	view_orderitem
144	Can add order address	45	add_orderaddress
145	Can change order address	45	change_orderaddress
146	Can delete order address	45	delete_orderaddress
147	Can view order address	45	view_orderaddress
148	Can add home swiper	46	add_homeswiper
149	Can change home swiper	46	change_homeswiper
150	Can delete home swiper	46	delete_homeswiper
151	Can view home swiper	46	view_homeswiper
152	Can add refund	47	add_refund
153	Can change refund	47	change_refund
154	Can delete refund	47	delete_refund
155	Can view refund	47	view_refund
156	Can add refund item	48	add_refunditem
157	Can change refund item	48	change_refunditem
158	Can delete refund item	48	delete_refunditem
159	Can view refund item	48	view_refunditem
160	Can add home details	49	add_homedetails
161	Can change home details	49	change_homedetails
162	Can delete home details	49	delete_homedetails
163	Can view home details	49	view_homedetails
164	Can add product item	50	add_productitem
165	Can change product item	50	change_productitem
166	Can delete product item	50	delete_productitem
167	Can view product item	50	view_productitem
168	Can add service	51	add_service
169	Can change service	51	change_service
170	Can delete service	51	delete_service
171	Can view service	51	view_service
172	Can add FAQ	52	add_faq
173	Can change FAQ	52	change_faq
174	Can delete FAQ	52	delete_faq
175	Can view FAQ	52	view_faq
176	Can add offer	53	add_offer
177	Can change offer	53	change_offer
178	Can delete offer	53	delete_offer
179	Can view offer	53	view_offer
180	Can add popular product	54	add_popularproduct
181	Can change popular product	54	change_popularproduct
182	Can delete popular product	54	delete_popularproduct
183	Can view popular product	54	view_popularproduct
184	Can add zone	55	add_zone
185	Can change zone	55	change_zone
186	Can delete zone	55	delete_zone
187	Can view zone	55	view_zone
188	Can add zone city	56	add_zonecity
189	Can change zone city	56	change_zonecity
190	Can delete zone city	56	delete_zonecity
191	Can view zone city	56	view_zonecity
\.


--
-- Data for Name: cart_cart; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cart_cart (id, coupon_id, user_id) FROM stdin;
134	\N	60
142	\N	63
146	\N	67
153	\N	69
155	\N	43
156	\N	65
157	\N	31
\.


--
-- Data for Name: cart_cartitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cart_cartitem (id, quantity, cart_id, product_id, product_item_id) FROM stdin;
777	2	156	078f8bb3-f4f2-4366-aa51-53cae0c9b49c	\N
778	1	156	149cda77-2911-400d-afb5-b5d534bcbcaf	\N
779	1	157	10c5f969-8707-4049-a1c8-6c02bd0b08c0	\N
780	1	157	0d2091b5-aecc-4346-9230-8692fb4a6258	\N
743	1	146	07368b73-d58c-4720-8933-f8429a60da3d	\N
724	1	142	b4d4a5a0-3bb9-4155-9372-e442e2622f80	\N
725	1	142	67ed33bc-6de3-40ff-8c01-a88382b17aa2	\N
649	1	134	02ffb0de-2d99-46a5-86ab-26493f8528bc	\N
764	70	153	09865735-20dd-4dac-8b4c-bca2db20ee22	\N
769	1	155	16e91f84-28c5-4520-8f97-4bcb856c6d66	\N
770	1	155	3a48b362-1765-408a-a61d-4ca37b0b840f	\N
771	1	155	10c5f969-8707-4049-a1c8-6c02bd0b08c0	45
\.


--
-- Data for Name: contact_us_contactform; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contact_us_contactform (id, name, email, phone, subject, message) FROM stdin;
\.


--
-- Data for Name: contact_us_contactus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contact_us_contactus (id, title, sub_title, image, phone, email, address, phone1, address_url) FROM stdin;
1	Contact us	Just fill up the form and our team will reach you out in 3 business days.	contact-us/main-page/Contact_us_yzSIrwC.jpeg	01092586388	info@kandilmedical.com	8 Mohamed Youssef El-Qady St., Ard El-Golf. Cairo, Egypt	0222919414	https://maps.app.goo.gl/o3LFCJysyAvoB9pt5?g_st=iw
\.


--
-- Data for Name: coupon_coupon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.coupon_coupon (id, code, discount_percentage, expire_date, usages_per_user, max_discount_value, min_value_to_apply, is_home) FROM stdin;
3	111111	23	2022-06-17	23	23	32	t
5	test12	10	2023-03-10	1	0	0	f
4	KMC30C	30	2023-09-12	1	0	0	f
\.


--
-- Data for Name: coupon_coupon_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.coupon_coupon_users (id, coupon_id, user_id) FROM stdin;
\.


--
-- Data for Name: courses_course; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courses_course (id, image, title, language, fees, description, number_of_videos, duration, level, instructor_name, instructor_position, branch_id, type_id, iframe_link, brand_id) FROM stdin;
10	courses/main_unit3_OSdN5ST.jpeg	Diode Laser Application in Dentistry	English	Free	Practice management with dental laser	1	1:03:13	Advanced	Vipul Srivastava	Dr.	16	11	https://www.youtube.com/embed/ghiOWGAhwj4	3
11	courses/Surgic_touch_piezosurgery_1.jpeg	Master the advanced skills in dentistry — Piezo Surgery	English	Free	Use of piezosurgery in implants-ridge split, immediate extraction cases	1	1:04:42	Intermediate	Ankit Arora	Dr.	23	11	https://www.youtube.com/embed/wyW3p8CHG-A	3
12	courses/main_unit3_xrIKnW6.jpeg	Diode Laser Application in Dentistry	English	Free	Introduction to laser dentistry	1	1:02:18	beginner	Vipul Srivastava	Dr.	16	11	https://www.youtube.com/embed/ZRkMZqsE6RI	3
13	courses/main_unit3_W5UaQef.jpeg	Diode Laser Application in Dentistry	English	Free	which wave length is best for my practice?	1	58:22	beginner	Vipul Srivastava	Dr.	16	11	https://www.youtube.com/embed/saYbmzvkH5Q	3
14	courses/main_unit3_JvRr18z.jpeg	Diode Laser Application in Dentistry	English	Free	Integrating laser in day to day practice in dentistry	1	1:03:41	Intermediate	Vipul Srivastava	Dr.	16	11	https://www.youtube.com/embed/yZRfp3xHSiE	3
15	courses/Surgic_touch_piezosurgery_1_uAZDKA8.jpeg	Master the advanced skills in dentistry — Piezo Surgery	English	Free	Introduction to Piezo surgery	1	1:10:44	beginner	Ankit Arora	Dr.	23	11	https://www.youtube.com/embed/RWxBDILdBBw	3
16	courses/U600_8.jpeg	Master the Scaler and Ultra Sonic in Endodontics	English	Free	Master the Scaler and Ultra Sonic in Endodontics	1	55:19	Intermediate	Atique Mehdi	Dr.	12	11	https://www.youtube.com/embed/tb6tuSYNHRc	3
17	courses/1.jpeg	Activation systems in Root canal irrigation	English	Free	Activation systems in Root canal irrigation	1	58:20	Intermediate	Mustafa Gundogar	Dr.	12	11	https://www.youtube.com/embed/_MCBEZ9j-f8	3
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2022-03-30 16:02:52.42508+00	1	Woodpecker	1	[{"added": {}}, {"added": {"name": "translation", "object": "Woodpecker: \\u0648\\u0648\\u062f \\u0628\\u064a\\u0643\\u0631"}}]	13	1
2	2022-03-30 16:03:16.128903+00	1	Devices	1	[{"added": {}}, {"added": {"name": "translation", "object": "Devices: \\u0623\\u062c\\u0647\\u0632\\u0629"}}, {"added": {"name": "branch", "object": "Operation"}}, {"added": {"name": "branch", "object": "Dental"}}]	19	1
3	2022-03-30 16:03:42.794379+00	2	Material	1	[{"added": {}}, {"added": {"name": "translation", "object": "Material: \\u0645\\u0627\\u062a\\u0631\\u064a\\u0627\\u0644"}}, {"added": {"name": "branch", "object": "Sanetizers"}}]	19	1
4	2022-03-30 16:03:56.218516+00	3	Material	1	[{"added": {}}, {"added": {"name": "translation", "object": "Material: \\u0645\\u0627\\u062a\\u0631\\u064a\\u0627\\u0644"}}, {"added": {"name": "branch", "object": "Sanetizers"}}]	19	1
5	2022-03-30 16:04:04.368817+00	3	Material	3		19	1
6	2022-03-30 16:04:22.462223+00	1	0123456789	2	[{"changed": {"fields": ["Name", "Email"]}}]	21	1
7	2022-03-30 16:04:41.289712+00	1	Operation	2	[{"added": {"name": "translation", "object": "Operation: \\u0623\\u062c\\u0647\\u0632\\u0629"}}, {"added": {"name": "sub branch", "object": "test"}}, {"added": {"name": "sub branch", "object": "sub b"}}]	12	1
8	2022-03-30 16:04:56.343349+00	2	Dental	2	[{"added": {"name": "translation", "object": "Dental: \\u062f\\u064a\\u0646\\u062a\\u0627\\u0644"}}, {"added": {"name": "sub branch", "object": "testsetset"}}]	12	1
9	2022-03-30 16:05:11.527069+00	1	Operation	2	[{"changed": {"name": "translation", "object": "Operation: \\u0639\\u0645\\u0644\\u064a\\u0627\\u062a", "fields": ["Text"]}}]	12	1
10	2022-03-30 16:05:28.515463+00	3	Sanetizers	2	[{"added": {"name": "translation", "object": "Sanetizers: \\u0645\\u0639\\u0642\\u0645\\u0627\\u062a"}}]	12	1
11	2022-03-30 16:06:34.481085+00	1	test	2	[{"added": {"name": "translation", "object": "test: \\u062a\\u064a\\u0633\\u062a"}}]	18	1
12	2022-03-30 16:06:42.191934+00	3	testsetset	2	[{"added": {"name": "translation", "object": "testsetset: \\u062a\\u064a\\u0633\\u062a\\u064a\\u0633\\u062a\\u064a\\u062a\\u0633\\u064a\\u062a\\u0633\\u064a"}}]	18	1
13	2022-03-30 16:06:50.259098+00	2	sub b	2	[{"added": {"name": "translation", "object": "sub b: \\u0633\\u0628 \\u0628\\u0631\\u0627\\u0646\\u0634"}}]	18	1
14	2022-03-31 09:09:44.329318+00	6d235744-18af-4f30-80c1-80bb5bddd256	Prduct 1	1	[{"added": {}}, {"added": {"name": "translation", "object": "Prduct 1: \\u0645\\u0646\\u062a\\u062c \\u0661"}}, {"added": {"name": "translation", "object": "Prduct 1  Description: \\u0648\\u0635\\u0641 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c"}}, {"added": {"name": "product image", "object": "ProductImage object (1)"}}, {"added": {"name": "product video url", "object": "ProductVideoUrl object (1)"}}]	14	1
15	2022-03-31 09:27:20.025722+00	846d4628-2dc4-4ce4-af25-dd5738d2b73b	Product 2	1	[{"added": {}}, {"added": {"name": "translation", "object": "Product 2: \\u0645\\u0646\\u062a\\u062c \\u0662"}}, {"added": {"name": "translation", "object": "Description: \\u0648\\u0635\\u0641 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c"}}, {"added": {"name": "product image", "object": "ProductImage object (2)"}}, {"added": {"name": "product video url", "object": "ProductVideoUrl object (2)"}}]	14	1
16	2022-03-31 10:12:04.428121+00	1	Review object (1)	1	[{"added": {}}]	17	1
17	2022-03-31 10:26:16.401653+00	1	test	1	[{"added": {}}]	9	1
18	2022-03-31 10:26:37.896825+00	1	test	1	[{"added": {}}]	11	1
19	2022-03-31 10:26:50.419784+00	1	test	1	[{"added": {}}]	10	1
20	2022-03-31 10:30:41.95605+00	1	Contact us	1	[{"added": {}}, {"added": {"name": "translation", "object": "Contact us: \\u0639\\u0646\\u0646\\u0627"}}, {"added": {"name": "translation", "object": "Just fill up the form and our team will reach you out in 3 business days.: \\u0623\\u0645\\u0644\\u0623 \\u0627\\u0644\\u0641\\u0631\\u0627\\u063a\\u0627\\u062a"}}]	8	1
21	2022-03-31 10:59:27.611459+00	1	test 1	2	[{"changed": {"fields": ["About title"]}}]	9	1
22	2022-03-31 13:10:11.147861+00	1	Happy Customers	2	[{"changed": {"fields": ["Sav", "Number", "Text"]}}]	11	1
23	2022-03-31 13:10:15.032941+00	1	Happy Customers	2	[]	11	1
24	2022-03-31 13:19:05.695189+00	1	About Us	2	[{"changed": {"fields": ["About title", "About text", "About image", "Testimonial title", "Testimonial subtitle", "Testimonial image"]}}]	9	1
25	2022-03-31 13:20:27.562721+00	1	About Us	2	[{"added": {"name": "about us statistics", "object": "Brands"}}, {"added": {"name": "about us statistics", "object": "Clinck & Centers"}}]	9	1
26	2022-03-31 13:43:17.666042+00	1	About Us	2	[{"changed": {"name": "testimonial", "object": "Dr.Khaled Ammar", "fields": ["Name", "Title", "Text"]}}]	9	1
27	2022-03-31 15:52:46.777059+00	1	About Us	2	[{"added": {"name": "translation", "object": "About Us: \\u062a\\u062a\\u062a\\u062a\\u062a\\u062a"}}]	9	1
28	2022-04-03 09:05:07.229286+00	2	Devserver 1	1	[{"added": {}}]	10	1
29	2022-04-03 10:53:03.654103+00	1	Contact us	2	[{"changed": {"fields": ["Image"]}}]	8	1
30	2022-04-03 11:54:33.009687+00	1	loay moataz	1	[{"added": {}}]	34	1
31	2022-04-03 12:11:18.65486+00	1	About Us	2	[{"added": {"name": "translation", "object": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia libero maxime consequuntur quod totam similique est vitae distinctio, nulla accusantium commodi soluta vero aliquam autem expedita magni optio, consectetur ab. Lorem ipsum dolor, sit amet consectetur dipisicing elit. Recusandae, inventore perspiciatis! Voluptate oditullam, mollitia eligendi corrupti numquam excepturi a aliquid saepesimilique odio nostrum! Laborum doloremque dolores voluptateexcepturi!Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia\\r\\n          libero maxime consequuntur quod totam similique est vitae distinctio,\\r\\n          nulla accusantium commodi soluta vero aliquam autem expedita magni\\r\\n          optio, consectetur ab. Lorem ipsum dolor, sit amet consectetur\\r\\n          adipisicing elit. Recusandae, inventore perspiciatis! Voluptate odit\\r\\n          ullam, mollitia eligendi corrupti numquam excepturi a aliquid saepe\\r\\n          similique odio nostrum! Laborum doloremque dolores voluptate\\r\\n          excepturi!: \\u0627\\u0644\\u0623\\u0644\\u0645 \\u0641\\u064a \\u062d\\u062f \\u0630\\u0627\\u062a\\u0647 \\u0645\\u0647\\u0645 \\u0644\\u0644\\u0646\\u062e\\u0628\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0645\\u064a\\u0629 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629. \\u0646\\u0639\\u0648\\u0645\\u0629 \\u0627\\u0644\\u062d\\u0631\\u064a\\u0629 \\u0647\\u064a \\u0646\\u062a\\u064a\\u062c\\u0629 \\u062d\\u0642\\u064a\\u0642\\u0629 \\u0623\\u0646 \\u0627\\u0644\\u062d\\u064a\\u0627\\u0629 \\u0643\\u0644\\u0647\\u0627 \\u0644\\u0647\\u0627 \\u062a\\u0645\\u064a\\u064a\\u0632 \\u0645\\u0645\\u0627\\u062b\\u0644 \\u060c \\u0648\\u0623\\u0646\\u0647 \\u0644\\u0627 \\u0641\\u0627\\u0626\\u062f\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0642\\u0627\\u0636\\u0627\\u0629 \\u060c \\u0648\\u0623\\u0646\\u0647 \\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u062e\\u064a\\u0627\\u0631 \\u0633\\u0647\\u0644 \\u060c \\u0644\\u0643\\u0646\\u0647 \\u062e\\u064a\\u0627\\u0631 \\u0631\\u0627\\u0626\\u0639 \\u060c \\u0645\\u0646 \\u0627\\u0644\\u0623\\u0633\\u0627\\u0633\\u064a. \\u0645\\u0635\\u062f\\u0631. \\u0627\\u0644\\u0623\\u0644\\u0645 \\u0641\\u064a \\u062d\\u062f \\u0630\\u0627\\u062a\\u0647 \\u0647\\u0648 \\u0627\\u0644\\u0623\\u0644\\u0645 \\u060c \\u0625\\u0646\\u0647 \\u062d\\u0628 \\u0627\\u0644\\u0646\\u062e\\u0628\\u0629 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629 \\u0627\\u0644\\u0645\\u0646\\u063a\\u0645\\u0633\\u0629. \\u0645\\u0631\\u062d\\u0628\\u064b\\u0627 \\u060c \\u0627\\u0643\\u062a\\u0634\\u0641! \\u0644\\u0646 \\u0646\\u0644\\u062c\\u0623 \\u0623\\u0628\\u062f\\u064b\\u0627 \\u0625\\u0644\\u0649 \\u0643\\u0631\\u0647\\u0646\\u0627 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0645\\u062a\\u0639\\u0629 \\u0623\\u0646 \\u062a\\u0641\\u0633\\u062f\\u0646\\u0627 \\u0646\\u0639\\u0648\\u0645\\u0629 \\u062e\\u064a\\u0627\\u0631\\u0627\\u062a\\u0646\\u0627! \\u0648\\u062c\\u0639 \\u0627\\u0644\\u0645\\u062e\\u0627\\u0636 \\u0648\\u0622\\u0644\\u0627\\u0645 \\u0627\\u0644\\u0644\\u0630\\u0629! \\u0627\\u0644\\u0645\\u0631\\u0648\\u0646\\u0629\\r\\n          \\u064a\\u062d\\u0635\\u0644\\u0648\\u0646 \\u0639\\u0644\\u0649 \\u0623\\u0643\\u0628\\u0631 \\u0642\\u062f\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u062d\\u0631\\u064a\\u0629 \\u060c \\u0644\\u0623\\u0646 \\u0627\\u0644\\u062d\\u064a\\u0627\\u0629 \\u0643\\u0644\\u0647\\u0627 \\u0644\\u0647\\u0627 \\u062a\\u0645\\u064a\\u064a\\u0632 \\u0645\\u0645\\u0627\\u062b\\u0644 \\u061b\\r\\n          \\u0644\\u0627 \\u0641\\u0627\\u0626\\u062f\\u0629 \\u0645\\u0646 \\u062d\\u0644 \\u0627\\u0644\\u0645\\u062a\\u0647\\u0645\\u064a\\u0646 \\u060c \\u0644\\u0643\\u0646 \\u0627\\u0644\\u0628\\u0639\\u0636 \\u0627\\u0644\\u0622\\u062e\\u0631 \\u0628\\u062f\\u0648\\u0646 \\u0639\\u0648\\u0627\\u0626\\u0642\\r\\n          \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u060c \\u0627\\u0644\\u062a\\u064a \\u062a\\u0639\\u0632\\u0632\\u0647\\u0627.\\u0627\\u0644\\u0623\\u0644\\u0645 \\u0641\\u064a \\u062d\\u062f \\u0630\\u0627\\u062a\\u0647 \\u0645\\u0647\\u0645 \\u0644\\u0644\\u0646\\u062e\\u0628\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0645\\u064a\\u0629 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629. \\u0646\\u0639\\u0648\\u0645\\u0629 \\u0627\\u0644\\u062d\\u0631\\u064a\\u0629 \\u0647\\u064a \\u0646\\u062a\\u064a\\u062c\\u0629 \\u062d\\u0642\\u064a\\u0642\\u0629 \\u0623\\u0646 \\u0627\\u0644\\u062d\\u064a\\u0627\\u0629 \\u0643\\u0644\\u0647\\u0627 \\u0644\\u0647\\u0627 \\u062a\\u0645\\u064a\\u064a\\u0632 \\u0645\\u0645\\u0627\\u062b\\u0644 \\u060c \\u0648\\u0623\\u0646\\u0647 \\u0644\\u0627 \\u0641\\u0627\\u0626\\u062f\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0642\\u0627\\u0636\\u0627\\u0629 \\u060c \\u0648\\u0623\\u0646\\u0647 \\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u062e\\u064a\\u0627\\u0631 \\u0633\\u0647\\u0644 \\u060c \\u0644\\u0643\\u0646\\u0647 \\u062e\\u064a\\u0627\\u0631 \\u0631\\u0627\\u0626\\u0639 \\u060c \\u0645\\u0646 \\u0627\\u0644\\u0623\\u0633\\u0627\\u0633\\u064a. \\u0645\\u0635\\u062f\\u0631. \\u0627\\u0644\\u0623\\u0644\\u0645 \\u0641\\u064a \\u062d\\u062f \\u0630\\u0627\\u062a\\u0647 \\u0647\\u0648 \\u0627\\u0644\\u0623\\u0644\\u0645 \\u060c \\u0625\\u0646\\u0647 \\u062d\\u0628 \\u0627\\u0644\\u0646\\u062e\\u0628\\u0629 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629 \\u0627\\u0644\\u0645\\u0646\\u063a\\u0645\\u0633\\u0629. \\u0645\\u0631\\u062d\\u0628\\u064b\\u0627 \\u060c \\u0627\\u0643\\u062a\\u0634\\u0641! \\u0644\\u0646 \\u0646\\u0644\\u062c\\u0623 \\u0623\\u0628\\u062f\\u064b\\u0627 \\u0625\\u0644\\u0649 \\u0643\\u0631\\u0647\\u0646\\u0627 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0645\\u062a\\u0639\\u0629 \\u0623\\u0646 \\u062a\\u0641\\u0633\\u062f\\u0646\\u0627 \\u0646\\u0639\\u0648\\u0645\\u0629 \\u062e\\u064a\\u0627\\u0631\\u0627\\u062a\\u0646\\u0627! \\u0648\\u062c\\u0639 \\u0627\\u0644\\u0645\\u062e\\u0627\\u0636 \\u0648\\u0622\\u0644\\u0627\\u0645 \\u0627\\u0644\\u0644\\u0630\\u0629! \\u0627\\u0644\\u0645\\u0631\\u0648\\u0646\\u0629\\r\\n          \\u064a\\u062d\\u0635\\u0644\\u0648\\u0646 \\u0639\\u0644\\u0649 \\u0623\\u0643\\u0628\\u0631 \\u0642\\u062f\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u062d\\u0631\\u064a\\u0629 \\u060c \\u0644\\u0623\\u0646 \\u0627\\u0644\\u062d\\u064a\\u0627\\u0629 \\u0643\\u0644\\u0647\\u0627 \\u0644\\u0647\\u0627 \\u062a\\u0645\\u064a\\u064a\\u0632 \\u0645\\u0645\\u0627\\u062b\\u0644 \\u061b\\r\\n          \\u0644\\u0627 \\u0641\\u0627\\u0626\\u062f\\u0629 \\u0645\\u0646 \\u062d\\u0644 \\u0627\\u0644\\u0645\\u062a\\u0647\\u0645\\u064a\\u0646 \\u060c \\u0644\\u0643\\u0646 \\u0627\\u0644\\u0628\\u0639\\u0636 \\u0627\\u0644\\u0622\\u062e\\u0631 \\u0628\\u062f\\u0648\\u0646 \\u0639\\u0648\\u0627\\u0626\\u0642\\r\\n          \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u060c \\u0627\\u0644\\u062a\\u064a \\u062a\\u0639\\u0632\\u0632\\u0647\\u0627."}}, {"added": {"name": "translation", "object": "Testimonial: \\u0634\\u0647\\u0627\\u062f\\u0629"}}, {"added": {"name": "translation", "object": "Here's some of what our customers said about KMC.: \\u0625\\u0644\\u064a\\u0643 \\u0628\\u0639\\u0636 \\u0645\\u0627 \\u0642\\u0627\\u0644\\u0647 \\u0639\\u0645\\u0644\\u0627\\u0624\\u0646\\u0627 \\u0639\\u0646 KMC."}}, {"changed": {"name": "translation", "object": "About Us: \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0639\\u0646\\u0627", "fields": ["Text"]}}, {"added": {"name": "testimonial", "object": "Devserver 2"}}]	9	1
32	2022-04-03 12:13:29.650573+00	1	Happy Customers	2	[{"added": {"name": "translation", "object": "Happy Customers: \\u0627\\u0644\\u0632\\u0628\\u0627\\u0626\\u0646 \\u0627\\u0644\\u0633\\u0639\\u062f\\u0627\\u0621"}}]	11	1
33	2022-04-03 12:14:00.258145+00	3	Clinck & Centers	2	[{"added": {"name": "translation", "object": "Clinck & Centers: \\u0639\\u064a\\u0627\\u062f\\u0627\\u062a \\u0648 \\u0645\\u0631\\u0627\\u0643\\u0632"}}]	11	1
34	2022-04-03 12:14:31.272871+00	2	Brands	2	[{"added": {"name": "translation", "object": "Brands: \\u0639\\u0644\\u0627\\u0645\\u0627\\u062a \\u062a\\u062c\\u0627\\u0631\\u064a\\u0629"}}]	11	1
35	2022-04-03 12:29:05.295187+00	2	01226264270	3		21	1
36	2022-04-03 12:29:05.297479+00	3	01011731731	3		21	1
37	2022-04-04 08:20:21.910209+00	5	1719	3		35	1
38	2022-04-04 08:20:21.913597+00	4	2562	3		35	1
78	2022-04-06 12:36:32.347627+00	2	Best Invisible Braces in 2022: Read  Reviews and Compare	1	[{"added": {}}]	36	1
39	2022-04-04 08:24:23.09323+00	1	Dr.Khaled Ammar	2	[{"added": {"name": "translation", "object": "Dr.Khaled Ammar: \\u062f\\u0643\\u062a\\u0648\\u0631. \\u062e\\u0627\\u0644\\u062f \\u0639\\u0645\\u0627\\u0631"}}]	10	1
40	2022-04-04 08:25:26.663162+00	1	Dr.Khaled Ammar	2	[{"added": {"name": "translation", "object": "Elhayah Center Dentistry: \\u0645\\u0631\\u0643\\u0632 \\u0627\\u0644\\u062d\\u064a\\u0627\\u0629 \\u0644\\u0637\\u0628 \\u0627\\u0644\\u0627\\u0633\\u0646\\u0627\\u0646"}}, {"added": {"name": "translation", "object": "Lorem Ipsum is simply dummy text of the printing and\\r\\n                  typesetting industry. Lorem Ipsum has been the industry's\\r\\n                  standard dummy text ever since the 1500s, when an unknown\\r\\n                  printer took a galley of type and scrambled it to make a type\\r\\n                  specimen book.: \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0634\\u0643\\u0644\\u064a \\u0644\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\r\\n                  \\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f. \\u0644\\u0642\\u062f \\u0643\\u0627\\u0646 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0635\\u0627\\u062d\\u0628 \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629\\r\\n                  \\u0646\\u0635 \\u0648\\u0647\\u0645\\u064a \\u0642\\u064a\\u0627\\u0633\\u064a \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u062e\\u0627\\u0645\\u0633 \\u0639\\u0634\\u0631 \\u0627\\u0644\\u0645\\u064a\\u0644\\u0627\\u062f\\u064a \\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u0643\\u0627\\u0646 \\u0645\\u062c\\u0647\\u0648\\u0644\\u0627\\u064b\\r\\n                  \\u0623\\u062e\\u0630\\u062a \\u0627\\u0644\\u0637\\u0627\\u0628\\u0639\\u0629 \\u0644\\u0648\\u062d\\u064b\\u0627 \\u0645\\u0646 \\u0627\\u0644\\u0646\\u0648\\u0639 \\u0648\\u062a\\u062f\\u0627\\u0641\\u0639\\u062a \\u0644\\u062a\\u0643\\u0648\\u064a\\u0646 \\u0646\\u0648\\u0639\\r\\n                  \\u0643\\u062a\\u0627\\u0628 \\u0627\\u0644\\u0639\\u064a\\u0646\\u0629."}}]	10	1
41	2022-04-04 08:28:25.823336+00	4	01226264270	3		21	1
42	2022-04-04 08:28:25.826489+00	5	01011731731	3		21	1
43	2022-04-04 08:30:41.658719+00	7	01226264270	2	[{"changed": {"fields": ["Is active"]}}]	21	1
44	2022-04-04 08:33:31.821227+00	6	01111737173	3		21	1
45	2022-04-04 08:33:31.825806+00	7	01226264270	3		21	1
46	2022-04-04 09:34:32.008517+00	8	01226264270	3		21	1
47	2022-04-04 09:36:49.885906+00	9	01226264270	3		21	1
48	2022-04-04 09:38:06.356696+00	10	01226264270	3		21	1
49	2022-04-04 09:50:10.459678+00	2	Brands	2	[{"changed": {"fields": ["Sav"]}}]	11	1
50	2022-04-04 09:50:24.573128+00	3	Clinck & Centers	2	[{"changed": {"fields": ["Sav"]}}]	11	1
51	2022-04-05 12:14:14.448123+00	3	Devserver 2	2	[{"added": {"name": "translation", "object": "Devserver 2: \\u062f\\u0643\\u062a\\u0648\\u0631\\u0632 \\u0639\\u0644\\u064a \\u0631\\u0623\\u0641\\u062a"}}, {"added": {"name": "translation", "object": "NueroEsptalia El sheikh zayed: \\u0646\\u0648\\u0631\\u0633\\u0628\\u062a\\u0644\\u064a\\u0627 \\u0625\\u0644\\u0634\\u064a\\u062e \\u0632\\u0627\\u064a\\u062f"}}, {"added": {"name": "translation", "object": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia libero maxime consequuntur quod totam similique est vitae distinctio, nulla accusantium commodi soluta vero aliquam autem expedita magni optio, consectetur ab. Lorem ipsum dolor, sit amet consectetur dipisicing elit.: \\u0627\\u062c\\u0639\\u0644 \\u0645\\u0628\\u0627\\u062f\\u0626\\u0643 \\u062e\\u0637\\u064b\\u0627 \\u0623\\u062d\\u0645\\u0631\\u060c \\u0648\\u0644\\u0627 \\u062a\\u062c\\u0639\\u0644 \\u0631\\u063a\\u0628\\u062a\\u0643 \\u0641\\u064a \\u0627\\u0644\\u0646\\u062c\\u0627\\u062d \\u0633\\u0628\\u0628\\u064b\\u0627 \\u0641\\u064a \\u062a\\u0646\\u0627\\u0632\\u0644\\u0643 \\u0639\\u0646 \\u0645\\u0628\\u0627\\u062f\\u0626\\u0643\\u060c \\u0641\\u0644\\u0646 \\u064a\\u0647\\u0645 \\u0623\\u0646 \\u062a\\u0643\\u0648\\u0646 \\u0646\\u0627\\u062c\\u062d\\u064b\\u0627 \\u0648\\u062f\\u0648\\u0646 \\u0645\\u0628\\u0627\\u062f\\u0626.\\r\\n\\u0648\\u0644\\u0643\\u0645 \\u0643\\u0644 \\u0627\\u0644\\u0634\\u0643\\u0631 \\u0648 \\u0627\\u0644\\u0627\\u062d\\u062a\\u0631\\u0627\\u0645 \\u0648 \\u0627\\u0644\\u062a\\u0642\\u062f\\u064a\\u0631.\\r\\n\\u0627\\u062c\\u0639\\u0644 \\u0645\\u0628\\u0627\\u062f\\u0626\\u0643 \\u062e\\u0637\\u064b\\u0627 \\u0623\\u062d\\u0645\\u0631\\u060c \\u0648\\u0644\\u0627 \\u062a\\u062c\\u0639\\u0644 \\u0631\\u063a\\u0628\\u062a\\u0643 \\u0641\\u064a \\u0627\\u0644\\u0646\\u062c\\u0627\\u062d \\u0633\\u0628\\u0628\\u064b\\u0627 \\u0641\\u064a \\u062a\\u0646\\u0627\\u0632\\u0644\\u0643 \\u0639\\u0646 \\u0645\\u0628\\u0627\\u062f\\u0626\\u0643\\u060c \\u0641\\u0644\\u0646 \\u064a\\u0647\\u0645 \\u0623\\u0646 \\u062a\\u0643\\u0648\\u0646 \\u0646\\u0627\\u062c\\u062d\\u064b\\u0627 \\u0648\\u062f\\u0648\\u0646 \\u0645\\u0628\\u0627\\u062f\\u0626.\\r\\n\\u0648\\u0644\\u0643\\u0645 \\u0643\\u0644 \\u0627\\u0644\\u0634\\u0643\\u0631 \\u0648 \\u0627\\u0644\\u0627\\u062d\\u062a\\u0631\\u0627\\u0645 \\u0648 \\u0627\\u0644\\u062a\\u0642\\u062f\\u064a\\u0631."}}]	10	1
52	2022-04-05 12:15:36.010231+00	2	Devserver 1	2	[{"added": {"name": "translation", "object": "Devserver 1: \\u062f\\u0643\\u062a\\u0648\\u0631 \\u0627\\u0628\\u0631\\u0627\\u0647\\u064a\\u0645 \\u0639\\u0628\\u062f\\u0627\\u0644\\u0631\\u062d\\u0645\\u0646"}}, {"added": {"name": "translation", "object": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia libero maxime consequuntur quod totam similique est vitae distinctio, nulla accusantium commodi soluta vero aliquam autem expedita magni optio, consectetur ab. Lorem ipsum dolor, sit amet consectetur dipisicing elit.: \\u0627\\u062c\\u0639\\u0644 \\u0645\\u0628\\u0627\\u062f\\u0626\\u0643 \\u062e\\u0637\\u064b\\u0627 \\u0623\\u062d\\u0645\\u0631\\u060c \\u0648\\u0644\\u0627 \\u062a\\u062c\\u0639\\u0644 \\u0631\\u063a\\u0628\\u062a\\u0643 \\u0641\\u064a \\u0627\\u0644\\u0646\\u062c\\u0627\\u062d \\u0633\\u0628\\u0628\\u064b\\u0627 \\u0641\\u064a \\u062a\\u0646\\u0627\\u0632\\u0644\\u0643 \\u0639\\u0646 \\u0645\\u0628\\u0627\\u062f\\u0626\\u0643\\u060c \\u0641\\u0644\\u0646 \\u064a\\u0647\\u0645 \\u0623\\u0646 \\u062a\\u0643\\u0648\\u0646 \\u0646\\u0627\\u062c\\u062d\\u064b\\u0627 \\u0648\\u062f\\u0648\\u0646 \\u0645\\u0628\\u0627\\u062f\\u0626.\\r\\n\\u0648\\u0644\\u0643\\u0645 \\u0643\\u0644 \\u0627\\u0644\\u0634\\u0643\\u0631 \\u0648 \\u0627\\u0644\\u0627\\u062d\\u062a\\u0631\\u0627\\u0645 \\u0648 \\u0627\\u0644\\u062a\\u0642\\u062f\\u064a\\u0631.\\u0627\\u062c\\u0639\\u0644 \\u0645\\u0628\\u0627\\u062f\\u0626\\u0643 \\u062e\\u0637\\u064b\\u0627 \\u0623\\u062d\\u0645\\u0631\\u060c \\u0648\\u0644\\u0627 \\u062a\\u062c\\u0639\\u0644 \\u0631\\u063a\\u0628\\u062a\\u0643 \\u0641\\u064a \\u0627\\u0644\\u0646\\u062c\\u0627\\u062d \\u0633\\u0628\\u0628\\u064b\\u0627 \\u0641\\u064a \\u062a\\u0646\\u0627\\u0632\\u0644\\u0643 \\u0639\\u0646 \\u0645\\u0628\\u0627\\u062f\\u0626\\u0643\\u060c \\u0641\\u0644\\u0646 \\u064a\\u0647\\u0645 \\u0623\\u0646 \\u062a\\u0643\\u0648\\u0646 \\u0646\\u0627\\u062c\\u062d\\u064b\\u0627 \\u0648\\u062f\\u0648\\u0646 \\u0645\\u0628\\u0627\\u062f\\u0626.\\r\\n\\u0648\\u0644\\u0643\\u0645 \\u0643\\u0644 \\u0627\\u0644\\u0634\\u0643\\u0631 \\u0648 \\u0627\\u0644\\u0627\\u062d\\u062a\\u0631\\u0627\\u0645 \\u0648 \\u0627\\u0644\\u062a\\u0642\\u062f\\u064a\\u0631."}}, {"added": {"name": "translation", "object": "NueroEsptalia El motamyz: \\u0646\\u0648\\u064a\\u0631\\u0648 \\u0627\\u0633\\u0628\\u062a\\u0627\\u0644\\u064a\\u0627 \\u0627\\u0644\\u0645\\u062a\\u0645\\u064a\\u0632"}}]	10	1
53	2022-04-05 13:29:49.992162+00	1	Best Invisible Braces in 2022: Read  Reviews and Compare	1	[{"added": {}}]	36	1
54	2022-04-06 07:42:07.21059+00	2	sara romel	1	[{"added": {}}]	34	1
55	2022-04-06 07:43:23.209235+00	3	mohamed	1	[{"added": {}}]	34	1
56	2022-04-06 07:50:58.00161+00	6d235744-18af-4f30-80c1-80bb5bddd256	Prduct 1	2	[{"changed": {"name": "product image", "object": "ProductImage object (1)", "fields": ["Image"]}}]	14	1
57	2022-04-06 07:53:54.912825+00	846d4628-2dc4-4ce4-af25-dd5738d2b73b	Product 2	2	[{"changed": {"name": "product image", "object": "ProductImage object (2)", "fields": ["Image"]}}]	14	1
58	2022-04-06 07:55:20.333473+00	59bafef1-f6df-4610-a888-bcf65d76d2a1	Lorem ipsum dolor	1	[{"added": {}}, {"added": {"name": "translation", "object": "Lorem ipsum dolor: \\u062a\\u064a\\u0633\\u062a"}}, {"added": {"name": "product image", "object": "ProductImage object (3)"}}]	14	1
59	2022-04-06 07:55:43.868309+00	59bafef1-f6df-4610-a888-bcf65d76d2a1	Lorem ipsum dolor	2	[{"changed": {"name": "product image", "object": "ProductImage object (3)", "fields": ["Image"]}}]	14	1
60	2022-04-06 07:56:48.276928+00	a323b6a5-95e1-4281-8aef-df9aec42f5f7	lorem	1	[{"added": {}}, {"added": {"name": "translation", "object": "lorem: \\u062a\\u064a\\u0633\\u062a"}}, {"added": {"name": "translation", "object": "test tes: \\u0634\\u0633\\u0634\\u0633 \\u0634\\u0633\\u064a\\u0634\\u0633 \\u064a\\u0634\\u0633\\u064a\\u0634\\u0633 \\u064a\\u0633\\u0634\\u064a"}}, {"added": {"name": "product image", "object": "ProductImage object (4)"}}]	14	1
61	2022-04-06 08:23:24.367516+00	1	Dr.Khaled Ammar	2	[{"changed": {"fields": ["Text"]}}]	10	1
62	2022-04-06 08:23:52.401833+00	2	Devserver 1	2	[]	10	1
63	2022-04-06 08:23:58.466541+00	3	Devserver 2	2	[]	10	1
64	2022-04-06 10:54:19.695267+00	846d4628-2dc4-4ce4-af25-dd5738d2b73b	Lorem ipsum dolor set	2	[{"changed": {"fields": ["Title"]}}]	14	1
65	2022-04-06 11:38:24.428904+00	59bafef1-f6df-4610-a888-bcf65d76d2a1	Lorem ipsum dolor	2	[{"changed": {"fields": ["Description"]}}]	14	1
66	2022-04-06 11:38:32.940288+00	6d235744-18af-4f30-80c1-80bb5bddd256	Prduct 1	2	[{"changed": {"fields": ["Description"]}}]	14	1
67	2022-04-06 11:38:38.560545+00	846d4628-2dc4-4ce4-af25-dd5738d2b73b	Lorem ipsum dolor set	2	[{"changed": {"fields": ["Description"]}}]	14	1
68	2022-04-06 11:38:46.832591+00	a323b6a5-95e1-4281-8aef-df9aec42f5f7	lorem	2	[{"changed": {"fields": ["Description"]}}]	14	1
69	2022-04-06 12:21:44.037047+00	3	Review object (3)	1	[{"added": {}}]	17	1
70	2022-04-06 12:22:14.099423+00	3	Review object (3)	2	[{"changed": {"fields": ["Content"]}}]	17	1
71	2022-04-06 12:22:27.915323+00	3	Review object (3)	2	[{"changed": {"fields": ["Content"]}}]	17	1
72	2022-04-06 12:22:40.932137+00	4	Review object (4)	1	[{"added": {}}]	17	1
73	2022-04-06 12:22:41.884145+00	1	Best Invisible Braces in 2022: Read  Reviews and Compare	2	[]	36	1
74	2022-04-06 12:22:54.821315+00	5	Review object (5)	1	[{"added": {}}]	17	1
75	2022-04-06 12:23:03.762967+00	1	Best Invisible Braces in 2022: Read  Reviews and Compare	2	[{"changed": {"fields": ["Number of videos", "Duration"]}}]	36	1
76	2022-04-06 12:23:09.582006+00	6	Review object (6)	1	[{"added": {}}]	17	1
77	2022-04-06 12:23:33.409158+00	7	Review object (7)	1	[{"added": {}}]	17	1
79	2022-04-06 13:54:10.109036+00	59a5acdd-2f1e-4685-b679-02b37d637fb8	Lorem ipsum dolor	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (5)"}}]	14	1
80	2022-04-06 22:37:46.009371+00	15	Abdelrahman Hashem	1	[{"added": {}}]	34	1
81	2022-04-06 22:37:50.835321+00	15	Abdelrahman Hashem	2	[{"changed": {"fields": ["Is default"]}}]	34	1
82	2022-04-07 09:29:43.126614+00	3	Best Invisible Braces in 2022: Read  Reviews and Compare	1	[{"added": {}}]	36	1
83	2022-04-07 09:31:11.804301+00	1	Devices	2	[{"changed": {"fields": ["Image"]}}]	19	1
84	2022-04-07 09:32:08.202546+00	4	Server 1	1	[{"added": {}}]	19	1
85	2022-04-07 09:33:22.342345+00	5	server 2	1	[{"added": {}}]	19	1
86	2022-04-07 09:33:41.288846+00	6	Server 3	1	[{"added": {}}]	19	1
87	2022-04-07 09:34:30.0247+00	7	Server 4	1	[{"added": {}}]	19	1
88	2022-04-07 10:03:58.860115+00	1	Operation	2	[{"changed": {"fields": ["Image"]}}]	12	1
89	2022-04-07 10:04:10.723775+00	2	Dental	2	[{"changed": {"fields": ["Image"]}}]	12	1
90	2022-04-07 10:26:22.328941+00	41	test sasa	2	[{"changed": {"fields": ["Is default"]}}]	34	1
91	2022-04-07 10:30:13.875504+00	41	test sasa	2	[]	34	1
92	2022-04-07 13:13:02.164681+00	1	General object (1)	1	[{"added": {}}]	41	1
93	2022-04-08 12:06:58.348546+00	2	Material	2	[{"changed": {"fields": ["Image"]}}]	19	1
94	2022-04-08 12:28:32.87765+00	2	Material	2	[{"changed": {"fields": ["Image"]}}]	19	1
95	2022-04-08 12:29:28.319686+00	3	Sanetizers	2	[{"changed": {"fields": ["Image"]}}]	12	1
96	2022-04-08 12:30:43.548772+00	5	Operative	1	[{"added": {}}]	12	1
97	2022-04-09 17:34:19.834023+00	6	Testing	1	[{"added": {}}]	12	1
98	2022-04-09 17:34:56.008689+00	6	Testing	2	[{"changed": {"fields": ["Image"]}}]	12	1
99	2022-04-10 08:16:12.29485+00	59bafef1-f6df-4610-a888-bcf65d76d2a1	Lorem ipsum dolor	2	[{"added": {"name": "product image", "object": "ProductImage object (6)"}}]	14	1
100	2022-04-10 09:52:50.733889+00	1	Dr.Khaled Ammar	2	[{"changed": {"fields": ["Text"]}}]	10	1
101	2022-04-10 09:53:44.489154+00	1	Dr.Khaled Ammar	2	[{"changed": {"fields": ["Text"]}}]	10	1
102	2022-04-10 12:29:22.289346+00	4	fgefefefef	1	[{"added": {}}]	36	1
103	2022-04-10 13:36:34.576938+00	5	Hello Smile portrait with	1	[{"added": {}}]	36	1
104	2022-04-12 07:43:55.390762+00	59a5acdd-2f1e-4685-b679-02b37d637fb8	Lorem ipsum dolor	2	[{"changed": {"fields": ["Stock"]}}]	14	1
105	2022-04-12 07:44:04.399513+00	59bafef1-f6df-4610-a888-bcf65d76d2a1	Lorem ipsum dolor	2	[{"changed": {"fields": ["Stock"]}}]	14	1
106	2022-04-12 07:44:10.83511+00	6d235744-18af-4f30-80c1-80bb5bddd256	Prduct 1	2	[]	14	1
107	2022-04-12 07:51:17.281482+00	3	Prduct 1	2	[{"changed": {"fields": ["Quantity"]}}]	39	1
108	2022-04-12 08:09:29.896447+00	59a5acdd-2f1e-4685-b679-02b37d637fb8	Lorem ipsum dolor	2	[{"changed": {"fields": ["Stock"]}}]	14	1
109	2022-04-12 08:09:38.083609+00	59bafef1-f6df-4610-a888-bcf65d76d2a1	Lorem ipsum dolor	2	[{"changed": {"fields": ["Stock"]}}]	14	1
110	2022-04-12 08:51:47.766452+00	6d235744-18af-4f30-80c1-80bb5bddd256	Prduct 1	2	[{"changed": {"fields": ["Stock"]}}]	14	1
111	2022-04-12 08:51:56.087412+00	846d4628-2dc4-4ce4-af25-dd5738d2b73b	Lorem ipsum dolor set	2	[{"changed": {"fields": ["Stock"]}}]	14	1
112	2022-04-12 08:52:08.376544+00	846d4628-2dc4-4ce4-af25-dd5738d2b73b	Lorem ipsum dolor set	2	[]	14	1
113	2022-04-12 11:07:59.322369+00	59a5acdd-2f1e-4685-b679-02b37d637fb8	Lorem ipsum dolor	2	[{"changed": {"fields": ["Point price"]}}]	14	1
114	2022-04-12 11:08:06.65139+00	59bafef1-f6df-4610-a888-bcf65d76d2a1	Lorem ipsum dolor	2	[{"changed": {"fields": ["Stock"]}}]	14	1
115	2022-04-12 11:08:13.459352+00	6d235744-18af-4f30-80c1-80bb5bddd256	Prduct 1	2	[{"changed": {"fields": ["Stock"]}}]	14	1
116	2022-04-12 11:08:22.646137+00	846d4628-2dc4-4ce4-af25-dd5738d2b73b	Lorem ipsum dolor set	2	[{"changed": {"fields": ["Stock"]}}]	14	1
117	2022-04-12 12:31:25.542982+00	14	Review object (14)	3		17	1
118	2022-04-12 12:31:25.547373+00	11	Review object (11)	3		17	1
119	2022-04-12 12:31:25.549358+00	10	Review object (10)	3		17	1
120	2022-04-12 12:31:25.551186+00	8	Review object (8)	3		17	1
121	2022-04-12 12:31:25.552654+00	7	Review object (7)	3		17	1
122	2022-04-12 12:31:25.554125+00	6	Review object (6)	3		17	1
123	2022-04-12 12:31:25.555684+00	5	Review object (5)	3		17	1
124	2022-04-12 12:31:25.557025+00	4	Review object (4)	3		17	1
125	2022-04-12 12:31:25.558296+00	3	Review object (3)	3		17	1
126	2022-04-12 12:31:25.559494+00	1	Review object (1)	3		17	1
127	2022-04-12 12:37:27.831974+00	a323b6a5-95e1-4281-8aef-df9aec42f5f7	lorem	2	[{"changed": {"name": "product image", "object": "ProductImage object (4)", "fields": ["Image"]}}]	14	1
128	2022-04-12 12:38:40.87676+00	a323b6a5-95e1-4281-8aef-df9aec42f5f7	lorem	2	[]	14	1
129	2022-04-12 19:18:45.922221+00	15	01154770235	2	[{"changed": {"fields": ["Email"]}}]	21	1
130	2022-04-13 07:35:48.305322+00	20	Review object (20)	1	[{"added": {}}]	17	1
131	2022-04-13 07:36:08.217293+00	21	Review object (21)	1	[{"added": {}}]	17	1
132	2022-04-13 07:36:20.173927+00	22	Review object (22)	1	[{"added": {}}]	17	1
133	2022-04-13 07:36:31.573327+00	23	Review object (23)	1	[{"added": {}}]	17	1
134	2022-04-13 07:36:44.662438+00	24	Review object (24)	1	[{"added": {}}]	17	1
135	2022-04-13 07:37:21.703909+00	59a5acdd-2f1e-4685-b679-02b37d637fb8	Lorem ipsum dolor	2	[{"changed": {"fields": ["Stock"]}}]	14	1
136	2022-04-13 07:41:18.240434+00	25	Review object (25)	1	[{"added": {}}]	17	1
137	2022-04-13 07:43:02.803236+00	26	Review object (26)	1	[{"added": {}}]	17	1
138	2022-04-13 07:43:12.74968+00	27	Review object (27)	1	[{"added": {}}]	17	1
139	2022-04-13 07:43:28.501826+00	28	Review object (28)	1	[{"added": {}}]	17	1
140	2022-04-13 07:43:38.070739+00	29	Review object (29)	1	[{"added": {}}]	17	1
141	2022-04-13 07:43:48.383016+00	30	Review object (30)	1	[{"added": {}}]	17	1
142	2022-04-13 07:43:57.819348+00	31	Review object (31)	1	[{"added": {}}]	17	1
143	2022-04-13 08:08:46.419635+00	59a5acdd-2f1e-4685-b679-02b37d637fb8	Product One	2	[{"changed": {"fields": ["Title"]}}]	14	1
144	2022-04-13 08:09:09.236634+00	16	Review object (16)	3		17	1
145	2022-04-13 08:09:14.934336+00	17	Review object (17)	3		17	1
146	2022-04-13 08:11:35.727002+00	19	Review object (19)	3		17	1
147	2022-04-13 08:11:48.257645+00	21	Review object (21)	3		17	1
148	2022-04-13 08:11:57.669172+00	23	Review object (23)	3		17	1
149	2022-04-13 08:38:20.177115+00	8050690a-5a5a-4734-aa0d-017457418a08	Best Invisible Braces in 2022: Read Reviews and Compar	1	[{"added": {}}]	37	1
150	2022-04-13 09:55:42.655274+00	8050690a-5a5a-4734-aa0d-017457418a08	Best Invisible Braces in 2022: Read Reviews and Compar	2	[{"added": {"name": "translation", "object": "Best Invisible Braces in 2022: Read Reviews and Compar: \\u0628\\u0644\\u0627 \\u0628\\u0644\\u0627 \\u0628\\u0644\\u0627"}}]	37	1
207	2022-04-17 10:24:55.731624+00	6	Eslam Ghanem - Product One	3		20	1
151	2022-04-13 10:21:04.350259+00	8050690a-5a5a-4734-aa0d-017457418a08	Best Invisible Braces in 2022: Read Reviews and Compar	2	[{"added": {"name": "translation", "object": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eius\\r\\n          mod tempor incididunt ut labore et dolore magna aliqua. Ut enim\\r\\n          ad minim veniam ut labore et dolore magna aliqua. Ut enim: \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0627\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0646\\u0645\\u0648\\u0630\\u062c \\u0627\\u0641\\u062a\\u0631\\u0627\\u0636\\u064a \\u064a\\u0648\\u0636\\u0639 \\u0641\\u064a \\u0627\\u0644\\u062a\\u0635\\u0627\\u0645\\u064a\\u0645 \\u0644\\u062a\\u0639\\u0631\\u0636 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0644\\u064a\\u062a\\u0635\\u0648\\u0631 \\u0637\\u0631\\u064a\\u0642\\u0647 \\u0648\\u0636\\u0639 \\u0627\\u0644\\u0646\\u0635\\u0648\\u0635 \\u0628\\u0627\\u0644\\u062a\\u0635\\u0627\\u0645\\u064a\\u0645 \\u0633\\u0648\\u0627\\u0621 \\u0643\\u0627\\u0646\\u062a \\u062a\\u0635\\u0627\\u0645\\u064a\\u0645 \\u0645\\u0637\\u0628\\u0648\\u0639\\u0647 ... \\u0628\\u0631\\u0648\\u0634\\u0648\\u0631 \\u0627\\u0648 \\u0641\\u0644\\u0627\\u064a\\u0631 \\u0639\\u0644\\u0649 \\u0633\\u0628\\u064a\\u0644 \\u0627\\u0644\\u0645\\u062b\\u0627\\u0644 .."}}, {"added": {"name": "translation", "object": "Dr. Julia Elliot: \\u062f. \\u062c\\u0648\\u0644\\u064a\\u0627 \\u0625\\u0644\\u064a\\u0648\\u062a"}}, {"added": {"name": "translation", "object": "in Heath Care: \\u0641\\u064a \\u0627\\u0644\\u0631\\u0639\\u0627\\u064a\\u0629 \\u0627\\u0644\\u0635\\u062d\\u064a\\u0629"}}, {"changed": {"name": "translation", "object": "Best Invisible Braces in 2022: Read Reviews and Compar: \\u0623\\u0641\\u0636\\u0644 \\u0623\\u062c\\u0647\\u0632\\u0629 \\u062a\\u0642\\u0648\\u064a\\u0645 \\u0627\\u0644\\u0623\\u0633\\u0646\\u0627\\u0646 \\u063a\\u064a\\u0631 \\u0627\\u0644\\u0645\\u0631\\u0626\\u064a\\u0629 \\u0644\\u0639\\u0627\\u0645 2022: \\u0642\\u0631\\u0627\\u0621\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0642\\u0627\\u062a \\u0648\\u0627\\u0644\\u0645\\u0642\\u0627\\u0631\\u0646\\u0629", "fields": ["Text"]}}]	37	1
152	2022-04-13 10:37:12.021148+00	1	111111	1	[{"added": {}}]	40	1
153	2022-04-13 10:38:49.854968+00	3	Eslam Ghanem asa asa(01226264270)	2	[{"changed": {"fields": ["Coupon"]}}]	38	1
154	2022-04-13 10:40:10.211795+00	3	Eslam Ghanem asa asa(01226264270)	2	[{"changed": {"fields": ["Coupon"]}}]	38	1
155	2022-04-13 11:52:27.455066+00	3	Eslam Ghanem asa asa(01226264270)	2	[{"changed": {"fields": ["Coupon"]}}]	38	1
156	2022-04-13 11:57:38.373728+00	3	Eslam Ghanem asa asa(01226264270)	2	[{"changed": {"fields": ["Coupon"]}}]	38	1
157	2022-04-13 12:11:47.646242+00	1	111111	2	[]	40	1
158	2022-04-13 12:46:28.703749+00	3	Eslam Ghanem asa asa(01226264270)	2	[{"changed": {"fields": ["Coupon"]}}]	38	1
159	2022-04-13 12:54:50.465737+00	2f471353-822d-4f34-8b18-45246f6c7c9e	test	1	[{"added": {}}]	37	1
160	2022-04-13 12:59:40.319819+00	1	111111	3		40	1
161	2022-04-13 13:00:07.788173+00	2	1111111	1	[{"added": {}}]	40	1
162	2022-04-13 13:08:39.404755+00	2f471353-822d-4f34-8b18-45246f6c7c9e	test	2	[{"changed": {"fields": ["Article image", "Article text"]}}]	37	1
163	2022-04-14 08:12:12.148749+00	2	1111111	3		40	1
164	2022-04-14 08:12:35.115493+00	3	111111	1	[{"added": {}}]	40	1
165	2022-04-14 09:33:01.869996+00	20	01067849428	2	[{"changed": {"fields": ["Is active", "Is staff", "Superuser status"]}}]	21	1
166	2022-04-14 09:54:28.912392+00	b061f729-4195-4878-be85-395032b8512d	Test 2	1	[{"added": {}}]	37	1
167	2022-04-14 09:57:04.60315+00	331df389-20c5-405a-a14a-22e0d4b36be7	Article 3	1	[{"added": {}}]	37	1
168	2022-04-14 09:58:08.899722+00	67775775-8cbc-4984-81d2-d181985c34e4	Test 4	1	[{"added": {}}]	37	1
169	2022-04-14 09:58:51.300963+00	cc7690fd-92f6-490a-82df-eb2002e9e3e2	Title 5	1	[{"added": {}}]	37	1
170	2022-04-14 10:00:16.982767+00	f209f629-4533-4913-ba7b-ff9d28a9bf00	Test 6	1	[{"added": {}}]	37	1
171	2022-04-14 10:03:08.184522+00	a19832e6-53cc-47ae-bbe8-8b0875d36fa4	Test 7	1	[{"added": {}}]	37	1
172	2022-04-14 10:04:38.432173+00	3	Eslam Ghanem asa asa(01226264270)	3		38	1
173	2022-04-14 10:04:42.594419+00	2	Az studios(0123456789)	3		38	1
174	2022-04-14 10:07:27.750148+00	1fb57f64-18f3-431b-b012-9aadb1848780	Test 7	1	[{"added": {}}]	37	1
175	2022-04-14 10:08:06.972846+00	ded21c99-2a74-42a8-a49e-771f6a5bbb6c	Test 8	1	[{"added": {}}]	37	1
176	2022-04-14 10:10:05.648039+00	4	Eslam Ghanem asa asa(01226264270)	1	[{"added": {}}]	38	1
177	2022-04-14 10:10:11.725442+00	14	Product One	1	[{"added": {}}]	39	1
178	2022-04-14 10:15:19.100155+00	901556ea-ff5d-4b7c-be35-82bd7db903df	Test 9	1	[{"added": {}}]	37	1
179	2022-04-14 10:31:26.74834+00	4	Eslam Ghanem asa asa(01226264270)	3		38	1
180	2022-04-14 10:32:35.925388+00	5	Eslam Ghanem asa asa(01226264270)	2	[{"changed": {"fields": ["Coupon"]}}]	38	1
181	2022-04-14 10:32:48.163257+00	5	Eslam Ghanem asa asa(01226264270)	2	[{"changed": {"fields": ["Coupon"]}}]	38	1
182	2022-04-14 10:39:09.518867+00	cc2f877e-b094-4793-9716-85153410fe14	Test 10	1	[{"added": {}}]	37	1
183	2022-04-14 10:44:37.95526+00	9342ef4a-1fdc-4536-9d89-c385cb85e8fb	Test 11	1	[{"added": {}}]	37	1
184	2022-04-14 10:47:30.806751+00	16e7e004-25cb-405a-80d9-4a52dac059da	Test 12	1	[{"added": {}}]	37	1
185	2022-04-14 11:18:55.426614+00	72020951-90b0-46ee-9d53-b93aeab9bc6d	Title 13	1	[{"added": {}}]	37	1
186	2022-04-14 11:20:02.863464+00	43106e4b-996a-4e61-ab4e-bda2ade04413	Title 14	1	[{"added": {}}]	37	1
187	2022-04-14 11:21:50.602823+00	49f32c36-80d5-439e-8643-91c60451a63e	Title 15	1	[{"added": {}}]	37	1
188	2022-04-14 11:23:18.853615+00	3	Clinck & Centers	2	[{"added": {"name": "translation", "object": "70: \\u0667\\u0660"}}]	11	1
189	2022-04-14 11:23:43.190828+00	2	Brands	2	[{"added": {"name": "translation", "object": "30: \\u0663\\u0660"}}]	11	1
190	2022-04-14 11:24:26.088624+00	1	Happy Customers	2	[{"added": {"name": "translation", "object": "334: \\u0663\\u0663\\u0664"}}]	11	1
191	2022-04-14 12:20:28.470351+00	21	01208271271	2	[{"changed": {"fields": ["Is active"]}}]	21	1
192	2022-04-14 12:38:27.154728+00	1	Eslam Ghanem - Product One	1	[{"added": {}}]	20	1
193	2022-04-14 12:38:38.471734+00	2	Eslam Ghanem - Lorem ipsum dolor	1	[{"added": {}}]	20	1
194	2022-04-14 12:38:47.294309+00	3	Eslam Ghanem - Prduct 1	1	[{"added": {}}]	20	1
195	2022-04-14 12:39:29.090005+00	4	Eslam Ghanem - Lorem ipsum dolor set	1	[{"added": {}}]	20	1
196	2022-04-14 12:39:36.193085+00	5	Eslam Ghanem - lorem	1	[{"added": {}}]	20	1
197	2022-04-17 09:52:42.081602+00	5	Eslam Ghanem - lorem	3		20	1
198	2022-04-17 09:52:42.099197+00	4	Eslam Ghanem - Lorem ipsum dolor set	3		20	1
199	2022-04-17 09:52:42.101519+00	3	Eslam Ghanem - Prduct 1	3		20	1
200	2022-04-17 09:52:42.103164+00	2	Eslam Ghanem - Lorem ipsum dolor	3		20	1
201	2022-04-17 09:52:42.104776+00	1	Eslam Ghanem - Product One	3		20	1
202	2022-04-17 09:54:08.767206+00	6	Eslam Ghanem - Product One	1	[{"added": {}}]	20	1
203	2022-04-17 10:12:31.896542+00	7	Eslam Ghanem - Lorem ipsum dolor	1	[{"added": {}}]	20	1
204	2022-04-17 10:12:44.406963+00	8	Eslam Ghanem - Prduct 1	1	[{"added": {}}]	20	1
205	2022-04-17 10:12:57.636325+00	9	Eslam Ghanem - Lorem ipsum dolor set	1	[{"added": {}}]	20	1
206	2022-04-17 10:13:10.530123+00	10	Eslam Ghanem - lorem	1	[{"added": {}}]	20	1
208	2022-04-17 14:32:42.291683+00	6f08e634-24a2-41a1-8499-ca118340424e	test	1	[{"added": {}}]	14	1
209	2022-04-17 14:33:29.652984+00	443b5edd-68d9-48b0-ae9c-53648523ec58	test	1	[{"added": {}}]	14	1
210	2022-04-17 14:33:30.058675+00	2882d660-7420-4d2a-b7a6-9ac8193bc534	test	1	[{"added": {}}]	14	1
211	2022-04-17 14:33:52.415273+00	443b5edd-68d9-48b0-ae9c-53648523ec58	test	2	[{"added": {"name": "product image", "object": "ProductImage object (7)"}}]	14	1
212	2022-04-17 14:34:43.151225+00	5a8b4e9d-7535-45f9-88f5-b98a4d6739e8	test	1	[{"added": {}}]	14	1
213	2022-04-17 14:35:07.067464+00	aa2cd16e-1f25-4a8d-b551-3944b7756ed8	10	1	[{"added": {}}]	14	1
214	2022-04-17 14:35:34.007367+00	2cdf790e-64bb-44bc-9629-a09b1331cef2	11	1	[{"added": {}}]	14	1
215	2022-04-17 14:48:06.944676+00	232805b9-2c26-4841-a2e5-e9d182f9a4b1	sadsad	1	[{"added": {}}]	14	1
216	2022-04-17 14:48:18.764518+00	40d16977-6f41-4f83-beaa-3d3ddd60fbc1	12321	1	[{"added": {}}]	14	1
217	2022-04-17 14:48:30.21152+00	35347840-dbb6-4e4d-aed4-9198b165cb68	12321	1	[{"added": {}}]	14	1
218	2022-04-17 14:48:43.49539+00	f7ad725e-2713-452c-a4d6-3ce95bb43836	21321321	1	[{"added": {}}]	14	1
219	2022-04-17 14:48:55.596906+00	0002f7e1-155f-4b30-8bf7-c05860ef90c0	213213	1	[{"added": {}}]	14	1
220	2022-04-17 14:49:10.789061+00	e77fbff5-67c0-47d7-b543-33700af98b39	21321321	1	[{"added": {}}]	14	1
221	2022-04-17 14:49:31.510188+00	402c1ae4-7693-445c-abe6-5724e1307acc	wqewqe	1	[{"added": {}}]	14	1
222	2022-04-17 14:49:41.335326+00	94d11143-2a04-4906-9207-7cea91740ee3	213213	1	[{"added": {}}]	14	1
223	2022-04-17 14:49:56.755052+00	2861ae8d-21da-4df3-85e5-3a3b1a0a1322	12321321	1	[{"added": {}}]	14	1
224	2022-04-17 14:50:09.692299+00	12d9387b-15e5-44a6-ab0c-aba8cd5a6c0b	12321321	1	[{"added": {}}]	14	1
225	2022-04-17 14:50:21.061807+00	44e71a86-ca67-464d-bcf7-35879a41df4a	21321	1	[{"added": {}}]	14	1
226	2022-04-19 07:19:30.390173+00	1	KMC Got Your Back	1	[{"added": {}}]	46	1
227	2022-04-19 07:22:11.038955+00	2	We have the  best offers	1	[{"added": {}}]	46	1
228	2022-04-19 07:23:25.66711+00	3	KMC Got Your Back	1	[{"added": {}}]	46	1
229	2022-04-19 07:24:14.168789+00	4	best tutors ever	1	[{"added": {}}]	46	1
230	2022-04-19 09:38:43.644591+00	2	Points object (2)	2	[{"changed": {"fields": ["Points"]}}]	42	1
231	2022-04-19 09:55:19.617455+00	2	Points object (2)	2	[{"changed": {"fields": ["Points"]}}]	42	1
232	2022-04-19 09:56:19.799312+00	2	Points object (2)	2	[{"changed": {"fields": ["Points"]}}]	42	1
233	2022-04-19 10:12:35.133456+00	2	Points object (2)	2	[{"changed": {"fields": ["Points"]}}]	42	1
234	2022-04-19 13:00:07.133371+00	4	best tutors ever	2	[{"changed": {"fields": ["Media"]}}]	46	1
235	2022-04-19 13:01:17.08766+00	4	best tutors ever	2	[{"changed": {"fields": ["Media"]}}]	46	1
236	2022-04-19 13:08:50.194568+00	59a5acdd-2f1e-4685-b679-02b37d637fb8	Product One	2	[{"changed": {"fields": ["Stock"]}}]	14	1
237	2022-04-19 13:19:47.604959+00	6d235744-18af-4f30-80c1-80bb5bddd256	Prduct 1	2	[{"changed": {"fields": ["Stock"]}}]	14	1
238	2022-04-19 13:21:00.476058+00	6d235744-18af-4f30-80c1-80bb5bddd256	Prduct 1	2	[{"changed": {"fields": ["Stock"]}}]	14	1
239	2022-04-19 13:30:58.287119+00	59a5acdd-2f1e-4685-b679-02b37d637fb8	Product One	2	[{"changed": {"fields": ["Stock"]}}]	14	1
240	2022-04-19 13:31:19.288651+00	59a5acdd-2f1e-4685-b679-02b37d637fb8	Product One	2	[{"changed": {"fields": ["Stock"]}}]	14	1
241	2022-04-19 13:34:56.337662+00	59a5acdd-2f1e-4685-b679-02b37d637fb8	Product One	2	[{"changed": {"fields": ["Stock"]}}]	14	1
242	2022-04-19 13:36:33.003552+00	59a5acdd-2f1e-4685-b679-02b37d637fb8	Product One	2	[{"changed": {"fields": ["Stock"]}}]	14	1
243	2022-04-19 13:50:41.849983+00	59a5acdd-2f1e-4685-b679-02b37d637fb8	Product One	2	[{"changed": {"fields": ["Stock"]}}]	14	1
244	2022-04-19 13:51:13.235053+00	59a5acdd-2f1e-4685-b679-02b37d637fb8	Product One	2	[{"changed": {"fields": ["Stock"]}}]	14	1
245	2022-04-19 14:02:08.47849+00	846d4628-2dc4-4ce4-af25-dd5738d2b73b	Lorem ipsum dolor set	2	[{"changed": {"fields": ["Stock"]}}]	14	1
246	2022-04-19 14:04:10.120533+00	846d4628-2dc4-4ce4-af25-dd5738d2b73b	Lorem ipsum dolor set	2	[{"changed": {"fields": ["Stock"]}}]	14	1
247	2022-04-19 14:05:16.06915+00	846d4628-2dc4-4ce4-af25-dd5738d2b73b	Lorem ipsum dolor set	2	[{"changed": {"fields": ["Stock"]}}]	14	1
248	2022-04-20 12:56:30.177225+00	3	KMC Got Your Back	2	[{"changed": {"fields": ["Media"]}}]	46	1
249	2022-04-20 13:00:58.392106+00	3	KMC Got Your Back	2	[]	46	1
250	2022-04-20 14:19:48.626531+00	10	Order Code :  46f81dc42022 - Date : 2022-04-20	3		47	1
251	2022-04-20 14:19:48.630629+00	7	Order Code :  e27d649b2022 - Date : 2022-04-20	3		47	1
252	2022-04-20 14:19:48.632155+00	5	Order Code :  23fee9802022 - Date : 2022-04-20	3		47	1
253	2022-04-20 14:19:48.633532+00	4	Order Code :  6af05e622022 - Date : 2022-04-20	3		47	1
254	2022-04-20 14:21:41.029184+00	11	Order Code :  e27d649b2022 - Date : 2022-04-20	3		47	1
255	2022-04-20 14:24:02.14625+00	12	Order Code :  23fee9802022 - Date : 2022-04-20	3		47	1
256	2022-04-20 14:29:57.318477+00	15	Order Code :  6af05e622022 - Date : 2022-04-20	3		47	1
257	2022-04-20 14:29:57.32254+00	13	Order Code :  23fee9802022 - Date : 2022-04-20	3		47	1
258	2022-04-21 11:59:17.62786+00	34	Review object (34)	2	[{"changed": {"fields": ["Product"]}}]	17	1
259	2022-04-21 12:00:13.569917+00	32	Review object (32)	2	[{"changed": {"fields": ["User", "Product"]}}]	17	1
260	2022-04-21 12:00:22.784967+00	34	Review object (34)	2	[{"changed": {"fields": ["Product"]}}]	17	1
261	2022-04-21 12:00:56.183097+00	34	Review object (34)	2	[{"changed": {"fields": ["Product"]}}]	17	1
262	2022-04-21 12:03:00.998009+00	35	Review object (35)	2	[{"changed": {"fields": ["User"]}}]	17	1
263	2022-04-21 12:28:44.166949+00	36	Review object (36)	2	[{"changed": {"fields": ["User"]}}]	17	1
264	2022-04-21 12:31:32.989696+00	37	Review object (37)	3		17	1
265	2022-04-21 12:50:51.251831+00	36	Review object (36)	3		17	1
266	2022-04-21 12:50:51.260855+00	35	Review object (35)	3		17	1
267	2022-04-21 12:50:51.262806+00	34	Review object (34)	3		17	1
268	2022-04-21 12:51:34.905243+00	44	Review object (44)	2	[{"changed": {"fields": ["User"]}}]	17	1
269	2022-04-25 11:25:19.38751+00	53	Review object (53)	2	[{"changed": {"fields": ["Product"]}}]	17	1
270	2022-04-25 11:25:26.988939+00	44	Review object (44)	2	[{"changed": {"fields": ["Product"]}}]	17	1
271	2022-04-25 11:25:36.074712+00	31	Review object (31)	2	[{"changed": {"fields": ["Product"]}}]	17	1
272	2022-04-25 11:25:45.535172+00	30	Review object (30)	2	[{"changed": {"fields": ["Product"]}}]	17	1
273	2022-04-25 11:31:27.828033+00	27	Review object (27)	2	[{"changed": {"fields": ["Product"]}}]	17	1
274	2022-04-25 11:31:38.307756+00	28	Review object (28)	2	[{"changed": {"fields": ["User", "Product"]}}]	17	1
275	2022-04-25 11:31:45.19547+00	15	Review object (15)	2	[{"changed": {"fields": ["Product"]}}]	17	1
276	2022-04-25 11:31:57.357943+00	18	Review object (18)	2	[{"changed": {"fields": ["User", "Product"]}}]	17	1
277	2022-04-25 11:32:07.935485+00	20	Review object (20)	2	[{"changed": {"fields": ["User", "Product"]}}]	17	1
278	2022-04-25 11:32:25.514132+00	22	Review object (22)	2	[{"changed": {"fields": ["User", "Product"]}}]	17	1
279	2022-04-25 11:47:51.473254+00	2882d660-7420-4d2a-b7a6-9ac8193bc534	test	2	[{"changed": {"fields": ["Stock"]}}, {"added": {"name": "product image", "object": "ProductImage object (8)"}}]	14	1
280	2022-04-25 12:47:53.606616+00	1	KMC Got Your Back	2	[{"changed": {"fields": ["Button link"]}}]	46	1
281	2022-04-25 12:49:16.135384+00	4	best tutors ever	2	[{"changed": {"fields": ["Button link"]}}]	46	1
282	2022-04-25 12:49:24.426511+00	3	KMC Got Your Back	2	[{"changed": {"fields": ["Button link"]}}]	46	1
283	2022-04-25 12:49:33.621095+00	2	We have the  best offers	2	[{"changed": {"fields": ["Button link"]}}]	46	1
284	2022-04-25 12:49:45.07157+00	1	KMC Got Your Back	2	[]	46	1
285	2022-04-25 12:50:16.545411+00	4	best tutors ever	2	[{"changed": {"fields": ["Button link"]}}]	46	1
286	2022-04-25 12:50:21.51742+00	3	KMC Got Your Back	2	[{"changed": {"fields": ["Button link"]}}]	46	1
287	2022-04-25 12:50:45.763799+00	2	We have the  best offers	2	[{"changed": {"fields": ["Button link"]}}]	46	1
288	2022-04-25 13:01:13.251497+00	54	Review object (54)	1	[{"added": {}}]	17	1
289	2022-04-26 07:36:54.829651+00	20	01067849427	2	[{"changed": {"fields": ["Phone"]}}]	21	1
290	2022-04-26 11:49:38.035104+00	20	01067849429	2	[{"changed": {"fields": ["Phone"]}}]	21	1
291	2022-04-26 14:27:24.531554+00	846d4628-2dc4-4ce4-af25-dd5738d2b73b	Lorem ipsum dolor set	2	[{"changed": {"fields": ["Stock"]}}]	14	1
292	2022-04-27 08:24:17.266998+00	232805b9-2c26-4841-a2e5-e9d182f9a4b1	sadsad	2	[{"changed": {"fields": ["Type"]}}, {"added": {"name": "product image", "object": "ProductImage object (9)"}}]	14	1
293	2022-04-27 08:24:37.42971+00	35347840-dbb6-4e4d-aed4-9198b165cb68	12321	2	[{"changed": {"fields": ["Type"]}}, {"added": {"name": "product image", "object": "ProductImage object (10)"}}]	14	1
294	2022-04-27 08:24:37.742587+00	35347840-dbb6-4e4d-aed4-9198b165cb68	12321	2	[{"added": {"name": "product image", "object": "ProductImage object (11)"}}]	14	1
295	2022-04-27 08:25:14.704795+00	846d4628-2dc4-4ce4-af25-dd5738d2b73b	Lorem ipsum dolor set	2	[{"changed": {"fields": ["Type"]}}]	14	1
296	2022-04-27 08:25:27.559988+00	f7ad725e-2713-452c-a4d6-3ce95bb43836	21321321	2	[{"changed": {"fields": ["Type"]}}, {"added": {"name": "product image", "object": "ProductImage object (12)"}}]	14	1
297	2022-04-27 08:26:02.083015+00	40d16977-6f41-4f83-beaa-3d3ddd60fbc1	12321	2	[{"changed": {"fields": ["Type"]}}, {"added": {"name": "product image", "object": "ProductImage object (13)"}}]	14	1
298	2022-04-27 08:26:13.165546+00	0002f7e1-155f-4b30-8bf7-c05860ef90c0	213213	2	[{"changed": {"fields": ["Type"]}}, {"added": {"name": "product image", "object": "ProductImage object (14)"}}]	14	1
299	2022-04-27 11:25:34.179806+00	6	Points object (6)	3		42	1
300	2022-04-27 11:25:34.196216+00	5	Points object (5)	3		42	1
301	2022-04-27 11:25:34.198545+00	4	Points object (4)	3		42	1
302	2022-04-27 11:25:34.201385+00	3	Points object (3)	3		42	1
303	2022-04-27 11:25:34.203925+00	2	Points object (2)	3		42	1
304	2022-04-27 11:25:34.206233+00	1	Points object (1)	3		42	1
305	2022-04-27 11:31:04.332734+00	7	Points object (7)	1	[{"added": {}}]	42	1
306	2022-04-27 11:31:51.248944+00	7	Points object (7)	2	[{"changed": {"fields": ["Order"]}}]	42	1
307	2022-04-27 11:32:42.068376+00	8	Points object (8)	1	[{"added": {}}]	42	1
308	2022-04-27 11:35:15.393142+00	9	Points object (9)	1	[{"added": {}}]	42	1
309	2022-04-27 11:35:39.4365+00	7	Points object (7)	2	[{"changed": {"fields": ["Points"]}}]	42	1
310	2022-04-27 11:36:10.926148+00	7	Points object (7)	2	[{"changed": {"fields": ["Order"]}}]	42	1
311	2022-04-27 11:36:29.816449+00	9	Points object (9)	2	[{"changed": {"fields": ["Order"]}}]	42	1
312	2022-04-28 11:20:31.168402+00	12d9387b-15e5-44a6-ab0c-aba8cd5a6c0b	12321321	2	[{"added": {"name": "product image", "object": "ProductImage object (15)"}}]	14	1
313	2022-04-28 11:20:58.220627+00	44e71a86-ca67-464d-bcf7-35879a41df4a	21321	2	[{"added": {"name": "product image", "object": "ProductImage object (16)"}}]	14	1
314	2022-04-28 11:21:29.909088+00	5a8b4e9d-7535-45f9-88f5-b98a4d6739e8	test	2	[{"added": {"name": "product image", "object": "ProductImage object (17)"}}]	14	1
315	2022-04-28 11:21:36.976627+00	6f08e634-24a2-41a1-8499-ca118340424e	test	2	[{"added": {"name": "product image", "object": "ProductImage object (18)"}}]	14	1
316	2022-04-28 11:21:57.880424+00	94d11143-2a04-4906-9207-7cea91740ee3	213213	2	[{"added": {"name": "product image", "object": "ProductImage object (19)"}}]	14	1
317	2022-04-28 11:22:15.227048+00	aa2cd16e-1f25-4a8d-b551-3944b7756ed8	10	2	[{"added": {"name": "product image", "object": "ProductImage object (20)"}}]	14	1
318	2022-04-28 11:56:09.83649+00	6d235744-18af-4f30-80c1-80bb5bddd256	Prduct 1	2	[{"added": {"name": "product image", "object": "ProductImage object (21)"}}, {"added": {"name": "product image", "object": "ProductImage object (22)"}}]	14	1
319	2022-04-28 11:57:23.379445+00	6d235744-18af-4f30-80c1-80bb5bddd256	Prduct 1	2	[{"added": {"name": "product image", "object": "ProductImage object (23)"}}, {"added": {"name": "product image", "object": "ProductImage object (24)"}}, {"added": {"name": "product image", "object": "ProductImage object (25)"}}]	14	1
320	2022-04-28 12:33:54.879283+00	6d235744-18af-4f30-80c1-80bb5bddd256	Prduct 1	2	[{"deleted": {"name": "product image", "object": "ProductImage object (None)"}}, {"deleted": {"name": "product image", "object": "ProductImage object (None)"}}, {"deleted": {"name": "product image", "object": "ProductImage object (None)"}}, {"deleted": {"name": "product image", "object": "ProductImage object (None)"}}, {"deleted": {"name": "product image", "object": "ProductImage object (None)"}}]	14	1
321	2022-05-08 09:01:02.964282+00	2cdf790e-64bb-44bc-9629-a09b1331cef2	11	2	[{"added": {"name": "product image", "object": "ProductImage object (26)"}}]	14	1
322	2022-05-09 11:01:45.977652+00	0002f7e1-155f-4b30-8bf7-c05860ef90c0	213213	2	[{"changed": {"fields": ["Sale price"]}}]	14	1
323	2022-05-10 12:53:03.825571+00	11	Points object (11)	1	[{"added": {}}]	42	1
324	2022-05-10 12:53:22.187335+00	11	Points object (11)	2	[{"changed": {"fields": ["Used points"]}}]	42	1
325	2022-05-12 08:18:59.923512+00	443b5edd-68d9-48b0-ae9c-53648523ec58	test	2	[{"changed": {"fields": ["Stock"]}}]	14	1
326	2022-05-12 08:19:16.397258+00	443b5edd-68d9-48b0-ae9c-53648523ec58	test	2	[{"changed": {"fields": ["Stock"]}}]	14	1
327	2022-05-12 09:43:46.538391+00	12	Points object (12)	2	[{"changed": {"fields": ["Points", "Used points"]}}]	42	1
328	2022-05-12 09:46:40.067733+00	12	Points object (12)	2	[{"changed": {"fields": ["Points"]}}]	42	1
329	2022-05-12 10:57:22.559301+00	49f32c36-80d5-439e-8643-91c60451a63e	Best Invisible Braces in 2022: Read  Reviews and Compare	2	[{"changed": {"fields": ["Article title", "Article text"]}}]	37	1
330	2022-05-12 10:57:46.949882+00	43106e4b-996a-4e61-ab4e-bda2ade04413	6 Best Electric Toothbrushes for  Healthier Teeth	2	[{"changed": {"fields": ["Article title", "Article text"]}}]	37	1
331	2022-05-12 10:59:10.663423+00	43106e4b-996a-4e61-ab4e-bda2ade04413	6 Best Electric Toothbrushes for  Healthier Teeth	2	[{"changed": {"fields": ["Article writer", "Article department"]}}]	37	1
332	2022-05-12 10:59:53.766117+00	49f32c36-80d5-439e-8643-91c60451a63e	Best Invisible Braces in 2022: Read  Reviews and Compare	2	[{"changed": {"fields": ["Article writer", "Article department"]}}]	37	1
333	2022-05-12 11:11:28.358492+00	49f32c36-80d5-439e-8643-91c60451a63e	Best Invisible Braces in 2022: Read  Reviews and Compare	2	[{"changed": {"fields": ["Article text"]}}]	37	1
334	2022-05-12 12:22:10.11322+00	0002f7e1-155f-4b30-8bf7-c05860ef90c0	Lorem ipsum dolor	2	[{"changed": {"fields": ["Title", "Description"]}}]	14	1
335	2022-05-15 08:41:41.017068+00	1	About Us	2	[{"changed": {"fields": ["About text"]}}]	9	1
336	2022-05-15 14:11:33.788837+00	1	About Us	2	[{"changed": {"name": "translation", "object": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.   Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem     \\r\\n\\r\\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.   Lorem Ipsum is simply dummy text of the printing and typesetting industry.\\r\\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.: \\u0627\\u0644\\u0623\\u0644\\u0645 \\u0641\\u064a \\u062d\\u062f \\u0630\\u0627\\u062a\\u0647 \\u0645\\u0647\\u0645 \\u0644\\u0644\\u0646\\u062e\\u0628\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0645\\u064a\\u0629 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629. \\u0646\\u0639\\u0648\\u0645\\u0629 \\u0627\\u0644\\u062d\\u0631\\u064a\\u0629 \\u0647\\u064a \\u0646\\u062a\\u064a\\u062c\\u0629 \\u062d\\u0642\\u064a\\u0642\\u0629 \\u0623\\u0646 \\u0627\\u0644\\u062d\\u064a\\u0627\\u0629 \\u0643\\u0644\\u0647\\u0627 \\u0644\\u0647\\u0627 \\u062a\\u0645\\u064a\\u064a\\u0632 \\u0645\\u0645\\u0627\\u062b\\u0644 \\u060c \\u0648\\u0623\\u0646\\u0647 \\u0644\\u0627 \\u0641\\u0627\\u0626\\u062f\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0642\\u0627\\u0636\\u0627\\u0629 \\u060c \\u0648\\u0623\\u0646\\u0647 \\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u062e\\u064a\\u0627\\u0631 \\u0633\\u0647\\u0644 \\u060c \\u0644\\u0643\\u0646\\u0647 \\u062e\\u064a\\u0627\\u0631 \\u0631\\u0627\\u0626\\u0639 \\u060c \\u0645\\u0646 \\u0627\\u0644\\u0623\\u0633\\u0627\\u0633\\u064a. \\u0645\\u0635\\u062f\\u0631. \\u0627\\u0644\\u0623\\u0644\\u0645 \\u0641\\u064a \\u062d\\u062f \\u0630\\u0627\\u062a\\u0647 \\u0647\\u0648 \\u0627\\u0644\\u0623\\u0644\\u0645 \\u060c \\u0625\\u0646\\u0647 \\u062d\\u0628 \\u0627\\u0644\\u0646\\u062e\\u0628\\u0629 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629 \\u0627\\u0644\\u0645\\u0646\\u063a\\u0645\\u0633\\u0629. \\u0645\\u0631\\u062d\\u0628\\u064b\\u0627 \\u060c \\u0627\\u0643\\u062a\\u0634\\u0641! \\u0644\\u0646 \\u0646\\u0644\\u062c\\u0623 \\u0623\\u0628\\u062f\\u064b\\u0627 \\u0625\\u0644\\u0649 \\u0643\\u0631\\u0647\\u0646\\u0627 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0645\\u062a\\u0639\\u0629 \\u0623\\u0646 \\u062a\\u0641\\u0633\\u062f\\u0646\\u0627 \\u0646\\u0639\\u0648\\u0645\\u0629 \\u062e\\u064a\\u0627\\u0631\\u0627\\u062a\\u0646\\u0627! \\u0648\\u062c\\u0639 \\u0627\\u0644\\u0645\\u062e\\u0627\\u0636 \\u0648\\u0622\\u0644\\u0627\\u0645 \\u0627\\u0644\\u0644\\u0630\\u0629! \\u0627\\u0644\\u0645\\u0631\\u0648\\u0646\\u0629\\r\\n \\u064a\\u062d\\u0635\\u0644\\u0648\\u0646 \\u0639\\u0644\\u0649 \\u0623\\u0643\\u0628\\u0631 \\u0642\\u062f\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u062d\\u0631\\u064a\\u0629 \\u060c \\u0644\\u0623\\u0646 \\u0627\\u0644\\u062d\\u064a\\u0627\\u0629 \\u0643\\u0644\\u0647\\u0627 \\u0644\\u0647\\u0627 \\u062a\\u0645\\u064a\\u064a\\u0632 \\u0645\\u0645\\u0627\\u062b\\u0644 \\u061b\\r\\n   \\u0644\\u0627 \\u0641\\u0627\\u0626\\u062f\\u0629 \\u0645\\u0646 \\u062d\\u0644 \\u0627\\u0644\\u0645\\u062a\\u0647\\u0645\\u064a\\u0646 \\u060c \\u0644\\u0643\\u0646 \\u0627\\u0644\\u0628\\u0639\\u0636 \\u0627\\u0644\\u0622\\u062e\\u0631 \\u0628\\u062f\\u0648\\u0646 \\u0639\\u0648\\u0627\\u0626\\u0642\\r\\n \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u060c \\u0627\\u0644\\u062a\\u064a \\u062a\\u0639\\u0632\\u0632\\u0647\\u0627.\\u0627\\u0644\\u0623\\u0644\\u0645 \\u0641\\u064a \\u062d\\u062f \\u0630\\u0627\\u062a\\u0647 \\u0645\\u0647\\u0645 \\u0644\\u0644\\u0646\\u062e\\u0628\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0645\\u064a\\u0629 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629. \\u0646\\u0639\\u0648\\u0645\\u0629 \\u0627\\u0644\\u062d\\u0631\\u064a\\u0629 \\u0647\\u064a \\u0646\\u062a\\u064a\\u062c\\u0629 \\u062d\\u0642\\u064a\\u0642\\u0629 \\u0623\\u0646 \\u0627\\u0644\\u062d\\u064a\\u0627\\u0629 \\u0643\\u0644\\u0647\\u0627 \\u0644\\u0647\\u0627 \\u062a\\u0645\\u064a\\u064a\\u0632 \\u0645\\u0645\\u0627\\u062b\\u0644 \\u060c \\u0648\\u0623\\u0646\\u0647 \\u0644\\u0627 \\u0641\\u0627\\u0626\\u062f\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0642\\u0627\\u0636\\u0627\\u0629 \\u060c \\u0648\\u0623\\u0646\\u0647 \\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u062e\\u064a\\u0627\\u0631 \\u0633\\u0647\\u0644 \\u060c \\u0644\\u0643\\u0646\\u0647 \\u062e\\u064a\\u0627\\u0631 \\u0631\\u0627\\u0626\\u0639 \\u060c \\u0645\\u0646 \\u0627\\u0644\\u0623\\u0633\\u0627\\u0633\\u064a. \\u0645\\u0635\\u062f\\u0631. \\u0627\\u0644\\u0623\\u0644\\u0645 \\u0641\\u064a \\u062d\\u062f \\u0630\\u0627\\u062a\\u0647 \\u0647\\u0648 \\u0627\\u0644\\u0623\\u0644\\u0645 \\u060c \\u0625\\u0646\\u0647 \\u062d\\u0628 \\u0627\\u0644\\u0646\\u062e\\u0628\\u0629 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629 \\u0627\\u0644\\u0645\\u0646\\u063a\\u0645\\u0633\\u0629. \\u0645\\u0631\\u062d\\u0628\\u064b\\u0627 \\u060c \\u0627\\u0643\\u062a\\u0634\\u0641! \\u0644\\u0646 \\u0646\\u0644\\u062c\\u0623 \\u0623\\u0628\\u062f\\u064b\\u0627 \\u0625\\u0644\\u0649 \\u0643\\u0631\\u0647\\u0646\\u0627 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0645\\u062a\\u0639\\u0629 \\u0623\\u0646 \\u062a\\u0641\\u0633\\u062f\\u0646\\u0627 \\u0646\\u0639\\u0648\\u0645\\u0629 \\u062e\\u064a\\u0627\\u0631\\u0627\\u062a\\u0646\\u0627! \\u0648\\u062c\\u0639 \\u0627\\u0644\\u0645\\u062e\\u0627\\u0636 \\u0648\\u0622\\u0644\\u0627\\u0645 \\u0627\\u0644\\u0644\\u0630\\u0629! \\u0627\\u0644\\u0645\\u0631\\u0648\\u0646\\u0629\\r\\n\\u064a\\u062d\\u0635\\u0644\\u0648\\u0646 \\u0639\\u0644\\u0649 \\u0623\\u0643\\u0628\\u0631 \\u0642\\u062f\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u062d\\u0631\\u064a\\u0629 \\u060c \\u0644\\u0623\\u0646 \\u0627\\u0644\\u062d\\u064a\\u0627\\u0629 \\u0643\\u0644\\u0647\\u0627 \\u0644\\u0647\\u0627 \\u062a\\u0645\\u064a\\u064a\\u0632 \\u0645\\u0645\\u0627\\u062b\\u0644 \\u061b\\r\\n \\u0644\\u0627 \\u0641\\u0627\\u0626\\u062f\\u0629 \\u0645\\u0646 \\u062d\\u0644 \\u0627\\u0644\\u0645\\u062a\\u0647\\u0645\\u064a\\u0646 \\u060c \\u0644\\u0643\\u0646 \\u0627\\u0644\\u0628\\u0639\\u0636 \\u0627\\u0644\\u0622\\u062e\\u0631 \\u0628\\u062f\\u0648\\u0646 \\u0639\\u0648\\u0627\\u0626\\u0642\\r\\n \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u060c \\u0627\\u0644\\u062a\\u064a \\u062a\\u0639\\u0632\\u0632\\u0647\\u0627.", "fields": ["Text"]}}]	9	1
337	2022-05-16 14:34:46.192808+00	3	111111	2	[{"changed": {"fields": ["Is home"]}}]	40	1
338	2022-05-16 14:55:02.09446+00	72020951-90b0-46ee-9d53-b93aeab9bc6d	Best Invisible Braces in 2022: Read Reviews and Compar	2	[{"changed": {"fields": ["Article title", "Article text", "Article writer", "Article department", "Article details text"]}}]	37	1
339	2022-05-16 14:55:50.978707+00	72020951-90b0-46ee-9d53-b93aeab9bc6d	Best Invisible Braces in 2022: Read Reviews and Compar	2	[{"changed": {"fields": ["Article image"]}}]	37	1
340	2022-05-16 14:57:15.668908+00	16e7e004-25cb-405a-80d9-4a52dac059da	6 Best Electric Toothbrushes for Healthier Teeth	2	[{"changed": {"fields": ["Article image", "Article title", "Article text", "Article writer", "Article department", "Article details text"]}}]	37	1
341	2022-05-16 14:57:56.387461+00	9342ef4a-1fdc-4536-9d89-c385cb85e8fb	Test 11	3		37	1
342	2022-05-16 14:57:56.408214+00	cc2f877e-b094-4793-9716-85153410fe14	Test 10	3		37	1
343	2022-05-16 14:57:56.411533+00	901556ea-ff5d-4b7c-be35-82bd7db903df	Test 9	3		37	1
344	2022-05-16 14:57:56.415893+00	ded21c99-2a74-42a8-a49e-771f6a5bbb6c	Test 8	3		37	1
345	2022-05-16 14:57:56.419182+00	1fb57f64-18f3-431b-b012-9aadb1848780	Test 7	3		37	1
346	2022-05-16 14:57:56.421772+00	a19832e6-53cc-47ae-bbe8-8b0875d36fa4	Test 7	3		37	1
347	2022-05-16 14:57:56.425217+00	f209f629-4533-4913-ba7b-ff9d28a9bf00	Test 6	3		37	1
348	2022-05-16 14:57:56.428478+00	cc7690fd-92f6-490a-82df-eb2002e9e3e2	Title 5	3		37	1
349	2022-05-16 14:57:56.431334+00	67775775-8cbc-4984-81d2-d181985c34e4	Test 4	3		37	1
350	2022-05-16 14:57:56.43354+00	331df389-20c5-405a-a14a-22e0d4b36be7	Article 3	3		37	1
351	2022-05-16 14:57:56.436313+00	b061f729-4195-4878-be85-395032b8512d	Test 2	3		37	1
352	2022-05-16 14:57:56.438425+00	2f471353-822d-4f34-8b18-45246f6c7c9e	test	3		37	1
353	2022-05-16 14:58:53.738594+00	b3c7ff8f-9c0b-4af3-89ad-7cf573aef0ac	6 Best Electric Toothbrushes for Healthier Teeth	1	[{"added": {}}]	37	1
354	2022-05-16 15:01:59.005366+00	4	Best Invisible Braces in 2022: Read Reviews and Compare	2	[{"changed": {"fields": ["Title", "Description"]}}]	36	1
355	2022-05-17 10:54:07.349864+00	0002f7e1-155f-4b30-8bf7-c05860ef90c0	Lorem ipsum dolor	2	[{"changed": {"name": "product image", "object": "ProductImage object (14)", "fields": ["Image"]}}]	14	1
356	2022-05-17 10:56:42.6547+00	232805b9-2c26-4841-a2e5-e9d182f9a4b1	sadsad	2	[{"changed": {"name": "product image", "object": "ProductImage object (9)", "fields": ["Image"]}}]	14	1
357	2022-05-17 10:56:51.839184+00	232805b9-2c26-4841-a2e5-e9d182f9a4b1	sadsad	2	[{"changed": {"name": "product image", "object": "ProductImage object (9)", "fields": ["Image"]}}]	14	1
358	2022-05-17 10:57:12.634087+00	12d9387b-15e5-44a6-ab0c-aba8cd5a6c0b	12321321	2	[{"changed": {"name": "product image", "object": "ProductImage object (15)", "fields": ["Image"]}}]	14	1
359	2022-05-17 10:57:55.928001+00	2861ae8d-21da-4df3-85e5-3a3b1a0a1322	12321321	2	[{"added": {"name": "product image", "object": "ProductImage object (27)"}}]	14	1
360	2022-05-17 10:59:15.866229+00	2882d660-7420-4d2a-b7a6-9ac8193bc534	test	2	[{"changed": {"name": "product image", "object": "ProductImage object (8)", "fields": ["Image"]}}]	14	1
361	2022-05-17 10:59:37.526573+00	2cdf790e-64bb-44bc-9629-a09b1331cef2	11	2	[{"changed": {"name": "product image", "object": "ProductImage object (26)", "fields": ["Image"]}}]	14	1
362	2022-05-17 11:00:40.269633+00	35347840-dbb6-4e4d-aed4-9198b165cb68	12321	2	[{"changed": {"name": "product image", "object": "ProductImage object (10)", "fields": ["Image"]}}, {"changed": {"name": "product image", "object": "ProductImage object (11)", "fields": ["Image"]}}]	14	1
363	2022-05-17 11:00:59.607565+00	402c1ae4-7693-445c-abe6-5724e1307acc	wqewqe	2	[{"added": {"name": "product image", "object": "ProductImage object (28)"}}]	14	1
364	2022-05-17 11:01:22.045766+00	40d16977-6f41-4f83-beaa-3d3ddd60fbc1	12321	2	[{"changed": {"name": "product image", "object": "ProductImage object (13)", "fields": ["Image"]}}]	14	1
365	2022-05-17 11:01:52.132169+00	443b5edd-68d9-48b0-ae9c-53648523ec58	test	2	[{"changed": {"name": "product image", "object": "ProductImage object (7)", "fields": ["Image"]}}]	14	1
366	2022-05-17 11:02:13.137149+00	44e71a86-ca67-464d-bcf7-35879a41df4a	21321	2	[{"changed": {"name": "product image", "object": "ProductImage object (16)", "fields": ["Image"]}}]	14	1
367	2022-05-17 11:03:22.255638+00	5a8b4e9d-7535-45f9-88f5-b98a4d6739e8	test	2	[{"changed": {"name": "product image", "object": "ProductImage object (17)", "fields": ["Image"]}}]	14	1
368	2022-05-17 11:03:47.11581+00	6f08e634-24a2-41a1-8499-ca118340424e	test	2	[{"changed": {"name": "product image", "object": "ProductImage object (18)", "fields": ["Image"]}}]	14	1
369	2022-05-17 11:04:11.39199+00	94d11143-2a04-4906-9207-7cea91740ee3	213213	2	[{"changed": {"name": "product image", "object": "ProductImage object (19)", "fields": ["Image"]}}]	14	1
370	2022-05-17 11:04:43.095022+00	aa2cd16e-1f25-4a8d-b551-3944b7756ed8	10	2	[{"changed": {"name": "product image", "object": "ProductImage object (20)", "fields": ["Image"]}}]	14	1
371	2022-05-17 11:04:53.717663+00	e77fbff5-67c0-47d7-b543-33700af98b39	21321321	2	[{"added": {"name": "product image", "object": "ProductImage object (29)"}}]	14	1
372	2022-05-17 11:05:10.133267+00	f7ad725e-2713-452c-a4d6-3ce95bb43836	21321321	2	[{"changed": {"name": "product image", "object": "ProductImage object (12)", "fields": ["Image"]}}]	14	1
521	2022-05-22 12:19:31.591735+00	8	Tools	2	[{"changed": {"fields": ["Image"]}}]	19	1
373	2022-05-17 11:05:51.425149+00	a323b6a5-95e1-4281-8aef-df9aec42f5f7	lorem	2	[{"changed": {"name": "product image", "object": "ProductImage object (4)", "fields": ["Image"]}}]	14	1
374	2022-05-17 12:50:04.024317+00	2cdf790e-64bb-44bc-9629-a09b1331cef2	11	2	[{"changed": {"fields": ["Sale price"]}}]	14	1
375	2022-05-17 14:04:21.986565+00	443b5edd-68d9-48b0-ae9c-53648523ec58	test	2	[{"added": {"name": "product image", "object": "ProductImage object (30)"}}]	14	1
376	2022-05-17 14:10:40.995505+00	4	Server 1	3		19	1
377	2022-05-17 14:10:41.005491+00	5	server 2	3		19	1
378	2022-05-17 14:10:41.007499+00	6	Server 3	3		19	1
379	2022-05-17 14:10:41.009076+00	7	Server 4	3		19	1
380	2022-05-17 14:13:42.452127+00	8	Tools	1	[{"added": {}}]	19	1
381	2022-05-18 08:39:51.658821+00	12d9387b-15e5-44a6-ab0c-aba8cd5a6c0b	12321321	2	[{"added": {"name": "product image", "object": "ProductImage object (31)"}}]	14	1
382	2022-05-18 08:53:18.270647+00	232805b9-2c26-4841-a2e5-e9d182f9a4b1	sadsad	2	[{"added": {"name": "product image", "object": "ProductImage object (32)"}}]	14	1
383	2022-05-18 08:54:06.648989+00	232805b9-2c26-4841-a2e5-e9d182f9a4b1	sadsad	2	[{"added": {"name": "product image", "object": "ProductImage object (33)"}}, {"added": {"name": "product image", "object": "ProductImage object (34)"}}, {"added": {"name": "product image", "object": "ProductImage object (35)"}}]	14	1
384	2022-05-18 09:17:38.940141+00	7	Medical	1	[{"added": {}}]	12	1
385	2022-05-18 09:20:44.888644+00	8	Tools	2	[{"added": {"name": "translation", "object": "Tools: \\u0623\\u062f\\u0648\\u0627\\u062a"}}]	19	1
386	2022-05-18 09:30:52.849404+00	1	KMC Got Your Back	2	[{"added": {"name": "translation", "object": "\\"Beyond the bound of dental supplies\\": \\"\\u0645\\u0627 \\u0648\\u0631\\u0627\\u0621 \\u062d\\u062f\\u0648\\u062f \\u0645\\u0633\\u062a\\u0644\\u0632\\u0645\\u0627\\u062a \\u0637\\u0628 \\u0627\\u0644\\u0623\\u0633\\u0646\\u0627\\u0646\\""}}, {"added": {"name": "translation", "object": "Shop Now: \\u0627\\u0637\\u0644\\u0628 \\u0627\\u0644\\u0627\\u0646"}}]	46	1
387	2022-05-18 09:31:34.837488+00	3	KMC Got Your Back	2	[{"added": {"name": "translation", "object": "\\"Beyond the bound of dental supplies\\": \\"\\u0645\\u0627 \\u0648\\u0631\\u0627\\u0621 \\u062d\\u062f\\u0648\\u062f \\u0645\\u0633\\u062a\\u0644\\u0632\\u0645\\u0627\\u062a \\u0637\\u0628 \\u0627\\u0644\\u0623\\u0633\\u0646\\u0627\\u0646\\""}}, {"added": {"name": "translation", "object": "Videos: \\u0627\\u0637\\u0644\\u0628 \\u0627\\u0644\\u0627\\u0646"}}]	46	1
388	2022-05-18 09:32:16.314121+00	3	KMC Got Your Back	2	[{"changed": {"name": "translation", "object": "Videos: \\u0641\\u064a\\u062f\\u064a\\u0648", "fields": ["Text"]}}]	46	1
389	2022-05-18 09:33:10.788124+00	4	KMC30C	1	[{"added": {}}]	40	1
390	2022-05-18 09:34:55.918568+00	4	Best tutors ever	2	[{"changed": {"fields": ["Title"]}}, {"added": {"name": "translation", "object": "Best tutors ever: \\u0623\\u0641\\u0636\\u0644 \\u0627\\u0644\\u0645\\u0631\\u0634\\u062f\\u064a\\u0646 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0625\\u0637\\u0644\\u0627\\u0642"}}, {"added": {"name": "translation", "object": "\\"Beyond the bound of dental supplies\\": \\"\\u0645\\u0627 \\u0648\\u0631\\u0627\\u0621 \\u062d\\u062f\\u0648\\u062f \\u0645\\u0633\\u062a\\u0644\\u0632\\u0645\\u0627\\u062a \\u0637\\u0628 \\u0627\\u0644\\u0623\\u0633\\u0646\\u0627\\u0646\\""}}, {"added": {"name": "translation", "object": "Courses: \\u0627\\u0644\\u062f\\u0648\\u0631\\u0627\\u062a"}}]	46	1
391	2022-05-18 09:37:17.161895+00	2	We have the  best offers	2	[{"added": {"name": "translation", "object": "We have the  best offers: \\u0644\\u062f\\u064a\\u0646\\u0627 \\u0623\\u0641\\u0636\\u0644 \\u0627\\u0644\\u0639\\u0631\\u0648\\u0636"}}, {"added": {"name": "translation", "object": "\\"Beyond the bound of dental supplies\\": \\"\\u0645\\u0627 \\u0648\\u0631\\u0627\\u0621 \\u062d\\u062f\\u0648\\u062f \\u0645\\u0633\\u062a\\u0644\\u0632\\u0645\\u0627\\u062a \\u0637\\u0628 \\u0627\\u0644\\u0623\\u0633\\u0646\\u0627\\u0646\\""}}, {"added": {"name": "translation", "object": "Hot Offers: \\u0627\\u0644\\u0639\\u0631\\u0648\\u0636"}}]	46	1
392	2022-05-18 09:42:04.033511+00	12d9387b-15e5-44a6-ab0c-aba8cd5a6c0b	12321321	2	[{"changed": {"fields": ["Point price"]}}]	14	1
393	2022-05-18 09:53:54.442277+00	2882d660-7420-4d2a-b7a6-9ac8193bc534	test	2	[{"changed": {"fields": ["Point price"]}}]	14	1
394	2022-05-18 09:55:49.272552+00	27	Points object (27)	1	[{"added": {}}]	42	1
395	2022-05-18 10:01:21.000513+00	1	General object (1)	2	[{"changed": {"fields": ["Point value"]}}]	41	1
396	2022-05-18 10:10:42.276471+00	1	KMC Got Your Back	2	[{"changed": {"fields": ["Media"]}}]	46	1
397	2022-05-18 10:15:52.720528+00	3	KMC Got Your Back Video	2	[{"changed": {"fields": ["Title"]}}]	46	1
398	2022-05-18 11:56:58.255639+00	12d9387b-15e5-44a6-ab0c-aba8cd5a6c0b	12321321	2	[{"changed": {"fields": ["Stock"]}}]	14	1
399	2022-05-18 11:57:06.734475+00	2861ae8d-21da-4df3-85e5-3a3b1a0a1322	12321321	2	[{"changed": {"fields": ["Stock"]}}]	14	1
400	2022-05-18 11:58:18.373621+00	1	Best Invisible Braces in 2022: Read  Reviews and Compare	2	[{"changed": {"fields": ["Branch"]}}]	36	1
401	2022-05-18 11:58:53.171445+00	1	Best Invisible Braces in 2022: Read  Reviews and Compare	2	[{"changed": {"fields": ["Branch"]}}]	36	1
402	2022-05-18 11:59:21.253867+00	1	Best Invisible Braces in 2022: Read  Reviews and Compare	2	[{"changed": {"fields": ["Branch"]}}]	36	1
403	2022-05-18 12:00:53.877891+00	1	Best Invisible Braces in 2022: Read  Reviews and Compare	2	[{"changed": {"fields": ["Branch"]}}]	36	1
404	2022-05-18 12:01:12.249382+00	1	Best Invisible Braces in 2022: Read  Reviews and Compare	2	[{"changed": {"fields": ["Branch"]}}]	36	1
405	2022-05-18 12:06:03.271928+00	1	Best Invisible Braces in 2022: Read  Reviews and Compare	2	[{"changed": {"fields": ["Branch"]}}]	36	1
406	2022-05-18 13:03:22.014947+00	59a5acdd-2f1e-4685-b679-02b37d637fb8	Product One	2	[{"added": {"name": "product image", "object": "ProductImage object (36)"}}, {"added": {"name": "product image", "object": "ProductImage object (37)"}}, {"added": {"name": "product image", "object": "ProductImage object (38)"}}]	14	1
407	2022-05-18 13:54:20.919391+00	6	sentizre2	1	[{"added": {}}]	36	1
408	2022-05-18 13:59:09.769451+00	1	KMC Got Your Back	2	[{"changed": {"fields": ["Media"]}}]	46	1
409	2022-05-18 15:58:32.29753+00	3	KMC Got Your Back Video	2	[{"changed": {"fields": ["Media"]}}]	46	1
410	2022-05-18 16:11:13.635768+00	4	Best tutors ever	2	[]	46	1
411	2022-05-18 16:51:06.884047+00	b3c7ff8f-9c0b-4af3-89ad-7cf573aef0ac	The long-term influence of Open Access on the scientific and social impact of dental journal articles: An updated analysis	2	[{"changed": {"fields": ["Article title", "Article text", "Article writer", "Article department", "Article details text"]}}]	37	1
412	2022-05-18 17:36:35.392689+00	80	User: Loay - Order Code: c920c10f2022 - Date: 2022-05-18 - Register ID: None	3		43	1
413	2022-05-18 17:36:35.41976+00	78	User: mousa nagah - Order Code: 0f1d54732022 - Date: 2022-05-18 - Register ID: None	3		43	1
414	2022-05-18 17:36:35.421563+00	77	User: mousa nagah - Order Code: 868851f92022 - Date: 2022-05-18 - Register ID: None	3		43	1
415	2022-05-18 17:36:35.423968+00	76	User: mousa nagah - Order Code: af5909cd2022 - Date: 2022-05-18 - Register ID: None	3		43	1
416	2022-05-18 17:36:35.425979+00	75	User: mousa nagah - Order Code: af0333152022 - Date: 2022-05-18 - Register ID: None	3		43	1
417	2022-05-18 17:36:35.428006+00	74	User: mousa nagah - Order Code: 559dab012022 - Date: 2022-05-18 - Register ID: None	3		43	1
418	2022-05-18 17:36:35.430077+00	73	User: mousa nagah - Order Code: 470d8b852022 - Date: 2022-05-18 - Register ID: None	3		43	1
419	2022-05-18 17:36:35.431841+00	72	User: mousa nagah - Order Code: 4dde98592022 - Date: 2022-05-18 - Register ID: None	3		43	1
420	2022-05-18 17:36:35.433813+00	71	User: mousa nagah - Order Code: 556441482022 - Date: 2022-05-18 - Register ID: None	3		43	1
421	2022-05-18 17:36:35.435693+00	70	User: mousa nagah - Order Code: bd7513342022 - Date: 2022-05-18 - Register ID: None	3		43	1
422	2022-05-18 17:36:35.437759+00	69	User: mousa nagah - Order Code: 4cacaae92022 - Date: 2022-05-18 - Register ID: None	3		43	1
423	2022-05-18 17:36:35.439672+00	68	User: mousa nagah - Order Code: 316b99c42022 - Date: 2022-05-18 - Register ID: None	3		43	1
424	2022-05-18 17:36:35.442463+00	67	User: mousa nagah - Order Code: dbadec852022 - Date: 2022-05-18 - Register ID: None	3		43	1
425	2022-05-18 17:36:35.444719+00	66	User: mousa nagah - Order Code: b3c62ab52022 - Date: 2022-05-18 - Register ID: None	3		43	1
426	2022-05-18 17:36:35.44658+00	65	User: mousa nagah - Order Code: faa74bda2022 - Date: 2022-05-18 - Register ID: None	3		43	1
427	2022-05-18 17:36:35.448646+00	64	User: Mohamed Ahmed Maher - Order Code: 19ae49d82022 - Date: 2022-05-18 - Register ID: None	3		43	1
428	2022-05-18 17:36:35.450545+00	63	User: Loay - Order Code: 36ecafe22022 - Date: 2022-05-18 - Register ID: None	3		43	1
429	2022-05-18 17:36:35.452989+00	62	User: Loay - Order Code: ec2b747e2022 - Date: 2022-05-18 - Register ID: None	3		43	1
430	2022-05-18 17:36:35.45499+00	61	User: mousa nagah - Order Code: 5e68fd272022 - Date: 2022-05-18 - Register ID: None	3		43	1
431	2022-05-18 17:36:35.457007+00	60	User: mousa nagah - Order Code: 0f57f4ea2022 - Date: 2022-05-18 - Register ID: None	3		43	1
432	2022-05-18 17:36:35.458766+00	59	User: Loay - Order Code: e7e3ff6b2022 - Date: 2022-05-18 - Register ID: None	3		43	1
433	2022-05-18 17:36:35.460705+00	58	User: mousa nagah - Order Code: 692d184f2022 - Date: 2022-05-18 - Register ID: None	3		43	1
434	2022-05-18 17:36:35.466031+00	57	User: mousa nagah - Order Code: e33979d32022 - Date: 2022-05-18 - Register ID: None	3		43	1
435	2022-05-18 17:36:35.46794+00	56	User: mousa nagah - Order Code: 8754e9c82022 - Date: 2022-05-18 - Register ID: None	3		43	1
436	2022-05-18 17:36:35.469561+00	55	User: mousa nagah - Order Code: 16fa39e32022 - Date: 2022-05-18 - Register ID: None	3		43	1
437	2022-05-18 17:36:35.471111+00	54	User: Loay - Order Code: 27afb29f2022 - Date: 2022-05-18 - Register ID: None	3		43	1
438	2022-05-18 17:36:35.472549+00	53	User: Loay - Order Code: d8fc75ff2022 - Date: 2022-05-18 - Register ID: None	3		43	1
439	2022-05-18 17:36:35.474018+00	52	User: Mohamed Ahmed Maher - Order Code: fb1383e22022 - Date: 2022-05-18 - Register ID: None	3		43	1
440	2022-05-18 17:36:35.483302+00	51	User: Mohamed Ahmed Maher - Order Code: 63032b3e2022 - Date: 2022-05-18 - Register ID: None	3		43	1
441	2022-05-18 17:36:35.485255+00	50	User: Mohamed Ahmed Maher - Order Code: 93ffda932022 - Date: 2022-05-18 - Register ID: None	3		43	1
442	2022-05-18 17:36:35.48686+00	49	User: Mohamed Ahmed Maher - Order Code: 35c150d62022 - Date: 2022-05-18 - Register ID: None	3		43	1
443	2022-05-18 17:36:35.488511+00	48	User: Mohamed Ahmed Maher - Order Code: 23f2e5d32022 - Date: 2022-05-18 - Register ID: None	3		43	1
444	2022-05-18 17:36:35.49011+00	46	User: mousa nagah - Order Code: bc13acf82022 - Date: 2022-05-17 - Register ID: None	3		43	1
445	2022-05-18 17:36:35.491816+00	45	User: mousa nagah - Order Code: 937257432022 - Date: 2022-05-17 - Register ID: None	3		43	1
446	2022-05-18 17:36:35.499071+00	43	User: Eslam Ghanem - Order Code: b496d3712022 - Date: 2022-05-16 - Register ID: None	3		43	1
447	2022-05-18 17:36:35.500928+00	42	User: Eslam Ghanem - Order Code: 02dc7d452022 - Date: 2022-05-16 - Register ID: None	3		43	1
448	2022-05-18 17:36:35.502612+00	41	User: Eslam Ghanem - Order Code: 4e76c3202022 - Date: 2022-05-15 - Register ID: None	3		43	1
449	2022-05-18 17:36:35.504373+00	39	User: Eslam Ghanem - Order Code: 72d05f3a2022 - Date: 2022-05-12 - Register ID: None	3		43	1
450	2022-05-18 17:36:35.505941+00	38	User: Eslam Ghanem - Order Code: a78be1b02022 - Date: 2022-05-12 - Register ID: None	3		43	1
451	2022-05-18 17:36:35.510669+00	37	User: Eslam Ghanem - Order Code: 40f6b5af2022 - Date: 2022-05-12 - Register ID: None	3		43	1
452	2022-05-18 17:36:35.512968+00	36	User: Eslam Ghanem - Order Code: 0c8dd5462022 - Date: 2022-05-12 - Register ID: None	3		43	1
453	2022-05-18 17:36:35.514609+00	35	User: Eslam Ghanem - Order Code: 903849b92022 - Date: 2022-05-12 - Register ID: None	3		43	1
454	2022-05-18 17:36:35.516874+00	34	User: Eslam Ghanem - Order Code: fb666ec52022 - Date: 2022-05-12 - Register ID: None	3		43	1
455	2022-05-18 17:36:35.518681+00	32	User: Eslam Ghanem - Order Code: 529a5acf2022 - Date: 2022-05-12 - Register ID: None	3		43	1
456	2022-05-18 17:36:35.520509+00	31	User: Eslam Ghanem - Order Code: 57d845402022 - Date: 2022-05-12 - Register ID: None	3		43	1
457	2022-05-18 17:36:35.522027+00	30	User: Eslam Ghanem - Order Code: 2e8b58372022 - Date: 2022-05-12 - Register ID: None	3		43	1
458	2022-05-18 17:36:35.523753+00	29	User: Eslam Ghanem - Order Code: 6e72cbda2022 - Date: 2022-05-12 - Register ID: None	3		43	1
459	2022-05-18 17:36:35.525439+00	28	User: Eslam Ghanem - Order Code: 5af4fd6d2022 - Date: 2022-05-11 - Register ID: None	3		43	1
460	2022-05-18 17:36:35.527303+00	25	User: mousa nagah - Order Code: 0d9357972022 - Date: 2022-04-27 - Register ID: None	3		43	1
461	2022-05-18 17:36:35.529147+00	23	User: Eslam Ghanem - Order Code: 3e1265382022 - Date: 2022-04-25 - Register ID: None	3		43	1
462	2022-05-18 17:36:35.530828+00	21	User: Eslam Ghanem - Order Code: 090f12892022 - Date: 2022-04-25 - Register ID: None	3		43	1
463	2022-05-18 17:36:35.532663+00	19	User: Abdelrahman Hashem - Order Code: b8d9baca2022 - Date: 2022-04-21 - Register ID: None	3		43	1
464	2022-05-18 17:36:35.534404+00	16	User: Abdelrahman Hashem - Order Code: 04260e702022 - Date: 2022-04-21 - Register ID: None	3		43	1
465	2022-05-18 17:36:35.536149+00	11	User: mousa nagah - Order Code: 4b9bbc682022 - Date: 2022-04-18 - Register ID: None	3		43	1
466	2022-05-18 17:36:35.537639+00	10	User: mousa nagah - Order Code: a63fad272022 - Date: 2022-04-18 - Register ID: None	3		43	1
467	2022-05-18 17:36:35.539469+00	9	User: mousa nagah - Order Code: edd992f92022 - Date: 2022-04-18 - Register ID: None	3		43	1
468	2022-05-18 17:36:35.541244+00	8	User: mousa nagah - Order Code: 48a3ec3c2022 - Date: 2022-04-18 - Register ID: None	3		43	1
469	2022-05-18 17:36:35.544473+00	7	User: mousa nagah - Order Code: a187865e2022 - Date: 2022-04-18 - Register ID: None	3		43	1
470	2022-05-18 17:36:35.546632+00	6	User: mousa nagah - Order Code: 50b20f7d2022 - Date: 2022-04-18 - Register ID: None	3		43	1
471	2022-05-18 17:36:35.54879+00	5	User: mousa nagah - Order Code: f91ae0202022 - Date: 2022-04-18 - Register ID: None	3		43	1
472	2022-05-18 17:36:35.55095+00	4	User: mousa nagah - Order Code: 7e29f4a92022 - Date: 2022-04-18 - Register ID: None	3		43	1
478	2022-05-19 08:59:22.738373+00	45	Points object (45)	1	[{"added": {}}]	42	1
479	2022-05-19 09:04:31.873244+00	46	Points object (46)	1	[{"added": {}}]	42	1
480	2022-05-19 09:32:18.168132+00	46	Points object (46)	2	[{"changed": {"fields": ["Points"]}}]	42	1
481	2022-05-19 09:38:56.30131+00	4	Best tutors ever	2	[{"changed": {"fields": ["Media"]}}]	46	1
482	2022-05-19 09:39:25.977479+00	4	Best tutors ever	2	[{"changed": {"fields": ["Media"]}}]	46	1
483	2022-05-19 09:41:24.644241+00	4	Best tutors ever	2	[{"changed": {"fields": ["Media"]}}]	46	1
484	2022-05-19 09:41:45.717885+00	46	Points object (46)	2	[]	42	1
485	2022-05-19 09:46:55.801102+00	12d9387b-15e5-44a6-ab0c-aba8cd5a6c0b	dental-handpice	2	[{"changed": {"fields": ["Title", "Description", "Stock"]}}]	14	1
486	2022-05-19 09:48:40.489959+00	232805b9-2c26-4841-a2e5-e9d182f9a4b1	LED Curing light-	2	[{"changed": {"fields": ["Title", "Description"]}}]	14	1
487	2022-05-19 10:18:42.654073+00	1d65f60d-7041-4ac1-80f0-80663a3c86fc	Pliers	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (39)"}}, {"added": {"name": "product image", "object": "ProductImage object (40)"}}, {"added": {"name": "product image", "object": "ProductImage object (41)"}}, {"added": {"name": "product video url", "object": "ProductVideoUrl object (3)"}}]	14	1
488	2022-05-19 10:22:12.704386+00	1d65f60d-7041-4ac1-80f0-80663a3c86fc	Pliers	2	[{"changed": {"name": "product image", "object": "ProductImage object (39)", "fields": ["Image"]}}, {"changed": {"name": "product image", "object": "ProductImage object (40)", "fields": ["Image"]}}, {"changed": {"name": "product image", "object": "ProductImage object (41)", "fields": ["Image"]}}]	14	1
489	2022-05-19 10:29:53.235153+00	2861ae8d-21da-4df3-85e5-3a3b1a0a1322	Dental Chair	2	[{"changed": {"fields": ["Type", "Title", "Description", "Price", "Sale price", "Stock", "Rate"]}}, {"added": {"name": "product image", "object": "ProductImage object (42)"}}, {"added": {"name": "product image", "object": "ProductImage object (43)"}}, {"changed": {"name": "product image", "object": "ProductImage object (27)", "fields": ["Image"]}}]	14	1
490	2022-05-19 10:35:37.19074+00	2882d660-7420-4d2a-b7a6-9ac8193bc534	Material	2	[{"changed": {"fields": ["Type", "Title", "Description"]}}]	14	1
491	2022-05-19 10:41:17.915311+00	2882d660-7420-4d2a-b7a6-9ac8193bc534	Material	2	[{"changed": {"fields": ["Description"]}}]	14	1
492	2022-05-19 10:58:24.976398+00	2cdf790e-64bb-44bc-9629-a09b1331cef2	COXO C-SMART MINI 2 WIRELESS ENDO MOTORS	2	[{"changed": {"fields": ["Type", "Branch", "Title", "Description"]}}, {"added": {"name": "translation", "object": "COXO C-SMART MINI 2 WIRELESS ENDO MOTORS: \\u062c\\u0647\\u0627\\u0632"}}, {"added": {"name": "product image", "object": "ProductImage object (44)"}}, {"added": {"name": "product image", "object": "ProductImage object (45)"}}, {"added": {"name": "product image", "object": "ProductImage object (46)"}}, {"changed": {"name": "product image", "object": "ProductImage object (26)", "fields": ["Image"]}}]	14	1
493	2022-05-19 11:58:08.393723+00	4	ProductVideoUrl object (4)	1	[{"added": {}}]	16	1
494	2022-05-19 12:33:49.82151+00	35347840-dbb6-4e4d-aed4-9198b165cb68	fake product	2	[{"changed": {"fields": ["Type", "Branch", "Title", "Description"]}}]	14	1
495	2022-05-19 12:35:19.731127+00	402c1ae4-7693-445c-abe6-5724e1307acc	Product 101	2	[{"changed": {"fields": ["Branch", "Title", "Description"]}}]	14	1
496	2022-05-19 12:44:28.733346+00	40d16977-6f41-4f83-beaa-3d3ddd60fbc1	Product 103	2	[{"changed": {"fields": ["Branch", "Title", "Description"]}}]	14	1
497	2022-05-19 12:51:53.887815+00	44e71a86-ca67-464d-bcf7-35879a41df4a	this is a fake text to test the long title responsive	2	[{"changed": {"fields": ["Type", "Title", "Description"]}}]	14	1
498	2022-05-19 12:53:20.728931+00	94d11143-2a04-4906-9207-7cea91740ee3	this is a fake text to test the long Title responsive	2	[{"changed": {"fields": ["Title", "Description"]}}]	14	1
499	2022-05-19 12:55:09.133715+00	aa2cd16e-1f25-4a8d-b551-3944b7756ed8	simple one	2	[{"changed": {"fields": ["Type", "Branch", "Title", "Description"]}}]	14	1
500	2022-05-19 12:55:24.781591+00	5a8b4e9d-7535-45f9-88f5-b98a4d6739e8	test	2	[{"changed": {"fields": ["Type"]}}]	14	1
501	2022-05-19 12:57:35.130817+00	6f08e634-24a2-41a1-8499-ca118340424e	test out of stock	2	[{"changed": {"fields": ["Title", "Description"]}}]	14	1
502	2022-05-19 12:57:57.649681+00	443b5edd-68d9-48b0-ae9c-53648523ec58	test out of stock	2	[{"changed": {"fields": ["Title", "Description"]}}]	14	1
503	2022-05-19 12:59:48.651185+00	f7ad725e-2713-452c-a4d6-3ce95bb43836	21321321	3		14	1
504	2022-05-19 13:01:32.518675+00	6d235744-18af-4f30-80c1-80bb5bddd256	test out of stock	2	[{"changed": {"fields": ["Type", "Title"]}}]	14	1
505	2022-05-19 13:03:01.010585+00	6f08e634-24a2-41a1-8499-ca118340424e	test out of stock after add one	2	[{"changed": {"fields": ["Title"]}}]	14	1
506	2022-05-19 13:03:46.895391+00	5a8b4e9d-7535-45f9-88f5-b98a4d6739e8	test out of stock after add one	2	[{"changed": {"fields": ["Title", "Stock"]}}]	14	1
507	2022-05-19 13:04:19.772292+00	a323b6a5-95e1-4281-8aef-df9aec42f5f7	test out of stock	2	[{"changed": {"fields": ["Title"]}}]	14	1
508	2022-05-19 13:05:27.462874+00	402c1ae4-7693-445c-abe6-5724e1307acc	test out of stock	2	[{"changed": {"fields": ["Type", "Title", "Stock"]}}]	14	1
509	2022-05-19 13:06:12.38084+00	59bafef1-f6df-4610-a888-bcf65d76d2a1	test out of stock after add one	2	[{"changed": {"fields": ["Type", "Title", "Stock"]}}]	14	1
510	2022-05-22 11:50:15.187921+00	1	About Us	2	[{"changed": {"fields": ["About image", "Testimonial image"]}}]	9	1
511	2022-05-22 11:54:35.762173+00	b3c7ff8f-9c0b-4af3-89ad-7cf573aef0ac	The long-term influence of Open Access on the scientific and social impact of dental journal articles: An updated analysis	2	[{"changed": {"fields": ["Article image"]}}]	37	1
512	2022-05-22 11:55:23.780795+00	49f32c36-80d5-439e-8643-91c60451a63e	Best Invisible Braces in 2022: Read  Reviews and Compare	2	[{"changed": {"fields": ["Article image"]}}]	37	1
513	2022-05-22 11:55:39.353689+00	43106e4b-996a-4e61-ab4e-bda2ade04413	6 Best Electric Toothbrushes for  Healthier Teeth	2	[{"changed": {"fields": ["Article image"]}}]	37	1
514	2022-05-22 11:56:02.067702+00	72020951-90b0-46ee-9d53-b93aeab9bc6d	Best Invisible Braces in 2022: Read Reviews and Compar	2	[{"changed": {"fields": ["Article image"]}}]	37	1
515	2022-05-22 11:56:41.270326+00	72020951-90b0-46ee-9d53-b93aeab9bc6d	Best Invisible Braces in 2022: Read Reviews and Compar	2	[{"changed": {"fields": ["Article image"]}}]	37	1
516	2022-05-22 11:56:51.875061+00	16e7e004-25cb-405a-80d9-4a52dac059da	6 Best Electric Toothbrushes for Healthier Teeth	2	[{"changed": {"fields": ["Article image"]}}]	37	1
517	2022-05-22 11:57:06.571505+00	8050690a-5a5a-4734-aa0d-017457418a08	Best Invisible Braces in 2022: Read Reviews and Compar	2	[{"changed": {"fields": ["Article image"]}}]	37	1
518	2022-05-22 12:07:12.451279+00	1	Contact us	2	[{"changed": {"fields": ["Image"]}}]	8	1
519	2022-05-22 12:19:00.930399+00	8	Tools	2	[{"changed": {"fields": ["Image"]}}]	19	1
520	2022-05-22 12:19:18.151041+00	2	Material	2	[{"changed": {"fields": ["Image"]}}]	19	1
522	2022-05-22 12:19:53.248838+00	1	Devices	2	[{"changed": {"fields": ["Image"]}}]	19	1
523	2022-05-22 15:26:44.239053+00	1	About Us	2	[{"changed": {"fields": ["About image", "Testimonial image"]}}]	9	1
524	2022-05-22 15:42:01.222737+00	2	We have the  best offers	2	[{"changed": {"fields": ["Media"]}}]	46	1
525	2022-05-22 15:42:55.523495+00	1	KMC Got Your Back	2	[{"changed": {"fields": ["Media"]}}]	46	1
526	2022-05-22 15:43:40.820206+00	4	Best tutors ever	2	[{"changed": {"fields": ["Media"]}}]	46	1
527	2022-05-22 15:46:31.484894+00	1	KMC Got Your Back	2	[{"changed": {"fields": ["Media"]}}]	46	1
528	2022-05-22 15:51:12.515029+00	5	ProductVideoUrl object (5)	1	[{"added": {}}]	16	1
529	2022-05-22 15:53:26.941947+00	5	ProductVideoUrl object (5)	3		16	1
530	2022-05-22 15:57:26.782+00	1	KMC Got Your Back	2	[{"changed": {"fields": ["Media"]}}]	46	1
531	2022-05-23 09:30:14.449102+00	3	KMC Got Your Back Video	3		46	1
532	2022-05-23 11:51:49.2199+00	8050690a-5a5a-4734-aa0d-017457418a08	Best Invisible Braces in 2022: Read Reviews and Compar	2	[{"changed": {"fields": ["Article image"]}}]	37	1
533	2022-05-23 11:54:07.477383+00	49f32c36-80d5-439e-8643-91c60451a63e	Best Invisible Braces in 2022: Read  Reviews and Compare	2	[{"changed": {"fields": ["Article image"]}}]	37	1
534	2022-05-23 11:54:18.75685+00	43106e4b-996a-4e61-ab4e-bda2ade04413	6 Best Electric Toothbrushes for  Healthier Teeth	2	[{"changed": {"fields": ["Article image"]}}]	37	1
535	2022-05-23 11:57:10.69209+00	b3c7ff8f-9c0b-4af3-89ad-7cf573aef0ac	The long-term influence of Open Access on the scientific and social impact of dental journal articles: An updated analysis	2	[{"changed": {"fields": ["Article image"]}}]	37	1
536	2022-05-23 11:57:57.201072+00	b3c7ff8f-9c0b-4af3-89ad-7cf573aef0ac	The long-term influence of Open Access on the scientific and social impact of dental journal articles: An updated analysis	2	[{"changed": {"fields": ["Article image"]}}]	37	1
537	2022-05-23 11:59:52.087586+00	16e7e004-25cb-405a-80d9-4a52dac059da	6 Best Electric Toothbrushes for Healthier Teeth	2	[{"changed": {"fields": ["Article image"]}}]	37	1
538	2022-05-24 10:26:21.139746+00	ca622a1a-ca35-4ee3-9d6f-b1ed7042d59c	test	1	[{"added": {}}]	37	1
539	2022-05-26 11:42:28.462551+00	39	Order Code :  f1b63b152022 - Date : 2022-05-26	2	[{"changed": {"name": "refund item", "object": "Order Code : f1b63b152022 - dental-handpice - 1", "fields": ["To refund quantity"]}}]	47	1
540	2022-05-26 12:01:22.297978+00	40	Order Code :  09f64aa92022 - Date : 2022-05-26	2	[{"changed": {"name": "refund item", "object": "Order Code : 09f64aa92022 - dental-handpice - 2", "fields": ["To refund quantity"]}}]	47	1
541	2022-05-29 09:12:22.634436+00	1	KMC Got Your Back	2	[{"changed": {"fields": ["Media", "Quote", "Button text"]}}]	46	1
542	2022-06-06 10:05:51.345085+00	4	Endo pace	2	[{"changed": {"fields": ["Title", "Media", "Quote", "Button text", "Button link"]}}]	46	1
543	2022-06-06 10:08:50.567939+00	2	Woson	1	[{"added": {}}, {"added": {"name": "translation", "object": "Woson: \\u0627\\u0646\\u062f\\u0648 \\u0628\\u064a\\u0633"}}]	13	1
544	2022-06-06 10:16:02.247244+00	004c331d-24a6-48c4-b08c-f4e62582a017	Endo pace	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (47)"}}, {"added": {"name": "product video url", "object": "ProductVideoUrl object (6)"}}]	14	1
545	2022-06-06 10:28:56.913543+00	c27853df-0cf8-4116-b8c5-2c38c25c8668	ISLD woodpecker booth	1	[{"added": {}}]	37	1
546	2022-06-06 10:40:54.005881+00	7	203º Curso Online de Woodpecker	1	[{"added": {}}]	36	1
547	2022-06-06 13:31:00.246192+00	16	01010081222	3		21	1
548	2022-06-06 13:58:25.36506+00	26	01010081222	3		21	1
549	2022-06-06 14:33:33.799888+00	27	01010081222	2	[{"changed": {"fields": ["Is active"]}}]	21	1
550	2022-06-06 14:34:41.693573+00	27	01010081222	3		21	1
551	2022-06-06 14:35:41.517452+00	29	01010081222	2	[{"changed": {"fields": ["Is active"]}}]	21	1
552	2022-06-06 16:05:44.587405+00	1	Contact us	2	[{"changed": {"fields": ["Address url"]}}]	8	1
553	2022-06-07 10:36:11.898097+00	12d9387b-15e5-44a6-ab0c-aba8cd5a6c0b	dental-handpice	2	[{"added": {"name": "product video url", "object": "ProductVideoUrl object (7)"}}]	14	1
554	2022-06-07 14:50:43.512596+00	7	203º Curso Online de Woodpecker	2	[{"changed": {"fields": ["Iframe link"]}}]	36	1
555	2022-06-07 15:46:11.18082+00	6	sentizre2	2	[{"changed": {"fields": ["Iframe link"]}}]	36	1
556	2022-06-08 08:18:12.880272+00	9	test	1	[{"added": {}}]	19	1
557	2022-06-19 08:58:33.969091+00	004c331d-24a6-48c4-b08c-f4e62582a017	Endo pace	3		14	1
558	2022-06-19 08:58:33.99776+00	12d9387b-15e5-44a6-ab0c-aba8cd5a6c0b	dental-handpice	3		14	1
559	2022-06-19 08:58:33.99987+00	1d65f60d-7041-4ac1-80f0-80663a3c86fc	Pliers	3		14	1
560	2022-06-19 08:58:34.001909+00	232805b9-2c26-4841-a2e5-e9d182f9a4b1	LED Curing light-	3		14	1
561	2022-06-19 08:58:34.004502+00	2861ae8d-21da-4df3-85e5-3a3b1a0a1322	Dental Chair	3		14	1
562	2022-06-19 08:58:34.006547+00	2882d660-7420-4d2a-b7a6-9ac8193bc534	Material	3		14	1
563	2022-06-19 08:58:34.008065+00	2cdf790e-64bb-44bc-9629-a09b1331cef2	COXO C-SMART MINI 2 WIRELESS ENDO MOTORS	3		14	1
564	2022-06-19 08:58:34.010403+00	35347840-dbb6-4e4d-aed4-9198b165cb68	fake product	3		14	1
565	2022-06-19 08:58:34.011824+00	402c1ae4-7693-445c-abe6-5724e1307acc	test out of stock	3		14	1
566	2022-06-19 08:58:34.013046+00	40d16977-6f41-4f83-beaa-3d3ddd60fbc1	Product 103	3		14	1
567	2022-06-19 08:58:34.014423+00	443b5edd-68d9-48b0-ae9c-53648523ec58	test out of stock	3		14	1
568	2022-06-19 08:58:34.016791+00	44e71a86-ca67-464d-bcf7-35879a41df4a	this is a fake text to test the long title responsive	3		14	1
569	2022-06-19 08:58:34.019371+00	59a5acdd-2f1e-4685-b679-02b37d637fb8	Product One	3		14	1
570	2022-06-19 08:58:34.020689+00	59bafef1-f6df-4610-a888-bcf65d76d2a1	test out of stock after add one	3		14	1
571	2022-06-19 08:58:34.022395+00	5a8b4e9d-7535-45f9-88f5-b98a4d6739e8	test out of stock after add one	3		14	1
572	2022-06-19 08:58:34.024193+00	6d235744-18af-4f30-80c1-80bb5bddd256	test out of stock	3		14	1
573	2022-06-19 08:58:34.025901+00	6f08e634-24a2-41a1-8499-ca118340424e	test out of stock after add one	3		14	1
574	2022-06-19 08:58:34.031265+00	846d4628-2dc4-4ce4-af25-dd5738d2b73b	Lorem ipsum dolor set	3		14	1
575	2022-06-19 08:58:34.032924+00	94d11143-2a04-4906-9207-7cea91740ee3	this is a fake text to test the long Title responsive	3		14	1
576	2022-06-19 08:58:34.034221+00	a323b6a5-95e1-4281-8aef-df9aec42f5f7	test out of stock	3		14	1
577	2022-06-19 08:58:34.035487+00	aa2cd16e-1f25-4a8d-b551-3944b7756ed8	simple one	3		14	1
578	2022-06-19 08:58:59.47795+00	c27853df-0cf8-4116-b8c5-2c38c25c8668	ISLD woodpecker booth	3		37	1
579	2022-06-19 08:58:59.511296+00	ca622a1a-ca35-4ee3-9d6f-b1ed7042d59c	test	3		37	1
580	2022-06-19 08:58:59.517527+00	b3c7ff8f-9c0b-4af3-89ad-7cf573aef0ac	The long-term influence of Open Access on the scientific and social impact of dental journal articles: An updated analysis	3		37	1
674	2022-07-26 06:58:55.487366+00	21	Retraction cords	1	[{"added": {}}]	18	1
581	2022-06-19 08:58:59.521401+00	49f32c36-80d5-439e-8643-91c60451a63e	Best Invisible Braces in 2022: Read  Reviews and Compare	3		37	1
582	2022-06-19 08:58:59.531128+00	43106e4b-996a-4e61-ab4e-bda2ade04413	6 Best Electric Toothbrushes for  Healthier Teeth	3		37	1
583	2022-06-19 08:58:59.534415+00	72020951-90b0-46ee-9d53-b93aeab9bc6d	Best Invisible Braces in 2022: Read Reviews and Compar	3		37	1
584	2022-06-19 08:58:59.539624+00	16e7e004-25cb-405a-80d9-4a52dac059da	6 Best Electric Toothbrushes for Healthier Teeth	3		37	1
585	2022-06-19 08:58:59.543932+00	8050690a-5a5a-4734-aa0d-017457418a08	Best Invisible Braces in 2022: Read Reviews and Compar	3		37	1
586	2022-06-19 08:59:14.892521+00	1	Operation	3		12	1
587	2022-06-19 08:59:14.909619+00	2	Dental	3		12	1
588	2022-06-19 08:59:14.911776+00	3	Sanetizers	3		12	1
589	2022-06-19 08:59:14.913461+00	7	Medical	3		12	1
590	2022-06-19 08:59:24.782257+00	1	Woodpecker	3		13	1
591	2022-06-19 08:59:24.804654+00	2	Woson	3		13	1
592	2022-06-19 08:59:46.226977+00	1	Devices	3		19	1
593	2022-06-19 08:59:46.254111+00	2	Material	3		19	1
594	2022-06-19 08:59:46.264319+00	8	Tools	3		19	1
595	2022-06-19 08:59:46.271038+00	9	test	3		19	1
596	2022-06-19 09:39:05.189548+00	10	Devices	1	[{"added": {}}]	19	1
597	2022-06-19 09:39:35.04746+00	10	Devices	3		19	1
598	2022-06-19 10:19:52.305329+00	11	Devices	1	[{"added": {}}, {"added": {"name": "translation", "object": "Devices: \\u0623\\u062c\\u0647\\u0632\\u0629"}}]	19	1
599	2022-06-19 10:21:49.692853+00	8	Operative	1	[{"added": {}}, {"added": {"name": "translation", "object": "Operative: \\u062d\\u0634\\u0648"}}, {"added": {"name": "sub branch", "object": "Light cures"}}, {"added": {"name": "sub branch", "object": "High speed conta-angles"}}]	12	1
600	2022-06-19 10:22:41.182092+00	3	Woodpecker	1	[{"added": {}}, {"added": {"name": "translation", "object": "Woodpecker: \\u0648\\u0648\\u062f\\u0628\\u064a\\u0643\\u0631"}}]	13	1
601	2022-06-19 10:28:57.796444+00	ccc7cccf-0d02-4c98-aeec-928390dbad8f	Led F	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (48)"}}, {"added": {"name": "product video url", "object": "ProductVideoUrl object (8)"}}]	14	1
602	2022-06-19 10:45:18.177544+00	4	Woson	1	[{"added": {}}, {"added": {"name": "translation", "object": "Woson: \\u0648\\u0648\\u0633\\u0648\\u0646"}}]	13	1
603	2022-06-19 10:47:25.838562+00	9	Steam Sterilizers	1	[{"added": {}}, {"added": {"name": "sub branch", "object": "Class B"}}, {"added": {"name": "sub branch", "object": "Class N"}}]	12	1
604	2022-06-19 10:53:41.40752+00	cf47ba15-2d0c-487f-9f03-8a99768eedcb	Tanda 18L	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (49)"}}, {"added": {"name": "product image", "object": "ProductImage object (50)"}}, {"added": {"name": "product video url", "object": "ProductVideoUrl object (9)"}}, {"added": {"name": "product video url", "object": "ProductVideoUrl object (10)"}}]	14	1
605	2022-06-19 11:26:52.981925+00	1a1b66e9-d558-478d-8a6b-b0a9885a995f	How to brush your teeth properly	1	[{"added": {}}]	37	1
606	2022-06-19 11:36:01.459955+00	8	𝐖𝐨𝐨𝐝𝐩𝐞𝐜𝐤𝐞𝐫 𝐎𝐧𝐥𝐢𝐧𝐞 𝐂𝐨𝐮𝐫𝐬𝐞𝐬 𝐍𝐨.202	1	[{"added": {}}]	36	1
607	2022-06-26 11:44:21.792286+00	ccc7cccf-0d02-4c98-aeec-928390dbad8f	Led F	2	[{"changed": {"fields": ["Point price", "Stock"]}}, {"added": {"name": "product image", "object": "ProductImage object (51)"}}, {"added": {"name": "product image", "object": "ProductImage object (52)"}}, {"added": {"name": "product image", "object": "ProductImage object (53)"}}, {"deleted": {"name": "product image", "object": "ProductImage object (None)"}}]	14	1
608	2022-06-26 14:02:10.918494+00	12	Materials	1	[{"added": {}}, {"added": {"name": "translation", "object": "Materials: \\u0627\\u0644\\u0645\\u0633\\u062a\\u0644\\u0632\\u0645\\u0627\\u062a"}}]	19	1
609	2022-06-26 14:03:08.226602+00	5	Philips Zoom	1	[{"added": {}}, {"added": {"name": "translation", "object": "Philips Zoom: \\u0641\\u064a\\u0644\\u064a\\u0628\\u0633 \\u0632\\u0648\\u0648\\u0645"}}]	13	1
610	2022-06-26 14:18:46.837032+00	10	Cosmetics	1	[{"added": {}}, {"added": {"name": "translation", "object": "Cosmetics: \\u0627\\u0644\\u062a\\u062c\\u0645\\u064a\\u0644"}}]	12	1
611	2022-06-26 14:20:20.300337+00	8	Office Bleaching	1	[{"added": {}}, {"added": {"name": "translation", "object": "Office Bleaching: \\u062a\\u0628\\u064a\\u064a\\u0636 \\u0641\\u0649 \\u0627\\u0644\\u0639\\u064a\\u0627\\u062f\\u0629"}}]	18	1
612	2022-06-26 14:20:46.728413+00	9	Home Bleaching	1	[{"added": {}}, {"added": {"name": "translation", "object": "Home Bleaching: \\u062a\\u0628\\u064a\\u064a\\u0636 \\u0645\\u0646\\u0632\\u0644\\u0649"}}]	18	1
613	2022-06-26 15:41:34.013862+00	d05660e8-8dca-404b-bd87-88d45542edad	gg	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (54)"}}]	14	1
614	2022-06-26 15:41:40.894753+00	d05660e8-8dca-404b-bd87-88d45542edad	gg	3		14	1
615	2022-06-27 09:41:04.136613+00	8	𝐖𝐨𝐨𝐝𝐩𝐞𝐜𝐤𝐞𝐫 𝐎𝐧𝐥𝐢𝐧𝐞 𝐂𝐨𝐮𝐫𝐬𝐞𝐬 𝐍𝐨.202	2	[{"changed": {"fields": ["Brand"]}}]	36	1
616	2022-06-27 09:41:28.961289+00	1	HomeDetails object (1)	1	[{"added": {}}]	49	1
617	2022-06-27 13:51:31.51217+00	03b72a45-05f7-4cc9-8e25-95365bf03849	Zoom single kit	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (55)"}}, {"added": {"name": "product image", "object": "ProductImage object (56)"}}]	14	1
618	2022-06-27 14:23:59.023969+00	03b72a45-05f7-4cc9-8e25-95365bf03849	Zoom single kit	2	[{"changed": {"fields": ["Stock"]}}, {"added": {"name": "translation", "object": "25% Hydrogen Peroxide\\r\\nWhiten up to 8 shades in one visit only\\r\\none kit is sufficient for 4 sessions. \\r\\nEach session is for 15 minutes.: \\u064a\\u062d\\u062a\\u0648\\u064a \\u0639\\u0644\\u0649 \\u0662\\u0665\\u066a \\u0647\\u064a\\u062f\\u0631\\u0648\\u062c\\u064a\\u0646 \\u0628\\u064a\\u0631\\u0648\\u0643\\u0633\\u064a\\u062f\\r\\n\\u0627\\u0633\\u0646\\u0627\\u0646 \\u062a\\u0635\\u0644 \\u0625\\u0644\\u0649 \\u0668 \\u062f\\u0631\\u062c\\u0627\\u062a \\u0623\\u0643\\u062b\\u0631 \\u0628\\u064a\\u0627\\u0636\\u0627 \\u0641\\u0649 \\u062c\\u0644\\u0633\\u0629 \\u0648\\u0627\\u062d\\u062f\\u0629 \\u0641\\u0642\\u0637\\r\\n\\u0627\\u0644\\u0643\\u064a\\u062a \\u062a\\u0643\\u0641\\u0649 \\u0664 \\u062c\\u0644\\u0633\\u0627\\u062a\\r\\n\\u0627\\u0644\\u062c\\u0644\\u0633\\u0629 \\u0627\\u0644\\u0648\\u0627\\u062d\\u062f\\u0629 \\u062a\\u0623\\u062e\\u0630 \\u0661\\u0665 \\u062f\\u0642\\u064a\\u0642\\u0629"}}, {"added": {"name": "product video url", "object": "ProductVideoUrl object (11)"}}, {"added": {"name": "product video url", "object": "ProductVideoUrl object (12)"}}, {"added": {"name": "product video url", "object": "ProductVideoUrl object (13)"}}]	14	1
633	2022-06-29 14:39:55.560939+00	165144d1-88c4-470e-b35f-dd6071d0da33	King Kong (Japanese Bearings)	1	[{"added": {}}, {"added": {"name": "translation", "object": "\\u2022 Anti-drop contra-angle up to 1 m distance.\\r\\n\\u2022 Japanese bearings\\r\\n\\u2022 Push button contra-angle: \\u0636\\u062f \\u0627\\u0644\\u0635\\u062f\\u0645\\u0627\\u062a \\u0645\\u0646 \\u0639\\u0644\\u0649 \\u0628\\u0639\\u062f \\u0661 \\u0645\\u062a\\u0631\\r\\n\\r\\n\\u0631\\u0645\\u0627\\u0646 \\u0628\\u0644\\u064a \\u064a\\u0627\\u0628\\u0627\\u0646\\u064a"}}, {"added": {"name": "product image", "object": "ProductImage object (71)"}}, {"added": {"name": "product image", "object": "ProductImage object (72)"}}]	14	1
755	2022-09-29 10:46:50.642878+00	1	HomeDetails object (1)	2	[]	49	31
619	2022-06-27 14:48:24.265735+00	eafb75a8-4bb7-499c-89c3-adca04e1a6ad	Zoom NiteWhite 22% CP	1	[{"added": {}}, {"added": {"name": "translation", "object": "22% Carbamide Peroxide.\\r\\n3 syringes are needed for one complete case.\\r\\nEach syringe is used for 3 days.: \\u0662\\u0662\\u066a \\u0643\\u0627\\u0631\\u0628\\u0627\\u0645\\u064a\\u062f \\u0628\\u064a\\u0631\\u0648\\u0643\\u0633\\u064a\\u062f\\r\\n\\u0663 \\u0633\\u0631\\u0646\\u062c\\u0627\\u062a \\u0645\\u0637\\u0644\\u0648\\u0628\\u0629 \\u0644\\u0644\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0648\\u0627\\u062d\\u062f\\u0629\\r\\n\\u0627\\u0644\\u0633\\u0631\\u0646\\u062c\\u0629 \\u0627\\u0644\\u0648\\u0627\\u062d\\u062f\\u0629 \\u062a\\u0643\\u0641\\u0649 \\u0644\\u062b\\u0644\\u0627\\u062b\\u0629 \\u0627\\u064a\\u0627\\u0645"}}, {"added": {"name": "product image", "object": "ProductImage object (57)"}}, {"added": {"name": "product image", "object": "ProductImage object (58)"}}]	14	1
620	2022-06-27 15:09:19.547924+00	ccc7cccf-0d02-4c98-aeec-928390dbad8f	Led F	2	[{"changed": {"fields": ["Description", "Price", "Sale price", "Point price", "Stock"]}}, {"added": {"name": "translation", "object": "\\u2022 Light meter is attached.\\r\\n\\u2022 Three working modes (Low, Normal, High)\\r\\n\\u2022 Built in fan to reduce heat generation.\\r\\n\\u2022 Automatic memory: Avoid setting frequently.\\r\\n\\u2022 Ergonomic design for comfortable use.: \\u0645\\u0642\\u064a\\u0627\\u0633 \\u0627\\u0644\\u0636\\u0648\\u0621 \\u0641\\u064a \\u0627\\u0644\\u0642\\u0627\\u0639\\u062f\\u0629\\r\\n\\u0663 \\u0627\\u0646\\u0638\\u0645\\u0629 \\u0644\\u0644\\u062a\\u0634\\u063a\\u064a\\u0644\\r\\n\\u0645\\u0631\\u0648\\u062d\\u0629 \\u062f\\u0627\\u062e\\u0644\\u064a\\u0629 \\u0644\\u062a\\u0647\\u062f\\u0626\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629\\r\\n\\u0630\\u0627\\u0643\\u0631\\u0629 \\u062f\\u0627\\u062e\\u0644\\u064a\\u0629 \\u0644\\u0644\\u062d\\u0641\\u0638\\r\\n\\u0634\\u0643\\u0644 \\u0627\\u0646\\u0633\\u064a\\u0627\\u0628\\u064a \\u0644\\u0633\\u0647\\u0648\\u0644\\u0629 \\u0627\\u0644\\u062a\\u062d\\u0643\\u0645"}}]	14	1
621	2022-06-27 15:25:48.110583+00	cf47ba15-2d0c-487f-9f03-8a99768eedcb	Tanda 18L	2	[{"changed": {"fields": ["Description", "Price", "Point price", "Stock", "Rate"]}}, {"added": {"name": "product image", "object": "ProductImage object (59)"}}, {"added": {"name": "product image", "object": "ProductImage object (60)"}}, {"added": {"name": "product image", "object": "ProductImage object (61)"}}, {"deleted": {"name": "product image", "object": "ProductImage object (None)"}}, {"deleted": {"name": "product image", "object": "ProductImage object (None)"}}, {"deleted": {"name": "product video url", "object": "ProductVideoUrl object (None)"}}, {"deleted": {"name": "product video url", "object": "ProductVideoUrl object (None)"}}]	14	1
622	2022-06-27 15:27:09.85185+00	cf47ba15-2d0c-487f-9f03-8a99768eedcb	Tanda 18L	2	[{"changed": {"fields": ["Description"]}}]	14	1
623	2022-06-28 09:49:41.669519+00	11	Devices	2	[{"changed": {"fields": ["Hover image"]}}]	19	1
624	2022-06-28 09:50:57.109686+00	12	Materials	2	[{"changed": {"fields": ["Image", "Hover image"]}}]	19	1
625	2022-06-28 14:05:10.987279+00	2ede9c6f-c5fb-4a24-8e51-15a93f2380dc	MiniS (RTA)	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (62)"}}, {"added": {"name": "product image", "object": "ProductImage object (63)"}}]	14	1
626	2022-06-28 14:27:53.039497+00	cac23bb0-443f-473c-9490-bf2aff0c09d4	Led D	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (64)"}}, {"added": {"name": "product image", "object": "ProductImage object (65)"}}, {"added": {"name": "product image", "object": "ProductImage object (66)"}}]	14	1
627	2022-06-28 15:28:20.20792+00	2c5633e0-786a-4d67-a7e2-6e3572c6b508	i-Led	1	[{"added": {}}, {"added": {"name": "translation", "object": "\\u2022 Two modes: Normal mode and high mode with maximum light intensity of 2300 mw/cm2.\\r\\n\\r\\n\\u2022 Curing 2 mm of resin in 1 second which make it suitable for ortho brackets, porcelain veneers and post-core adhesives: \\u0644\\u0647 \\u0646\\u0638\\u0627\\u0645\\u064a\\u0646: \\u0627\\u0644\\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u0639\\u0627\\u062f\\u064a \\u0648 \\u0627\\u0644\\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u0642\\u0648\\u064a \\u0627\\u0644\\u0630\\u064a \\u064a\\u0635\\u0644 \\u0627\\u0644\\u0649 \\u0662\\u0663\\u0660\\u0660 \\u0648\\u0627\\u062a \\r\\n\\r\\n\\u064a\\u0633\\u062a\\u0637\\u064a\\u0639 \\u062a\\u0646\\u0634\\u064a\\u0641 \\u0662 \\u0645\\u0644\\u0644\\u064a \\u0645\\u0646 \\u0627\\u0644\\u0643\\u0645\\u0628\\u0648\\u0632\\u064a\\u062a \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 \\u0627\\u0644\\u0648\\u0627\\u062d\\u062f\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u0642\\u0648\\u064a\\r\\n\\r\\n\\u064a\\u0645\\u0643\\u0646 \\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645\\u0647 \\u0641\\u064a \\u062d\\u0627\\u0644\\u0627\\u062a \\u0627\\u0644\\u0627\\u0648\\u0631\\u062b\\u0648\\u060c \\u0627\\u0644\\u0641\\u064a\\u0646\\u064a\\u0631 \\u0627\\u0648 \\u0627\\u0644\\u0628\\u0648\\u0633\\u062a \\u0648 \\u0643\\u0648\\u0631"}}, {"added": {"name": "product image", "object": "ProductImage object (67)"}}, {"added": {"name": "product image", "object": "ProductImage object (68)"}}, {"added": {"name": "product image", "object": "ProductImage object (69)"}}]	14	1
628	2022-06-28 15:28:55.883468+00	2c5633e0-786a-4d67-a7e2-6e3572c6b508	i-Led	2	[{"changed": {"name": "product image", "object": "ProductImage object (67)", "fields": ["Is main"]}}, {"changed": {"name": "product image", "object": "ProductImage object (68)", "fields": ["Is main"]}}]	14	1
629	2022-06-29 12:18:07.018472+00	2ede9c6f-c5fb-4a24-8e51-15a93f2380dc	MiniS (RTA)	2	[{"changed": {"fields": ["Price"]}}]	14	1
630	2022-06-29 12:49:48.730137+00	2ede9c6f-c5fb-4a24-8e51-15a93f2380dc	MiniS (RTA)	2	[{"changed": {"fields": ["Price"]}}]	14	1
631	2022-06-29 13:33:39.011954+00	2ede9c6f-c5fb-4a24-8e51-15a93f2380dc	MiniS (RTA)	2	[{"changed": {"fields": ["Stock"]}}]	14	1
632	2022-06-29 14:11:03.33351+00	e07b0a55-832a-40b5-893c-d7686bd3f666	B-cure	1	[{"added": {}}, {"added": {"name": "translation", "object": "\\u2022 More uniform light for better ortho bracket's curing.\\r\\n\\u2022ORTHO mode: 10 cycles with an interval of one second after each cycle. Setting time for each cycle is 3 or 5 seconds.\\r\\n\\u2022Equipped with 5 watts LED.\\r\\n\\u2022 Maximum light intensity is up to 2000 mw/cm2\\r\\n\\u2022 Two original batteries to keep the device working continuously.\\r\\n\\u2022 Two sockets so that the battery can be charged separately\\r\\n\\u2022 5 working modes: Normal, Soft, Pulse, Turbo and Otho modes.: \\u0627\\u0636\\u0627\\u0621\\u0629 \\u0648 \\u0628\\u0631\\u0646\\u0627\\u0645\\u062c  \\u062e\\u0635\\u064a\\u0635\\u0627 \\u0644\\u062a\\u0646\\u0634\\u064a\\u0641 \\u0628\\u0631\\u0627\\u0643\\u062a \\u0627\\u0644\\u0627\\u0648\\u0631\\u062b\\u0648\\r\\n\\r\\n\\u0627\\u0644\\u0644\\u0645\\u0628\\u0629 \\u0665 \\u0648\\u0627\\u062a \\u0644\\u064a\\u062f\\r\\n\\r\\n\\u0642\\u0648\\u0629 \\u062a\\u0635\\u0644 \\u0627\\u0644\\u064a \\u0662\\u0660\\u0660\\u0660 \\u0648\\u0627\\u062a\\r\\n\\r\\n\\u0662 \\u0628\\u0637\\u0627\\u0631\\u064a\\u0629 \\u0644\\u0644\\u0639\\u0645\\u0644 \\u0628\\u062f\\u0648\\u0646 \\u0627\\u0646\\u0642\\u0637\\u0627\\u0639\\r\\n\\r\\n\\u0662 \\u0645\\u0643\\u0627\\u0646 \\u0644\\u0634\\u062d\\u0646 \\u0627\\u0644\\u0628\\u0637\\u0627\\u0631\\u064a\\u0627\\u062a\\r\\n\\r\\n\\u0665 \\u0628\\u0631\\u0627\\u0645\\u062c \\u0644\\u0644\\u062a\\u0634\\u063a\\u064a\\u0644 \\u0641\\u064a \\u062c\\u0647\\u0627\\u0632 \\u0648\\u0627\\u062d\\u062f"}}, {"added": {"name": "product image", "object": "ProductImage object (70)"}}]	14	1
634	2022-06-29 14:41:16.878184+00	5	High speed contra-angles	2	[{"changed": {"fields": ["Name"]}}]	18	1
635	2022-06-29 15:03:07.293548+00	3	Cilincs & Centers	2	[{"changed": {"fields": ["Text"]}}]	11	1
636	2022-06-29 15:03:22.852598+00	1	About Us	2	[{"changed": {"fields": ["Testimonial title"]}}]	9	1
749	2022-09-26 09:05:00.560772+00	3	Cilincs & Centers - 70	2	[{"changed": {"fields": ["Sav"]}}]	11	1
637	2022-07-03 13:24:00.13442+00	11	Periodontics	1	[{"added": {}}, {"added": {"name": "sub branch", "object": "Ultrasonic Scalers"}}, {"added": {"name": "sub branch", "object": "Ultrasonic Scalers + Air Polisher"}}]	12	1
638	2022-07-03 14:16:52.789676+00	55a70082-0bdc-4b4b-a1d7-57e90c3a4847	UDS-K LED	1	[{"added": {}}, {"added": {"name": "translation", "object": "\\u2022 Mode: Perio\\r\\n\\u2022 Frequency: 29,000 Hz\\r\\n\\u2022 Led \\r\\n\\u2022 Autoclavable handpiece at 134 \\u00baC\\r\\n\\u2022 5 scaling tips included: \\u0627\\u0644\\u0628\\u0631\\u0646\\u0627\\u0645\\u062c: \\u0628\\u0631\\u064a\\u0648\\r\\n\\u0627\\u0644\\u0630\\u0628\\u0630\\u0628\\u0629: \\u0662\\u0669\\u060c\\u0660\\u0660\\u0660\\r\\n\\u0644\\u064a\\u062f\\r\\n\\u064a\\u0645\\u0643\\u0646 \\u062a\\u0639\\u0642\\u064a\\u0645 \\u0627\\u0644\\u0647\\u0627\\u0646\\u062f\\u0628\\u064a\\u0633 \\u0639\\u0644\\u0649 \\u062f\\u0631\\u062c\\u0629 \\u0661\\u0663\\u0664\\r\\n\\u0665 \\u062a\\u0628 \\u0633\\u0643\\u064a\\u0644\\u0631 \\u0645\\u0639 \\u0627\\u0644\\u062c\\u0647\\u0627\\u0632"}}, {"added": {"name": "product image", "object": "ProductImage object (73)"}}, {"added": {"name": "product image", "object": "ProductImage object (74)"}}, {"added": {"name": "product image", "object": "ProductImage object (75)"}}]	14	1
639	2022-07-03 14:43:40.834914+00	d00163c7-ec90-40ad-8113-3230290440a1	A-Led	1	[{"added": {}}, {"added": {"name": "translation", "object": "1- Mode : Scaling, Perio & Endo modes\\r\\n2- Frequency: 29,000 Hz\\r\\n3- Led\\r\\n4- Autoclavable handpiece at 134 \\u00baC\\r\\n5- 5 scaling tips + 1 activation of irrigation tip included: \\u0663 \\u0628\\u0631\\u0627\\u0645\\u062c: \\u0633\\u0643\\u064a\\u0644\\u064a\\u0646\\u062c\\u060c \\u0628\\u0631\\u064a\\u0648 \\u0648 \\u0627\\u0646\\u062f\\u0648\\r\\n\\u0662\\u0669\\u060c\\u0660\\u0660\\u0660 \\u0630\\u0628\\u0630\\u0628\\u0629\\r\\n\\u0644\\u064a\\u062f\\r\\n\\u064a\\u0645\\u0643\\u0646 \\u062a\\u0639\\u0642\\u064a\\u0645 \\u0627\\u0644\\u0647\\u0627\\u0646\\u062f\\u0628\\u064a\\u0633 \\u0639\\u0644\\u0649 \\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u0661\\u0663\\u0664 \\u0645\\u0626\\u0648\\u064a\\u0629\\r\\n\\u0665 \\u062a\\u064a\\u0628 \\u0633\\u0643\\u064a\\u0644\\u064a\\u0646\\u062c + \\u0661 \\u062a\\u0628 \\u0627\\u0631\\u064a\\u062c\\u0634\\u0646 \\u0645\\u0639 \\u0627\\u0644\\u062c\\u0647\\u0627\\u0632"}}, {"added": {"name": "product image", "object": "ProductImage object (76)"}}, {"added": {"name": "product image", "object": "ProductImage object (77)"}}, {"added": {"name": "product image", "object": "ProductImage object (78)"}}]	14	1
640	2022-07-03 15:56:59.767293+00	76aea991-1405-4bf9-986a-6869f96f7872	U-6	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (79)"}}, {"added": {"name": "product image", "object": "ProductImage object (80)"}}, {"added": {"name": "product image", "object": "ProductImage object (81)"}}]	14	1
641	2022-07-05 14:06:27.478825+00	12	Endodontics	1	[{"added": {}}]	12	1
642	2022-07-05 14:07:43.848661+00	12	Endodontics	2	[{"added": {"name": "sub branch", "object": "Apex Locators"}}, {"added": {"name": "sub branch", "object": "Rotary Endo motors"}}, {"added": {"name": "sub branch", "object": "Dual function motors (Built in Apex)"}}]	12	1
643	2022-07-05 14:51:28.752461+00	7b48ce26-a176-4a24-8d87-8379c99e0c60	Apex Blue	1	[{"added": {}}, {"added": {"name": "translation", "object": "\\u2022 Fourth generation\\r\\n\\u2022 Accuracy : 97%\\r\\n\\u2022 HQ screen\\r\\n\\u2022 Battery : 750 mA: \\u0627\\u0644\\u062c\\u064a\\u0644 \\u0627\\u0644\\u0631\\u0627\\u0628\\u0639\\r\\n\\r\\n\\u0627\\u0644\\u062f\\u0642\\u0629 \\u0669\\u0667\\u066a\\r\\n\\r\\n\\u0642\\u0648\\u0629 \\u0627\\u0644\\u0628\\u0637\\u0627\\u0631\\u064a\\u0629: \\u0667\\u0665\\u0660 \\u0645\\u0644\\u0644\\u064a \\u0627\\u0645\\u0628\\u064a\\u0631"}}, {"added": {"name": "product image", "object": "ProductImage object (82)"}}, {"added": {"name": "product image", "object": "ProductImage object (83)"}}, {"added": {"name": "product image", "object": "ProductImage object (84)"}}]	14	1
644	2022-07-05 15:15:02.270803+00	c4b17ff2-5676-4608-a561-d14812432f44	Apex Gold Plus III	1	[{"added": {}}, {"added": {"name": "translation", "object": "\\u2022 Can be connected to rotary motor (E-com or Endo Pace)\\r\\n\\u2022 Sixth generation edition 4\\r\\n\\u2022 Accuracy: 97%\\r\\n\\u2022 HQ screen\\r\\n\\u2022 Battery: 750 mA: \\u064a\\u0645\\u0643\\u0646 \\u062a\\u0648\\u0635\\u064a\\u0644\\u0647 \\u0628\\u062c\\u0647\\u0627\\u0632 \\u0631\\u0648\\u062a\\u0627\\u0631\\u064a\\r\\n\\r\\n\\u0627\\u0644\\u062c\\u064a\\u0644 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\r\\n\\r\\n\\u0627\\u0644\\u062f\\u0642\\u0629: \\u0669\\u0667\\u066a\\r\\n\\r\\n\\u0627\\u0644\\u0628\\u0637\\u0627\\u0631\\u064a\\u0629: \\u0667\\u0665\\u0660 \\u0645\\u0644\\u0644\\u064a \\u0627\\u0645\\u0628\\u064a\\u0631"}}, {"added": {"name": "product image", "object": "ProductImage object (85)"}}, {"added": {"name": "product image", "object": "ProductImage object (86)"}}]	14	1
645	2022-07-05 15:25:52.165467+00	4ab2223d-17e7-41a6-9465-3598351f081d	Apex Gold Plus V	1	[{"added": {}}, {"added": {"name": "translation", "object": "\\u2022 Can be connected to rotary motor (E-com or Endo Pace)\\r\\n\\u2022 Sixth generation edition 5\\r\\n\\u2022 Eliminate interference by data processing system (DSP)\\r\\n\\u2022 Accuracy: 97%\\r\\n\\u2022 HQ screen\\r\\n\\u2022 Battery: 750 mA: \\u064a\\u0645\\u0643\\u0646 \\u062a\\u0648\\u0635\\u064a\\u0644\\u0629 \\u0628\\u062c\\u0647\\u0627\\u0632 \\u0631\\u0648\\u062a\\u0627\\u0631\\u064a\\r\\n\\r\\n\\u0627\\u0644\\u062c\\u064a\\u0644 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0627\\u0644\\u0627\\u0635\\u062f\\u0627\\u0631 \\u0627\\u0644\\u062e\\u0627\\u0645\\u0633\\r\\n\\r\\n\\u062f\\u0642\\u0629 \\u0639\\u0627\\u0644\\u064a\\u0629: \\u0669\\u0667\\u066a\\r\\n\\r\\n\\u0628\\u0637\\u0627\\u0631\\u064a\\u0629: \\u0667\\u0665\\u0660 \\u0645\\u0644\\u0644\\u064a \\u0627\\u0645\\u0628\\u064a\\u0631"}}, {"added": {"name": "product image", "object": "ProductImage object (87)"}}, {"added": {"name": "product image", "object": "ProductImage object (88)"}}, {"added": {"name": "product image", "object": "ProductImage object (89)"}}]	14	1
646	2022-07-19 09:41:22.508176+00	8bce460e-76fa-4ac4-9e55-f2bbf7bc5616	E-com	1	[{"added": {}}, {"added": {"name": "translation", "object": "\\u2022 Speed: Up to 1000 rpm\\r\\n\\u2022 Torque: 0.6Ncm-5.0Ncm\\r\\n\\u2022 Can be connected to Woodpecker apex locator.\\r\\n\\u2022 Auto apical reverse/stop.\\r\\n\\u2022 Auto apical slow down.\\r\\n\\u2022 Auto start/stop.\\r\\n\\u2022 Preset various file systems.\\r\\n\\u2022 Can customize up to 9 modes\\r\\n\\u2022 O-LED screen\\r\\n\\u2022 Cordless handpiece.: \\u0633\\u0631\\u0639\\u0629: \\u062a\\u0635\\u0644 \\u0627\\u0644\\u064a \\u0661\\u0660\\u0660\\u0660 \\u0644\\u0641\\u0629 \\u0641\\u064a \\u0627\\u0644\\u062f\\u0642\\u064a\\u0642\\u0629\\r\\n\\u0642\\u0648\\u0629: \\u062a\\u0635\\u0644 \\u0627\\u0644\\u064a \\u0665 \\u0646\\u064a\\u0648\\u062a\\u0646\\r\\n\\u064a\\u0645\\u0643\\u0646 \\u0623\\u0646 \\u064a\\u062a\\u0645 \\u0625\\u064a\\u0635\\u0627\\u0644\\u0647 \\u0628\\u0627\\u0628\\u064a\\u0643\\u0633 \\u0644\\u0648\\u0643\\u064a\\u062a\\u0648\\u0631 \\u0648\\u0648\\u062f\\u0628\\u064a\\u0643\\u0631\\r\\n\\u062e\\u0627\\u0635\\u064a\\u0629 \\u0627\\u0644\\u0648\\u0642\\u0648\\u0641 \\u0627\\u0648 \\u0627\\u0644\\u062f\\u0648\\u0631\\u0627\\u0646 \\u0639\\u0643\\u0633 \\u0623\\u0648 \\u062a\\u0647\\u062f\\u0626\\u0629 \\u0627\\u0644\\u0633\\u0631\\u0639\\u0629 \\u0639\\u0646\\u062f \\u0627\\u0644\\u0648\\u0635\\u0648\\u0644 \\u0644\\u0646\\u0647\\u0627\\u064a\\u0629 \\u0627\\u0644\\u0642\\u0646\\u0627\\u0629\\r\\n\\u062e\\u0627\\u0635\\u064a\\u0629 \\u0627\\u0644\\u0628\\u062f\\u0621 \\u0623\\u0648 \\u0627\\u0644\\u062a\\u0648\\u0642\\u0641 \\u0627\\u0644\\u062a\\u0644\\u0642\\u0627\\u0626\\u064a \\u0639\\u0646\\u062f \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644 \\u0627\\u0648 \\u0627\\u0644\\u062e\\u0631\\u0648\\u062c \\u0645\\u0646 \\u0627\\u0644\\u0642\\u0646\\u0627\\u0629\\r\\n\\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u0641\\u0627\\u064a\\u0644 \\u0633\\u064a\\u0633\\u062a\\u0645 \\u0627\\u0644\\u0645\\u0634\\u0647\\u0648\\u0631\\u0629 \\u062a\\u0645 \\u062a\\u0633\\u062c\\u064a\\u0644\\u0647\\u0627 \\u0648 \\u064a\\u0645\\u0643\\u0646 \\u062d\\u0641\\u0638 \\u0627\\u0644\\u0633\\u064a\\u0633\\u062a\\u0645 \\u0627\\u0644\\u062e\\u0627\\u0635 \\u0628\\u0643"}}, {"added": {"name": "product image", "object": "ProductImage object (90)"}}, {"added": {"name": "product image", "object": "ProductImage object (91)"}}, {"added": {"name": "product image", "object": "ProductImage object (92)"}}]	14	1
647	2022-07-19 09:57:10.048617+00	821375a9-17ca-4a00-b8ac-9a8362887704	MotoPex	1	[{"added": {}}, {"added": {"name": "translation", "object": "\\u2022 First Brushless Endo motor\\r\\n\\u2022 Built in apex locator\\r\\n\\u2022 Brushless motor, hence longer life span and more durability\\r\\n\\u2022 Silent endo motor\\r\\n\\u2022 6:1 contra-angle (to ensure smooth rotation with the low speed with high torque)\\r\\n\\u2022 Super mini-head\\r\\n\\u2022 360 degrees rotatable contra-angle\\r\\n\\u2022 2000mAh Lithium battery: \\u0627\\u0648\\u0644 \\u062c\\u0647\\u0627\\u0632 \\u0625\\u0646\\u062f\\u0648 \\u0645\\u0648\\u062a\\u0648\\u0631 \\u062a\\u0645 \\u0627\\u0646\\u062a\\u0627\\u062c\\u0647 \\u0628\\u0645\\u0648\\u062a\\u0648\\u0631 \\u0628\\u0631\\u0634\\u0644\\u0633\\r\\n\\u0645\\u0648\\u062a\\u0648\\u0631 \\u0628\\u0631\\u0634\\u0644\\u0633 \\u064a\\u062c\\u0639\\u0644 \\u0627\\u0644\\u0639\\u0645\\u0631 \\u0627\\u0644\\u0627\\u0641\\u062a\\u0631\\u0627\\u0636\\u064a \\u0644\\u0644\\u062c\\u0647\\u0627\\u0632 \\u0627\\u0637\\u0648\\u0644\\r\\n\\u0645\\u0632\\u0648\\u062f \\u0628\\u0627\\u0628\\u064a\\u0643\\u0633 \\u0644\\u0648\\u0643\\u064a\\u062a\\u0648\\u0631 \\u062f\\u0627\\u062e\\u0644\\u064a\\r\\n\\u0627\\u0644\\u062c\\u0647\\u0627\\u0632 \\u0635\\u0627\\u0645\\u062a \\u0644\\u0627 \\u064a\\u062e\\u0631\\u062c \\u0645\\u0646\\u0647 \\u0627\\u064a \\u0635\\u0648\\u062a\\r\\n\\u0647\\u064a\\u062f \\u0627\\u0644\\u0643\\u0648\\u0646\\u062a\\u0631\\u0627 \\u0635\\u063a\\u064a\\u0631\\u0629 \\u0644\\u0644\\u063a\\u0627\\u064a\\u0629\\r\\n\\u0627\\u0644\\u0643\\u0648\\u0646\\u062a\\u0631\\u0627 \\u062a\\u062f\\u0648\\u0631 \\u0663\\u0666\\u0660 \\u062f\\u0631\\u062c\\u0629\\r\\n\\u0642\\u0648\\u0629 \\u0627\\u0644\\u0628\\u0637\\u0627\\u0631\\u064a\\u0629 \\u062a\\u0635\\u0644 \\u0627\\u0644\\u064a \\u0662\\u0660\\u0660 \\u0645\\u0644\\u0644\\u064a \\u0627\\u0645\\u0628\\u064a\\u0631"}}, {"added": {"name": "product image", "object": "ProductImage object (93)"}}, {"added": {"name": "product image", "object": "ProductImage object (94)"}}, {"added": {"name": "product video url", "object": "ProductVideoUrl object (14)"}}, {"added": {"name": "product video url", "object": "ProductVideoUrl object (15)"}}, {"added": {"name": "product video url", "object": "ProductVideoUrl object (16)"}}, {"added": {"name": "product video url", "object": "ProductVideoUrl object (17)"}}]	14	1
671	2022-07-25 14:33:11.290531+00	165144d1-88c4-470e-b35f-dd6071d0da33	King Kong (Japanese Bearings) King Kong (Japanese Bearings) King Kong (Japanese Bearings)	2	[{"changed": {"fields": ["Title"]}}]	14	1
672	2022-07-25 14:41:14.968789+00	165144d1-88c4-470e-b35f-dd6071d0da33	King Kong (Japanese Bearings)	2	[{"changed": {"fields": ["Title"]}}]	14	1
648	2022-07-19 10:09:47.132315+00	5b1f4e89-e9fe-4ba2-8e8e-03b6813d0597	Ai-Motor	1	[{"added": {}}, {"added": {"name": "translation", "object": "\\u2022 Brushless Endo motor\\r\\n\\u2022 Built in apex locator\\r\\n\\u2022 Wireless charging\\r\\n\\u2022 Brushless motor, hence longer life span and more durability\\r\\n\\u2022 Super silent endo motor\\r\\n\\u2022 6:1 contra-angle (to ensure smooth rotation with the low speed with high torque)\\r\\n\\u2022 Super mini-Head\\r\\n\\u2022 360 degrees rotatable contra-angle\\r\\n\\u2022 2000mAh Lithium battery: \\u062c\\u0647\\u0627\\u0632 \\u0625\\u0646\\u062f\\u0648 \\u0645\\u0648\\u062a\\u0648\\u0631 \\u062a\\u0645 \\u0627\\u0646\\u062a\\u0627\\u062c\\u0647 \\u0628\\u0645\\u0648\\u062a\\u0648\\u0631 \\u0628\\u0631\\u0634\\u0644\\u0633\\r\\n\\u0645\\u0648\\u062a\\u0648\\u0631 \\u0628\\u0631\\u0634\\u0644\\u0633 \\u064a\\u062c\\u0639\\u0644 \\u0627\\u0644\\u0639\\u0645\\u0631 \\u0627\\u0644\\u0627\\u0641\\u062a\\u0631\\u0627\\u0636\\u064a \\u0644\\u0644\\u062c\\u0647\\u0627\\u0632 \\u0627\\u0637\\u0648\\u0644 \\r\\n\\u0627\\u0644\\u0634\\u062d\\u0646 \\u0644\\u0627\\u0633\\u0644\\u0643\\u064a\\r\\n\\u0645\\u0632\\u0648\\u062f \\u0628\\u0627\\u0628\\u064a\\u0643\\u0633 \\u0644\\u0648\\u0643\\u064a\\u062a\\u0648\\u0631 \\u062f\\u0627\\u062e\\u0644\\u064a\\r\\n\\u0627\\u0644\\u062c\\u0647\\u0627\\u0632 \\u0635\\u0627\\u0645\\u062a \\u0644\\u0627 \\u064a\\u062e\\u0631\\u062c \\u0645\\u0646\\u0647 \\u0627\\u064a \\u0635\\u0648\\u062a\\r\\n\\u0647\\u064a\\u062f \\u0627\\u0644\\u0643\\u0648\\u0646\\u062a\\u0631\\u0627 \\u0635\\u063a\\u064a\\u0631\\u0629 \\u0644\\u0644\\u063a\\u0627\\u064a\\u0629\\r\\n\\u0627\\u0644\\u0643\\u0648\\u0646\\u062a\\u0631\\u0627 \\u062a\\u062f\\u0648\\u0631 \\u0663\\u0666\\u0660 \\u062f\\u0631\\u062c\\u0629\\r\\n\\u0642\\u0648\\u0629 \\u0627\\u0644\\u0628\\u0637\\u0627\\u0631\\u064a\\u0629 \\u062a\\u0635\\u0644 \\u0627\\u0644\\u064a \\u0662\\u0660\\u0660 \\u0645\\u0644\\u0644\\u064a \\u0627\\u0645\\u0628\\u064a\\u0631"}}, {"added": {"name": "product image", "object": "ProductImage object (95)"}}, {"added": {"name": "product image", "object": "ProductImage object (96)"}}, {"added": {"name": "product video url", "object": "ProductVideoUrl object (18)"}}, {"added": {"name": "product video url", "object": "ProductVideoUrl object (19)"}}, {"added": {"name": "product video url", "object": "ProductVideoUrl object (20)"}}, {"added": {"name": "product video url", "object": "ProductVideoUrl object (21)"}}]	14	1
649	2022-07-19 11:31:30.802702+00	13	Air Purifiers and thermometers	1	[{"added": {}}]	12	1
650	2022-07-19 15:34:57.383702+00	ef2a66ca-ed73-4ee2-a3fe-49a3ea9db75a	Q3	1	[{"added": {}}, {"added": {"name": "translation", "object": "The high pressure plasma air purifier KILLS viruses and bacteria as small as 14 nanometers by generating an electric field from 20,000 to 40,000 volts killing all bacteria and viruses that enter this field. (TPA technology)\\r\\n\\r\\n\\u2022 No filters, no need to replace the filters every time (NO CONSUMABLES)\\r\\n\\u2022 Elimination of bacteria, viruses, microbes, pet dander, smoke, dust, smog, mites and peculiar smell.\\r\\n\\u2022 Application area: 30 to 40 meter squared\\r\\n\\u2022 Fan Speed level: 4 levels\\r\\n\\u2022 Clean air delivery rate (CADR): 200 CFM or 350 meter cube/hr\\r\\n\\u2022 Power: 55W\\r\\n\\u2022 Weight: 10.7 KG: \\u064a\\u0645\\u0643\\u0646\\u0647 \\u0642\\u062a\\u0644 \\u0627\\u0644\\u0641\\u064a\\u0631\\u0648\\u0633 \\u0645\\u0628\\u0627\\u0634\\u0631\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u062c\\u0647\\u062f \\u0643\\u0647\\u0631\\u0628\\u0627\\u0626\\u064a \\u064a\\u0635\\u0644 \\u0627\\u0644\\u064a \\u0639\\u0634\\u0631\\u0627\\u062a \\u0627\\u0644\\u0622\\u0644\\u0627\\u0641 \\u0645\\u0646 \\u0627\\u0644\\u0641\\u0648\\u0644\\u062a\\u0627\\u062a\\r\\n\\u0628\\u0625\\u0645\\u0643\\u0627\\u0646 \\u062a\\u0643\\u0646\\u0648\\u0644\\u0648\\u062c\\u064a\\u0627 \\u0627\\u0644\\u0636\\u063a\\u0637 \\u0627\\u0644\\u0639\\u0627\\u0644\\u064a \\u0627\\u0644\\u0642\\u0636\\u0627\\u0621 \\u0639\\u0644\\u064a \\u062c\\u0633\\u064a\\u0645\\u0627\\u062a \\u062a\\u0635\\u0644 \\u062d\\u062a\\u0649 \\u062d\\u062c\\u0645 \\u0661\\u0664 \\u0646\\u0627\\u0646\\u0648\\u0645\\u062a\\u0631\\r\\n\\u0627\\u0644\\u062c\\u0647\\u0627\\u0632 \\u0644\\u0627 \\u064a\\u062d\\u062a\\u0627\\u062c \\u0625\\u0644\\u0649 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u0641\\u0644\\u0627\\u062a\\u0631 \\u0648 \\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0628\\u0647 \\u0645\\u0633\\u062a\\u0647\\u0644\\u0643\\u0627\\u062a \\u0645\\u062b\\u0644 \\u0627\\u0644\\u0623\\u062c\\u0647\\u0632\\u0629 \\u0627\\u0644\\u062a\\u064a \\u062a\\u0639\\u0645\\u0644 \\u0628\\u0641\\u0644\\u062a\\u0631\\r\\n\\u064a\\u0642\\u0648\\u0645 \\u0628\\u062a\\u0646\\u0642\\u064a\\u0629 \\u0627\\u0644\\u0647\\u0648\\u0627\\u0621 \\u0645\\u0646 \\u0627\\u0644\\u0641\\u064a\\u0631\\u0648\\u0633\\u0627\\u062a\\u060c \\u0627\\u0644\\u0628\\u0643\\u062a\\u0631\\u064a\\u0627\\u060c \\u0627\\u0644\\u0645\\u064a\\u0643\\u0631\\u0648\\u0628\\u0627\\u062a\\u060c \\u062f\\u062e\\u0627\\u0646 \\u0627\\u0644\\u0633\\u062c\\u0627\\u0626\\u0631\\u060c \\u0634\\u0639\\u0631 \\u0627\\u0644\\u062d\\u064a\\u0648\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0623\\u0644\\u064a\\u0641\\u0629\\u060c \\u0627\\u0644\\u0639\\u062b\\u0629 \\u0648 \\u0627\\u0644\\u0631\\u0648\\u0627\\u0626\\u062d \\u0627\\u0644\\u0643\\u0631\\u064a\\u0647\\u0629\\r\\n\\u0627\\u0644\\u0645\\u0633\\u0627\\u062d\\u0629 \\u0627\\u0644\\u062a\\u064a \\u064a\\u063a\\u0637\\u064a\\u0647\\u0627 \\u062a\\u0635\\u0644 \\u0645\\u0646 \\u0663\\u0660 \\u0627\\u0644\\u064a \\u0664\\u0660 \\u0645\\u062a\\u0631 \\u0645\\u0631\\u0628\\u0639\\r\\n\\u0664 \\u0645\\u0633\\u062a\\u0648\\u064a\\u0627\\u062a \\u0644\\u0642\\u0648\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u062d\\u0629 \\u0627\\u0644\\u062f\\u0627\\u062e\\u0644\\u064a\\u0629\\r\\n\\u0642\\u0648\\u0629 \\u0625\\u064a\\u0635\\u0627\\u0644 \\u0627\\u0644\\u0647\\u0648\\u0627\\u0621 \\u0627\\u0644\\u0646\\u0638\\u064a\\u0641 \\u0644\\u0644\\u063a\\u0631\\u0641\\u0629 \\u062a\\u0635\\u0644 \\u0627\\u0644\\u0649 \\u0663\\u0665\\u0660 \\u0645\\u062a\\u0631 \\u0645\\u0643\\u0639\\u0628 \\u0641\\u064a \\u0627\\u0644\\u0633\\u0627\\u0639\\u0629\\r\\n\\u064a\\u0648\\u062c\\u062f \\u0628\\u0647 \\u0646\\u0638\\u0627\\u0645 \\u0636\\u0628\\u0637 \\u0627\\u0644\\u0642\\u0648\\u0629 \\u0627\\u0644\\u062a\\u0644\\u0642\\u0627\\u0626\\u064a \\u0648\\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0648\\u0645 \\u0627\\u0644\\u0645\\u0624\\u0642\\u062a"}}, {"added": {"name": "product image", "object": "ProductImage object (97)"}}]	14	1
651	2022-07-20 15:15:54.439147+00	04e74632-6afd-4f2f-8d40-4d1145cb577a	Q7	1	[{"added": {}}, {"added": {"name": "translation", "object": "The high pressure plasma air purifier KILLS viruses and bacteria as small as 14 nanometers by generating an electric field from 20,000 to 40,000 volts killing all bacteria and viruses that enter this field. (TPA technology)\\r\\n\\r\\n\\u2022 No filters, no need to replace the filters every time (NO CONSUMABLES)\\r\\n\\u2022 Elimination of bacteria, viruses, microbes, pet dander, smoke, dust, smog, mites and peculiar smell.\\r\\n\\u2022 Application area: 70 to 110 meter squared\\r\\n\\u2022 Fan Speed level: 5 levels\\r\\n\\u2022 Clean air delivery rate (CADR): 470.9 CFM or 800 meter cube/hr\\r\\n\\u2022 Power: 110W\\r\\n\\u2022 Weight: 19.7 KG: \\u064a\\u0645\\u0643\\u0646\\u0647 \\u0642\\u062a\\u0644 \\u0627\\u0644\\u0641\\u064a\\u0631\\u0648\\u0633 \\u0645\\u0628\\u0627\\u0634\\u0631\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u062c\\u0647\\u062f \\u0643\\u0647\\u0631\\u0628\\u0627\\u0626\\u064a \\u064a\\u0635\\u0644 \\u0627\\u0644\\u064a \\u0639\\u0634\\u0631\\u0627\\u062a \\u0627\\u0644\\u0622\\u0644\\u0627\\u0641 \\u0645\\u0646 \\u0627\\u0644\\u0641\\u0648\\u0644\\u062a\\u0627\\u062a\\r\\n\\u0628\\u0625\\u0645\\u0643\\u0627\\u0646 \\u062a\\u0643\\u0646\\u0648\\u0644\\u0648\\u062c\\u064a\\u0627 \\u0627\\u0644\\u0636\\u063a\\u0637 \\u0627\\u0644\\u0639\\u0627\\u0644\\u064a \\u0627\\u0644\\u0642\\u0636\\u0627\\u0621 \\u0639\\u0644\\u064a \\u062c\\u0633\\u064a\\u0645\\u0627\\u062a \\u062a\\u0635\\u0644 \\u062d\\u062a\\u0649 \\u062d\\u062c\\u0645 \\u0661\\u0664 \\u0646\\u0627\\u0646\\u0648\\u0645\\u062a\\u0631\\r\\n\\r\\n\\u0627\\u0644\\u062c\\u0647\\u0627\\u0632 \\u0644\\u0627 \\u064a\\u062d\\u062a\\u0627\\u062c \\u0625\\u0644\\u0649 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u0641\\u0644\\u0627\\u062a\\u0631 \\u0648 \\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0628\\u0647 \\u0645\\u0633\\u062a\\u0647\\u0644\\u0643\\u0627\\u062a \\u0645\\u062b\\u0644 \\u0627\\u0644\\u0623\\u062c\\u0647\\u0632\\u0629 \\u0627\\u0644\\u062a\\u064a \\u062a\\u0639\\u0645\\u0644 \\u0628\\u0641\\u0644\\u062a\\u0631\\r\\n\\u064a\\u0642\\u0648\\u0645 \\u0628\\u062a\\u0646\\u0642\\u064a\\u0629 \\u0627\\u0644\\u0647\\u0648\\u0627\\u0621 \\u0645\\u0646 \\u0627\\u0644\\u0641\\u064a\\u0631\\u0648\\u0633\\u0627\\u062a\\u060c \\u0627\\u0644\\u0628\\u0643\\u062a\\u0631\\u064a\\u0627\\u060c \\u0627\\u0644\\u0645\\u064a\\u0643\\u0631\\u0648\\u0628\\u0627\\u062a\\u060c \\u062f\\u062e\\u0627\\u0646 \\u0627\\u0644\\u0633\\u062c\\u0627\\u0626\\u0631\\u060c \\u0634\\u0639\\u0631 \\u0627\\u0644\\u062d\\u064a\\u0648\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0623\\u0644\\u064a\\u0641\\u0629\\u060c \\u0627\\u0644\\u0639\\u062b\\u0629 \\u0648 \\u0627\\u0644\\u0631\\u0648\\u0627\\u0626\\u062d \\u0627\\u0644\\u0643\\u0631\\u064a\\u0647\\u0629\\r\\n\\u0627\\u0644\\u0645\\u0633\\u0627\\u062d\\u0629 \\u0627\\u0644\\u062a\\u064a \\u064a\\u063a\\u0637\\u064a\\u0647\\u0627 \\u062a\\u0635\\u0644 \\u0645\\u0646 \\u0667\\u0660 \\u0627\\u0644\\u064a \\u0661\\u0661\\u0660 \\u0645\\u062a\\u0631 \\u0645\\u0631\\u0628\\u0639\\r\\n\\u0665 \\u0645\\u0633\\u062a\\u0648\\u064a\\u0627\\u062a \\u0644\\u0642\\u0648\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u062d\\u0629 \\u0627\\u0644\\u062f\\u0627\\u062e\\u0644\\u064a\\u0629\\r\\n\\u0642\\u0648\\u0629 \\u0625\\u064a\\u0635\\u0627\\u0644 \\u0627\\u0644\\u0647\\u0648\\u0627\\u0621 \\u0627\\u0644\\u0646\\u0638\\u064a\\u0641 \\u0644\\u0644\\u063a\\u0631\\u0641\\u0629 \\u062a\\u0635\\u0644 \\u0627\\u0644\\u0649 \\u0668\\u0660\\u0660 \\u0645\\u062a\\u0631 \\u0645\\u0643\\u0639\\u0628 \\u0641\\u064a \\u0627\\u0644\\u0633\\u0627\\u0639\\u0629\\r\\n\\u064a\\u0648\\u062c\\u062f \\u0628\\u0647 \\u0646\\u0638\\u0627\\u0645 \\u0636\\u0628\\u0637 \\u0627\\u0644\\u0642\\u0648\\u0629 \\u0627\\u0644\\u062a\\u0644\\u0642\\u0627\\u0626\\u064a \\u0648\\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0648\\u0645 \\u0627\\u0644\\u0645\\u0624\\u0642\\u062a"}}, {"added": {"name": "product image", "object": "ProductImage object (98)"}}]	14	1
652	2022-07-24 06:39:58.60252+00	6	Vericom	1	[{"added": {}}]	13	1
653	2022-07-24 06:44:42.005387+00	14	Fixed Prosthodontics	1	[{"added": {}}]	12	1
654	2022-07-24 06:45:18.255084+00	15	Cements	1	[{"added": {}}]	18	1
655	2022-07-24 06:52:32.126512+00	d03f68d5-1c9e-4f4e-b8a8-aeca15c31f91	U-Cem	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (99)"}}, {"added": {"name": "product image", "object": "ProductImage object (100)"}}]	14	1
656	2022-07-24 06:59:29.713064+00	16	Etchants	1	[{"added": {}}]	18	1
657	2022-07-24 07:02:30.980316+00	0d373ffd-51a7-4095-9f82-6f979738d86b	DenFil Etchant	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (101)"}}]	14	1
658	2022-07-24 07:03:57.078473+00	17	Bond	1	[{"added": {}}]	18	1
659	2022-07-24 07:08:29.213954+00	6d9cc09a-e26a-40bd-9cb6-8b5acad702f9	U-Bond	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (102)"}}]	14	1
660	2022-07-24 07:12:01.521343+00	6d9cc09a-e26a-40bd-9cb6-8b5acad702f9	U-Bond	2	[{"changed": {"fields": ["Description"]}}]	14	1
661	2022-07-24 07:20:52.174729+00	18	Flowable composite	1	[{"added": {}}]	18	1
662	2022-07-24 07:29:33.766134+00	a6340c5a-42d7-40b1-ae2f-2685748d0f82	DenFil Flow	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (103)"}}]	14	1
663	2022-07-24 07:43:28.056507+00	6d7fc330-7c9d-404f-9152-1af900cc46ab	DenFil Bulk Flow	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (104)"}}]	14	1
664	2022-07-24 07:45:27.456756+00	19	Composite	1	[{"added": {}}]	18	1
665	2022-07-24 08:26:21.106665+00	09d4f44f-e1b5-4f4e-829d-3da5b51a765b	DenFil N	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (105)"}}, {"added": {"name": "product image", "object": "ProductImage object (106)"}}]	14	1
666	2022-07-25 06:37:02.055328+00	d06f336a-f7d6-409d-ad0d-1350ccd26ed4	Dual Core	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (107)"}}, {"added": {"name": "product image", "object": "ProductImage object (108)"}}]	14	1
667	2022-07-25 06:54:44.972131+00	f4c5e182-a1f3-4fb2-9e9b-da2857859ddd	Tanda 23L	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (109)"}}, {"added": {"name": "product image", "object": "ProductImage object (110)"}}, {"added": {"name": "product image", "object": "ProductImage object (111)"}}]	14	1
668	2022-07-25 07:00:51.202722+00	15	Radiology	1	[{"added": {}}]	12	1
669	2022-07-25 07:01:16.03174+00	20	Sensors	1	[{"added": {}}]	18	1
670	2022-07-25 07:31:32.276882+00	c28a4bca-a54e-4bd8-bebe-882cee702b02	i-Sensor size 2	1	[{"added": {}}, {"added": {"name": "translation", "object": "\\u2022 25 lp/mm theoretical resolution\\r\\n\\u2022 APS CMOS technology for efficient information access, detailed image of low noise and high resolution.\\r\\n\\u2022 Subtle root apex bifurcation can be easily found.\\r\\n\\u2022 Ergonomically optimized Cut Corners, bringing high patient occlusal comfort.\\r\\n\\u2022 Thinnest sensor: 4.5 mm\\r\\n\\u2022 80000+ bending tests (Durable and reliable)\\r\\n\\u2022 Excellent waterproof performance: Rated at IP68, the highest level of Ingress Protection, Dustproof and waterproof, easy to disinfect\\r\\n\\u2022 Can be immersed in disinfectant to avoid cross infection.\\r\\n\\u2022 Multiple clients can be simultaneously connected to one server,\\r\\nfacilitating data sharing.: \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629 \\u0639\\u0627\\u0644\\u064a\\u0629 \\u0627\\u0644\\u062c\\u0648\\u062f\\u0629 \\u0628\\u062f\\u0642\\u0629 \\u062a\\u0635\\u0644 \\u0625\\u0644\\u0649 \\u0662\\u0665 \\u0632\\u0648\\u062c \\u062e\\u0637 \\u0641\\u064a \\u0627\\u0644\\u0645\\u0644\\u064a \\u0627\\u0644\\u0648\\u0627\\u062d\\u062f \\u0646\\u0638\\u0631\\u064a\\u0627\\r\\n\\u0627\\u0644\\u062a\\u0643\\u0646\\u0648\\u0644\\u0648\\u062c\\u064a\\u0627 \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u0635\\u0648\\u0631\\u0629 \\u0623\\u0648\\u0636\\u062d \\u0648\\u0646\\u0642\\u0627\\u0621 \\u0623\\u0639\\u0644\\u0649\\r\\n\\u062a\\u0635\\u0645\\u064a\\u0645 \\u0627\\u0644\\u0633\\u0646\\u0633\\u0648\\u0631 \\u0628\\u062d\\u0648\\u0627\\u0641 \\u0645\\u0642\\u0637\\u0648\\u0639\\u0629 \\u0628\\u0639\\u0646\\u0627\\u064a\\u0629 \\u0644\\u062a\\u0648\\u0641\\u064a\\u0631 \\u0623\\u0643\\u0628\\u0631 \\u0642\\u062f\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0631\\u0627\\u062d\\u0629 \\u0644\\u0644\\u0645\\u0631\\u064a\\u0636 \\r\\n\\u0627\\u0631\\u0641\\u0639 \\u0633\\u0646\\u0633\\u0648\\u0631 \\u0628\\u0633\\u0645\\u0643 \\u0664.\\u0665\\u0645\\u0644\\u064a \\u0645\\u062a\\u0631 \\u0641\\u0642\\u0637\\r\\n\\u0627\\u0644\\u0633\\u0644\\u0643 \\u0642\\u0648\\u064a \\u0648 \\u0645\\u062a\\u064a\\u0646 \\u0648 \\u062d\\u0635\\u0644 \\u0639\\u0644\\u0649 \\u0643\\u062b\\u064a\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u062a\\u062d\\u0645\\u0644\\r\\n\\u0645\\u0642\\u0627\\u0648\\u0645 \\u0644\\u0644\\u0645\\u0627\\u0621 \\u0648\\u0627\\u0644\\u0623\\u062a\\u0631\\u0628\\u0629\\r\\n\\u064a\\u0645\\u0643\\u0646 \\u0627\\u0633\\u062a\\u0639\\u0645\\u0627\\u0644\\u0647 \\u0645\\u0646 \\u0627\\u0643\\u062b\\u0631 \\u0645\\u0646 \\u062f\\u0643\\u062a\\u0648\\u0631 \\u0639\\u0644\\u064a \\u062c\\u0647\\u0627\\u0632 \\u0633\\u064a\\u0631\\u0641\\u0631 \\u0648\\u0627\\u062d\\u062f"}}, {"added": {"name": "product image", "object": "ProductImage object (112)"}}, {"added": {"name": "product image", "object": "ProductImage object (113)"}}, {"added": {"name": "product video url", "object": "ProductVideoUrl object (22)"}}]	14	1
673	2022-07-26 06:57:59.842275+00	7	Ultradent	1	[{"added": {}}]	13	1
675	2022-07-26 07:44:28.882055+00	36391c85-567b-4740-8e45-1f82597c0c01	Ultrapak #0	1	[{"added": {}}, {"added": {"name": "translation", "object": "Ultrapak cord is made of 100% cotton, knitted into thousands of tiny loops to form long, interlocking chains. This unique knitted design exerts a gentle, continuous outward force following placement, as the knitted loops seek to open. Optimal tissue displacement occurs in 5 minutes.\\r\\n\\r\\n\\u2022 The original\\u2014and smallest\\u2014knitted cord\\r\\n\\u2022 Provides rapid tissue displacement, detailed margins, and quality impressions\\r\\n\\u2022 Facilitates easy packing and stays placed better than any twisted or braided cord\\r\\n\\u2022 Compresses upon packing then expands for optimal retraction\\r\\n\\u2022 Does not entangle in diamond bur\\r\\n\\u2022 High carbon steel blade ensures a clean cut\\r\\n\\u2022 Thin plastic gate prevents cord from falling into the bottle upon cutting\\r\\n\\u2022 Ruler printed on label provides easy cord measurement: \\u0645\\u0635\\u0646\\u0648\\u0639 \\u0645\\u0646 \\u0661\\u0660\\u0660\\u066a \\u0642\\u0637\\u0646\\u060c \\u0645\\u062d\\u0628\\u0648\\u0643 \\u0644\\u0627\\u0644\\u0627\\u0641 \\u0645\\u0646 \\u0627\\u0644\\u062d\\u0644\\u0642\\u0627\\u062a \\u0627\\u0644\\u0635\\u063a\\u064a\\u0631\\u0629 \\u0648 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u062a\\u0635\\u0645\\u064a\\u0645 \\u064a\\u0645\\u0627\\u0631\\u0633 \\u0627\\u0644\\u0636\\u063a\\u0637 \\u0627\\u0644\\u062e\\u0641\\u064a\\u0641 \\u0639\\u0646\\u062f \\u0648\\u0636\\u0639\\u0647 \\u0641\\u064a\\u0642\\u0648\\u0645 \\u0628\\u0627\\u0628\\u0639\\u0627\\u062f \\u0627\\u0644\\u0627\\u0646\\u0633\\u062c\\u0629 \\u0639\\u0646 \\u0627\\u0644\\u0623\\u0633\\u0646\\u0627\\u0646 \\u0641\\u064a \\r\\n\\u0665 \\u062f\\u0642\\u0627\\u0626\\u0642 \\u0641\\u064a \\u0631\\u0627\\u062d\\u0629 \\u0648 \\u0627\\u0645\\u0627\\u0646 \\u0644\\u0644\\u0627\\u0646\\u0633\\u062c\\u0629"}}, {"added": {"name": "product image", "object": "ProductImage object (114)"}}, {"added": {"name": "product video url", "object": "ProductVideoUrl object (23)"}}, {"added": {"name": "product video url", "object": "ProductVideoUrl object (24)"}}]	14	1
676	2022-07-26 08:05:01.126498+00	16	Laser	1	[{"added": {}}]	12	1
677	2022-07-26 08:17:10.789057+00	d063cc1e-10e3-48cb-9339-b70b0a3bb999	Gemini™ Laser	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (115)"}}, {"added": {"name": "product image", "object": "ProductImage object (116)"}}, {"added": {"name": "product image", "object": "ProductImage object (117)"}}, {"added": {"name": "product video url", "object": "ProductVideoUrl object (25)"}}, {"added": {"name": "product video url", "object": "ProductVideoUrl object (26)"}}, {"added": {"name": "product video url", "object": "ProductVideoUrl object (27)"}}]	14	1
678	2022-07-27 06:54:59.783057+00	8	Renhe	1	[{"added": {}}]	13	1
679	2022-07-27 06:55:50.17408+00	17	Others	1	[{"added": {}}]	12	1
680	2022-07-27 07:06:57.454409+00	22	Micromotors	1	[{"added": {}}]	18	1
681	2022-07-27 07:15:08.574112+00	21d8f1c3-3f16-40f0-b24c-c36094af9d72	Micro motor 119/E-type	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (118)"}}, {"added": {"name": "product image", "object": "ProductImage object (119)"}}]	14	1
682	2022-07-31 06:33:09.600132+00	f4c5e182-a1f3-4fb2-9e9b-da2857859ddd	Tanda 23L	2	[{"changed": {"fields": ["Description"]}}]	14	1
683	2022-07-31 06:37:52.974759+00	cf47ba15-2d0c-487f-9f03-8a99768eedcb	Tanda 18L	2	[{"changed": {"fields": ["Description"]}}]	14	1
684	2022-07-31 07:22:36.03291+00	36391c85-567b-4740-8e45-1f82597c0c01	Ultrapak #0	2	[{"added": {"name": "product image", "object": "ProductImage object (120)"}}]	14	1
685	2022-07-31 07:45:26.324079+00	36391c85-567b-4740-8e45-1f82597c0c01	Ultrapak	2	[{"changed": {"fields": ["Title"]}}, {"added": {"name": "product image", "object": "ProductImage object (121)"}}, {"added": {"name": "product image", "object": "ProductImage object (122)"}}, {"added": {"name": "product image", "object": "ProductImage object (123)"}}, {"added": {"name": "product image", "object": "ProductImage object (124)"}}, {"added": {"name": "product image", "object": "ProductImage object (125)"}}, {"added": {"name": "product image", "object": "ProductImage object (126)"}}, {"changed": {"name": "product image", "object": "ProductImage object (114)", "fields": ["Image"]}}, {"changed": {"name": "product image", "object": "ProductImage object (120)", "fields": ["Image"]}}]	14	1
686	2022-08-02 07:01:40.186953+00	e07b0a55-832a-40b5-893c-d7686bd3f666	B-cure	2	[{"changed": {"fields": ["Description"]}}]	14	1
687	2022-08-02 07:03:14.031608+00	e07b0a55-832a-40b5-893c-d7686bd3f666	B-cure	2	[{"added": {"name": "product image", "object": "ProductImage object (127)"}}, {"added": {"name": "product image", "object": "ProductImage object (128)"}}, {"changed": {"name": "product image", "object": "ProductImage object (70)", "fields": ["Is main"]}}]	14	1
688	2022-08-02 07:11:27.414481+00	e07b0a55-832a-40b5-893c-d7686bd3f666	B-cure	2	[{"changed": {"name": "product image", "object": "ProductImage object (127)", "fields": ["Is main"]}}, {"changed": {"name": "product image", "object": "ProductImage object (128)", "fields": ["Is main"]}}]	14	1
689	2022-08-02 07:43:59.813467+00	68a3d57a-608f-4be7-88fc-f6299964a47b	Ultrapak E	1	[{"added": {}}, {"added": {"name": "translation", "object": "Epinephrine cord made of 100% cotton, knitted into thousands of tiny loops to form long, interlocking chains. Ultrapak E knitted cord is impregnated with racemic epinephrine hydrochloride. \\r\\n\\r\\n*Note: Do not use Ultrapak E knitted cord or other epinephrine preparations with ferric sulfate solutions, including ViscoStat\\u2122, Astringedent\\u2122, and Astringedent\\u2122 X hemostatics, as a blue/black precipitate will occur.\\r\\n\\r\\n\\u2022 The original\\u2014and smallest\\u2014knitted cord\\r\\n\\u2022 Provides rapid tissue displacement, detailed margins, and quality impressions\\r\\n\\u2022 Facilitates easy packing and stays placed better than any twisted or braided cord\\r\\n\\u2022 Compresses upon packing then expands for optimal retraction\\r\\n\\u2022 Does not entangle in diamond bur\\r\\n\\u2022 High carbon steel blade ensures a clean cut\\r\\n\\u2022 Thin plastic gate prevents cord from falling into the bottle upon cutting\\r\\n\\u2022 Ruler printed on label provides easy cord measurement: \\u064a\\u062a\\u0645 \\u062a\\u0634\\u0631\\u064a\\u0628 \\u0627\\u0644\\u062d\\u0628\\u0644 \\u0627\\u0644\\u0645\\u062d\\u0628\\u0648\\u0643 \\u0647\\u064a\\u062f\\u0631\\u0648\\u0643\\u0644\\u0648\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0628\\u064a\\u0646\\u0641\\u0631\\u064a\\u0646 \\u0627\\u0644\\u0631\\u0627\\u0633\\u064a\\u0645\\u064a\\r\\n\\r\\n\\u0645\\u0635\\u0646\\u0648\\u0639 \\u0645\\u0646 \\u0661\\u0660\\u0660\\u066a \\u0642\\u0637\\u0646\\u060c \\u0645\\u062d\\u0628\\u0648\\u0643 \\u0644\\u0627\\u0644\\u0627\\u0641 \\u0645\\u0646 \\u0627\\u0644\\u062d\\u0644\\u0642\\u0627\\u062a \\u0627\\u0644\\u0635\\u063a\\u064a\\u0631\\u0629 \\u0648 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u062a\\u0635\\u0645\\u064a\\u0645 \\u064a\\u0645\\u0627\\u0631\\u0633 \\u0627\\u0644\\u0636\\u063a\\u0637 \\u0627\\u0644\\u062e\\u0641\\u064a\\u0641 \\u0639\\u0646\\u062f \\u0648\\u0636\\u0639\\u0647 \\u0641\\u064a\\u0642\\u0648\\u0645 \\u0628\\u0627\\u0628\\u0639\\u0627\\u062f \\u0627\\u0644\\u0627\\u0646\\u0633\\u062c\\u0629 \\u0639\\u0646 \\u0627\\u0644\\u0623\\u0633\\u0646\\u0627\\u0646 \\u0641\\u064a \\r\\n\\u0665 \\u062f\\u0642\\u0627\\u0626\\u0642 \\u0641\\u064a \\u0631\\u0627\\u062d\\u0629 \\u0648 \\u0627\\u0645\\u0627\\u0646 \\u0644\\u0644\\u0627\\u0646\\u0633\\u062c\\u0629"}}, {"added": {"name": "product image", "object": "ProductImage object (129)"}}, {"added": {"name": "product image", "object": "ProductImage object (130)"}}, {"added": {"name": "product image", "object": "ProductImage object (131)"}}, {"added": {"name": "product image", "object": "ProductImage object (132)"}}, {"added": {"name": "product image", "object": "ProductImage object (133)"}}, {"added": {"name": "product video url", "object": "ProductVideoUrl object (28)"}}, {"added": {"name": "product video url", "object": "ProductVideoUrl object (29)"}}]	14	1
690	2022-08-03 14:27:12.713614+00	3	Cilincs & Centers	2	[{"changed": {"fields": ["Sav"]}}]	11	1
691	2022-08-03 14:27:21.718437+00	2	Brands	2	[{"changed": {"fields": ["Sav"]}}]	11	1
692	2022-08-03 14:27:31.295878+00	1	Happy Customers	2	[{"changed": {"fields": ["Sav"]}}]	11	1
693	2022-08-03 14:30:19.812155+00	3	Cilincs & Centers	2	[]	11	1
694	2022-08-03 15:35:57.59487+00	21d8f1c3-3f16-40f0-b24c-c36094af9d72	Micro motor 119/E-type	2	[{"added": {"name": "product image", "object": "ProductImage object (134)"}}, {"added": {"name": "product image", "object": "ProductImage object (135)"}}, {"added": {"name": "product image", "object": "ProductImage object (136)"}}]	14	1
695	2022-08-03 15:37:38.854332+00	21d8f1c3-3f16-40f0-b24c-c36094af9d72	Micro motor 119/E-type	2	[{"added": {"name": "product image", "object": "ProductImage object (137)"}}]	14	1
696	2022-08-04 09:58:30.59432+00	68a3d57a-608f-4be7-88fc-f6299964a47b	Ultrapak E	2	[{"changed": {"name": "product image", "object": "ProductImage object (129)", "fields": ["Image"]}}]	14	1
697	2022-08-04 10:11:00.90868+00	68a3d57a-608f-4be7-88fc-f6299964a47b	Ultrapak E	2	[{"changed": {"name": "product image", "object": "ProductImage object (129)", "fields": ["Image"]}}]	14	1
698	2022-08-07 07:09:09.068689+00	13	Tools	1	[{"added": {}}]	19	1
750	2022-09-29 08:56:43.778889+00	1	About Us	2	[{"changed": {"fields": ["About text"]}}]	9	31
751	2022-09-29 08:58:18.263287+00	1	About Us	2	[{"changed": {"fields": ["About text"]}}]	9	31
752	2022-09-29 09:01:22.675644+00	1	HomeDetails object (1)	2	[{"changed": {"fields": ["Categories caption", "About us 1 caption"]}}]	49	31
753	2022-09-29 09:02:25.906085+00	1	HomeDetails object (1)	2	[{"changed": {"fields": ["About us 1 caption", "About us 2 caption"]}}]	49	31
754	2022-09-29 10:46:44.015084+00	1	HomeDetails object (1)	2	[{"changed": {"fields": ["Categories caption", "About us 1 caption", "About us 2 caption"]}}]	49	31
699	2022-08-07 07:21:51.600053+00	7011f172-99ac-4eb0-8daa-e6e9126d69fd	Fischer's Ultrapak Packers (45º to handle)	1	[{"added": {}}, {"added": {"name": "translation", "object": "Thin Serrated Packing Instruments. Their thin edges and fine serrations sink into the cord, preventing it from slipping off and reducing the risk of cutting the gingival attachment.\\r\\n\\r\\nOur most popular packers, with heads at 45\\u00b0 to the handle and three packing sides. Circular packing of the prep can be completed without the need to flip the instrument end to end. Use the small packer on lower anteriors and upper lateral incisors.: \\u0623\\u062f\\u0648\\u0627\\u062a \\u0627\\u0644\\u062a\\u0639\\u0628\\u0626\\u0629 \\u0627\\u0644\\u0645\\u0633\\u0646\\u0646\\u0629 \\u0627\\u0644\\u0631\\u0642\\u064a\\u0642\\u0629\\u060c \\u062a\\u063a\\u0631\\u0642 \\u062d\\u0648\\u0627\\u0641\\u0647\\u0627 \\u0627\\u0644\\u0631\\u0642\\u064a\\u0642\\u0629 \\u0648\\u062a\\u0633\\u0646\\u064a\\u0646\\u0627\\u062a\\u0647\\u0627 \\u0627\\u0644\\u062f\\u0642\\u064a\\u0642\\u0629 \\u0641\\u064a \\u0627\\u0644\\u062d\\u0628\\u0644 \\u060c \\u0645\\u0645\\u0627 \\u064a\\u0645\\u0646\\u0639\\u0647 \\u0645\\u0646 \\u0627\\u0644\\u0627\\u0646\\u0632\\u0644\\u0627\\u0642 \\u0648\\u064a\\u0642\\u0644\\u0644 \\u0645\\u0646 \\u062e\\u0637\\u0631 \\u0642\\u0637\\u0639 \\u0627\\u0644\\u0645\\u0631\\u0641\\u0642 \\u0627\\u0644\\u0644\\u062b\\u0648\\u064a"}}, {"added": {"name": "product image", "object": "ProductImage object (138)"}}, {"added": {"name": "product image", "object": "ProductImage object (139)"}}, {"added": {"name": "product image", "object": "ProductImage object (140)"}}]	14	1
700	2022-08-07 07:28:14.32615+00	e07b0a55-832a-40b5-893c-d7686bd3f666	B-cure	2	[{"deleted": {"name": "product image", "object": "ProductImage object (None)"}}]	14	1
701	2022-08-07 07:48:47.857272+00	021f7ba2-5e3a-4d2b-b5fd-386005b6fe72	Sof-Tray Classic Sheets	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (141)"}}]	14	1
702	2022-08-07 07:57:21.92782+00	021f7ba2-5e3a-4d2b-b5fd-386005b6fe72	Soft Tray Classic Sheets	2	[{"changed": {"fields": ["Title"]}}]	14	1
703	2022-08-07 14:09:26.625777+00	021f7ba2-5e3a-4d2b-b5fd-386005b6fe72	Soft Tray Classic Sheets	2	[{"added": {"name": "product item", "object": "Soft Tray Classic Sheets A1"}}, {"added": {"name": "product item", "object": "Soft Tray Classic Sheets A2"}}]	14	1
704	2022-08-07 14:12:39.515794+00	021f7ba2-5e3a-4d2b-b5fd-386005b6fe72	Soft Tray Classic Sheets	2	[{"changed": {"fields": ["Product item title"]}}]	14	1
705	2022-08-07 14:13:33.700331+00	021f7ba2-5e3a-4d2b-b5fd-386005b6fe72	Soft Tray Classic Sheets	2	[{"changed": {"fields": ["Product item title"]}}]	14	1
706	2022-08-07 15:26:27.216298+00	2	Soft Tray Classic Sheets A2	2	[{"changed": {"fields": ["Stock"]}}]	50	1
707	2022-08-07 15:29:06.122687+00	397	Tanda 18L	3		39	1
708	2022-08-07 15:35:39.87238+00	021f7ba2-5e3a-4d2b-b5fd-386005b6fe72	Soft Tray Classic Sheets	2	[{"changed": {"fields": ["Product item title"]}}]	14	1
709	2022-08-08 12:39:58.533979+00	13	Tools	2	[{"changed": {"fields": ["Image", "Hover image"]}}]	19	1
710	2022-08-14 13:08:47.120506+00	21d8f1c3-3f16-40f0-b24c-c36094af9d72	Micro motor 119/E-type	3		14	1
711	2022-08-14 13:09:21.159522+00	c28a4bca-a54e-4bd8-bebe-882cee702b02	i-Sensor size 2	3		14	1
712	2022-09-14 13:13:18.407029+00	13	01011731731	3		21	1
713	2022-09-14 13:15:14.061199+00	17	01010121212	3		21	1
714	2022-09-14 13:15:14.064439+00	18	01234567898	3		21	1
715	2022-09-14 13:15:14.066188+00	32	01011731731	3		21	1
716	2022-09-14 13:17:10.851205+00	33	5868	3		35	1
717	2022-09-14 14:16:23.780854+00	33	01011731731	3		21	1
718	2022-09-18 08:55:49.90143+00	127	User: Eslam Ghanem - Order Code: 9932094d2022 - Date: 2022-06-19 - Register ID: None	3		43	1
719	2022-09-18 08:55:49.907714+00	125	User: Eslam Ghanem - Order Code: 90b833fc2022 - Date: 2022-06-07 - Register ID: None	3		43	1
720	2022-09-18 08:55:49.908933+00	119	User: Eslam Ghanem - Order Code: 1c6a41632022 - Date: 2022-06-06 - Register ID: 29e46f36-752b-46d4-904b-b8454efb42c6	3		43	1
721	2022-09-18 08:55:49.910725+00	116	User: Eslam Ghanem - Order Code: 9120b5992022 - Date: 2022-06-02 - Register ID: None	3		43	1
722	2022-09-18 08:55:49.911967+00	115	User: Eslam Ghanem - Order Code: 3ebfa6be2022 - Date: 2022-05-30 - Register ID: None	3		43	1
723	2022-09-18 08:55:49.913006+00	114	User: Eslam Ghanem - Order Code: 911501c92022 - Date: 2022-05-30 - Register ID: None	3		43	1
724	2022-09-18 08:55:49.91402+00	113	User: Eslam Ghanem - Order Code: 133122b82022 - Date: 2022-05-30 - Register ID: None	3		43	1
725	2022-09-18 08:55:49.914843+00	44	User: Eslam Ghanem - Order Code: 5f831bd92022 - Date: 2022-05-17 - Register ID: 47077697	3		43	1
726	2022-09-18 08:55:49.915743+00	40	User: Eslam Ghanem - Order Code: e9afcb592022 - Date: 2022-05-15 - Register ID: 46822061	3		43	1
727	2022-09-18 08:55:49.916798+00	33	User: Eslam Ghanem - Order Code: a9d6dea12022 - Date: 2022-05-12 - Register ID: 46365424	3		43	1
728	2022-09-18 08:55:49.917614+00	27	User: Eslam Ghanem - Order Code: 1879d3bf2022 - Date: 2022-05-11 - Register ID: 46258362	3		43	1
729	2022-09-18 08:55:49.918447+00	22	User: Eslam Ghanem - Order Code: b0c36f522022 - Date: 2022-04-25 - Register ID: 76e08610-d991-400d-800f-215a2233d047	3		43	1
730	2022-09-18 08:57:41.717448+00	139	User: Eslam Ghanem - Order Code: 25ab70522022 - Date: 2022-09-18 - Register ID: None	3		43	1
731	2022-09-18 10:40:02.782691+00	144	User: Eslam Ghanem - Order Code: 1b3d43ec2022 - Date: 2022-09-18 - Register ID: None	3		43	1
732	2022-09-18 10:40:02.787414+00	143	User: Eslam Ghanem - Order Code: d157df172022 - Date: 2022-09-18 - Register ID: None	3		43	1
733	2022-09-18 10:40:02.78848+00	142	User: Eslam Ghanem - Order Code: 479ef85c2022 - Date: 2022-09-18 - Register ID: None	3		43	1
734	2022-09-18 10:40:02.789339+00	141	User: Eslam Ghanem - Order Code: 643c98832022 - Date: 2022-09-18 - Register ID: None	3		43	1
735	2022-09-18 10:40:02.790668+00	140	User: Eslam Ghanem - Order Code: 0f9fe6d42022 - Date: 2022-09-18 - Register ID: None	3		43	1
736	2022-09-18 12:26:48.805813+00	327	User: mousa nagah - Order Code: af5364452022 - Product Title: Led F	2	[{"changed": {"fields": ["Product title ar", "Status"]}}]	44	1
737	2022-09-21 12:52:55.712688+00	9	asdasdasda	1	[{"added": {}}]	36	1
738	2022-09-21 12:53:19.041982+00	9	asdasdasda	3		36	1
739	2022-09-22 15:35:34.735848+00	31	01121135548	2	[{"changed": {"fields": ["Is active"]}}]	21	1
740	2022-09-26 08:29:27.441738+00	3	Cilincs & Centers - 70	2	[{"changed": {"fields": ["Sav"]}}]	11	1
741	2022-09-26 08:30:26.043563+00	3	Cilincs & Centers - 70	2	[{"changed": {"fields": ["Sav"]}}]	11	1
742	2022-09-26 08:31:04.443058+00	2	Brands - 30	2	[{"changed": {"fields": ["Sav"]}}]	11	1
743	2022-09-26 08:31:48.367314+00	1	Happy Customers - 334	2	[{"changed": {"fields": ["Sav"]}}]	11	1
744	2022-09-26 09:01:09.318673+00	1	Happy Customers - 334	2	[{"changed": {"fields": ["Sav"]}}]	11	1
745	2022-09-26 09:02:06.235433+00	3	Cilincs & Centers - 70	2	[{"changed": {"fields": ["Sav"]}}]	11	1
746	2022-09-26 09:03:21.872877+00	2	Brands - 30	2	[{"changed": {"fields": ["Sav"]}}]	11	1
747	2022-09-26 09:03:32.998743+00	1	Happy Customers - 334	2	[{"changed": {"fields": ["Sav"]}}]	11	1
748	2022-09-26 09:04:36.230333+00	1	Happy Customers - 334	2	[{"changed": {"fields": ["Sav"]}}]	11	1
756	2022-09-29 10:50:53.911332+00	1	HomeDetails object (1)	2	[{"changed": {"fields": ["About us 1 image"]}}]	49	31
757	2022-09-29 10:53:57.380392+00	11	Devices	2	[{"changed": {"fields": ["Image", "Hover image"]}}]	19	31
758	2022-09-29 10:54:01.087235+00	11	Devices	2	[{"changed": {"fields": ["Image", "Hover image"]}}]	19	31
759	2022-09-29 10:54:34.012929+00	12	Materials	2	[{"changed": {"fields": ["Image", "Hover image"]}}]	19	31
760	2022-09-29 10:54:40.884678+00	12	Materials	2	[]	19	31
761	2022-09-29 10:55:05.464918+00	13	Tools	2	[{"changed": {"fields": ["Image", "Hover image"]}}]	19	31
762	2022-09-29 10:59:33.279978+00	12	Materials	2	[{"changed": {"fields": ["Hover image"]}}]	19	31
763	2022-09-29 11:04:54.634311+00	1	About Us	2	[{"changed": {"fields": ["About image"]}}]	9	31
764	2022-09-29 11:29:07.906358+00	1	Contact us	2	[{"changed": {"fields": ["Phone", "Email", "Address", "Address url"]}}]	8	31
765	2022-09-29 11:38:26.189843+00	8	𝐖𝐨𝐨𝐝𝐩𝐞𝐜𝐤𝐞𝐫 𝐎𝐧𝐥𝐢𝐧𝐞 𝐂𝐨𝐮𝐫𝐬𝐞𝐬 𝐍𝐨.202	2	[{"changed": {"fields": ["Brand", "Image"]}}]	36	31
766	2022-09-29 11:41:36.320829+00	8	𝐖𝐨𝐨𝐝𝐩𝐞𝐜𝐤𝐞𝐫 𝐎𝐧𝐥𝐢𝐧𝐞 𝐂𝐨𝐮𝐫𝐬𝐞𝐬 𝐍𝐨.202	2	[]	36	31
767	2022-09-29 12:31:28.310855+00	11	Devices	2	[{"changed": {"fields": ["Image", "Hover image"]}}]	19	31
768	2022-10-02 09:22:54.032839+00	1	About Us	2	[{"changed": {"fields": ["About text"]}}]	9	1
769	2022-10-02 09:29:39.369385+00	3	Woodpecker	2	[{"changed": {"fields": ["Image"]}}]	13	1
770	2022-10-09 12:03:20.394316+00	11	Devices	2	[{"changed": {"fields": ["Category image", "Category details image"]}}]	19	1
771	2022-10-09 12:08:06.510863+00	12	Materials	2	[{"changed": {"fields": ["Category image", "Category details image"]}}]	19	1
772	2022-10-09 12:08:32.379705+00	13	Tools	2	[{"changed": {"fields": ["Category image", "Category details image"]}}]	19	1
773	2022-10-09 12:30:59.516722+00	1	TERMS & CONDITIONS POLICY	1	[{"added": {}}]	51	1
774	2022-10-09 12:32:06.359837+00	2	PRIVACY POLICY	1	[{"added": {}}]	51	1
775	2022-10-09 12:32:27.209432+00	3	RETURN POLICY	1	[{"added": {}}]	51	1
776	2022-10-09 12:34:11.776097+00	4	POINTS TERMS & CONDITIONS	1	[{"added": {}}]	51	1
777	2022-10-09 12:34:46.87638+00	1	What are all the locations of KMC?	1	[{"added": {}}]	52	1
778	2022-10-09 12:35:00.30335+00	2	What is KMC’s working hours?	1	[{"added": {}}]	52	1
779	2022-10-09 12:35:12.934684+00	3	What brands are you selling under?	1	[{"added": {}}]	52	1
780	2022-10-09 12:35:32.805755+00	4	What happens if my card isn’t working on my account?	1	[{"added": {}}]	52	1
781	2022-10-09 12:35:48.346387+00	5	How many days will it take to get my package?	1	[{"added": {}}]	52	1
782	2022-10-09 12:36:01.355573+00	6	What is the longest time I can wait before refunding the product I recieved?	1	[{"added": {}}]	52	1
783	2022-10-09 12:36:12.668373+00	7	What will the procedure be if my package came damaged?	1	[{"added": {}}]	52	1
784	2022-10-09 12:36:22.166254+00	8	Where do you deliver to?	1	[{"added": {}}]	52	1
785	2022-10-09 12:36:34.994536+00	9	What do you sell?	1	[{"added": {}}]	52	1
786	2022-10-09 13:04:44.533208+00	4	Points Terms & Conditions	2	[{"changed": {"fields": ["Service Title"]}}]	51	1
787	2022-10-09 13:05:01.539022+00	3	Return Policy	2	[{"changed": {"fields": ["Service Title"]}}]	51	1
788	2022-10-09 13:05:14.738676+00	2	Privacy Policy	2	[{"changed": {"fields": ["Service Title"]}}]	51	1
789	2022-10-09 13:05:37.375279+00	1	Terms & Conditions Policy	2	[{"changed": {"fields": ["Service Title"]}}]	51	1
790	2022-10-13 08:42:20.342014+00	8	𝐖𝐨𝐨𝐝𝐩𝐞𝐜𝐤𝐞𝐫 𝐎𝐧𝐥𝐢𝐧𝐞 𝐂𝐨𝐮𝐫𝐬𝐞𝐬 𝐍𝐨.202	2	[{"changed": {"fields": ["Image"]}}]	36	31
791	2022-10-13 09:05:04.88619+00	29	01010081222	3		21	1
792	2022-10-13 09:06:43.697671+00	1	offers	1	[{"added": {}}]	53	31
793	2022-10-13 09:09:13.174052+00	821375a9-17ca-4a00-b8ac-9a8362887704	MotoPex	2	[{"changed": {"fields": ["Rate"]}}]	14	31
794	2022-10-13 09:09:53.265718+00	821375a9-17ca-4a00-b8ac-9a8362887704	MotoPex	2	[{"changed": {"fields": ["Rate"]}}]	14	31
795	2022-10-13 09:18:11.155374+00	11	Devices	2	[{"changed": {"fields": ["Category image"]}}]	19	31
796	2022-10-13 09:21:17.733836+00	13	Tools	2	[{"changed": {"fields": ["Image", "Category image", "Category details image"]}}]	19	31
797	2022-10-13 09:22:22.295227+00	12	Materials	2	[{"changed": {"fields": ["Image"]}}]	19	31
798	2022-10-13 09:22:41.507627+00	12	Materials	2	[{"changed": {"fields": ["Category image", "Category details image"]}}]	19	31
799	2022-10-13 09:25:40.707694+00	13	Tools	2	[{"changed": {"fields": ["Category details image"]}}]	19	31
800	2022-10-13 09:28:44.116179+00	13	Tools	2	[{"changed": {"fields": ["Category image", "Category details image"]}}]	19	31
801	2022-10-13 09:30:37.320693+00	12	Materials	2	[{"changed": {"fields": ["Category details image"]}}]	19	31
802	2022-10-13 10:00:35.382388+00	1	What are all the locations of KMC?	2	[]	52	31
803	2022-10-13 10:07:47.804865+00	79	Points object (79)	2	[{"changed": {"fields": ["Points"]}}]	42	31
804	2022-10-13 10:09:57.09548+00	155	User: karim - Order Code: 4254bea72022 - Date: 2022-10-13 - Register ID: None	2	[{"changed": {"fields": ["Order status"]}}]	43	31
805	2022-10-13 10:10:24.727338+00	155	User: karim - Order Code: 4254bea72022 - Date: 2022-10-13 - Register ID: None	2	[{"changed": {"fields": ["Order status"]}}]	43	31
806	2022-10-13 10:13:17.942806+00	47	Order Code :  4254bea72022 - Date : 2022-10-13	2	[{"changed": {"name": "refund item", "object": "Order Code : 4254bea72022 - Q7 - 1", "fields": ["To refund quantity"]}}]	47	31
809	2022-10-13 13:30:33.743826+00	82	Review object (82)	2	[{"changed": {"fields": ["Rate"]}}]	17	1
810	2022-10-13 13:32:40.554954+00	2c5633e0-786a-4d67-a7e2-6e3572c6b508	i-Led	2	[{"changed": {"fields": ["Rate"]}}]	14	1
811	2022-10-16 11:15:59.3694+00	3ce51006-6393-4fa8-8684-a4ce6520151c	A naturalistic study of brushing patterns using powered toothbrushes.	1	[{"added": {}}]	37	31
812	2022-10-16 12:38:54.820364+00	04e74632-6afd-4f2f-8d40-4d1145cb577a	Q7	2	[{"changed": {"fields": ["Price", "Sale price"]}}]	14	1
813	2022-10-16 12:43:06.665364+00	48	Order Code :  63c000de2022 - Date : 2022-10-16	2	[{"changed": {"name": "refund item", "object": "Order Code : 63c000de2022 - Q7 - 1", "fields": ["To refund quantity"]}}]	47	1
815	2022-10-17 09:04:09.873502+00	04e74632-6afd-4f2f-8d40-4d1145cb577a	Q7	2	[{"changed": {"fields": ["Price", "Sale price"]}}]	14	1
816	2022-10-20 10:57:52.379591+00	23	Obtura System	1	[{"added": {}}]	18	31
858	2023-05-17 14:43:51.695715+00	6d9cc09a-e26a-40bd-9cb6-8b5acad702f9	U-Bond	3		14	1
859	2023-05-17 14:43:51.6975+00	7011f172-99ac-4eb0-8daa-e6e9126d69fd	Fischer's Ultrapak Packers (45º to handle)	3		14	1
860	2023-05-17 14:43:51.698256+00	76aea991-1405-4bf9-986a-6869f96f7872	U-6	3		14	1
861	2023-05-17 14:43:51.698971+00	7b48ce26-a176-4a24-8d87-8379c99e0c60	Apex Blue	3		14	1
862	2023-05-17 14:43:51.699687+00	821375a9-17ca-4a00-b8ac-9a8362887704	MotoPex	3		14	1
817	2022-10-20 14:44:19.111233+00	41594e5b-8b19-4656-8e18-907be15f61ed	Fi-G & Fi-P	1	[{"added": {}}, {"added": {"name": "product image", "object": "Fi-G & Fi-P - product/Fi-G & Fi-P/2.jpeg"}}, {"added": {"name": "product video url", "object": "Fi-G & Fi-P - https://www.youtube.com/embed/bHVnVKtARTA"}}, {"added": {"name": "product video url", "object": "Fi-G & Fi-P - https://www.youtube.com/embed/seGUyvtvU3c"}}, {"added": {"name": "product video url", "object": "Fi-G & Fi-P - https://www.youtube.com/embed/66sgCyqeY-c"}}, {"added": {"name": "product video url", "object": "Fi-G & Fi-P - https://www.youtube.com/embed/1knNihLUDfE"}}]	14	31
818	2022-10-23 09:12:51.445996+00	49	Order Code :  55f869e42022 - Date : 2022-10-23	2	[{"changed": {"name": "refund item", "object": "Order Code : 55f869e42022 - UDS-K LED - 1", "fields": ["To refund quantity"]}}]	47	31
820	2022-10-23 09:52:32.768135+00	39	01098872271	3		21	1
821	2022-10-23 09:56:18.904658+00	164	User: Youssef Shaker - Order Code: c08cb8762022 - Date: 2022-10-23 - Register ID: None	2	[{"changed": {"fields": ["Order status"]}}]	43	1
822	2022-10-23 09:58:43.242439+00	165	User: Youssef Shaker - Order Code: d41d44982022 - Date: 2022-10-23 - Register ID: None	2	[{"changed": {"fields": ["Order status"]}}]	43	1
823	2022-10-23 10:00:57.63631+00	165	User: Youssef Shaker - Order Code: d41d44982022 - Date: 2022-10-23 - Register ID: None	2	[{"changed": {"fields": ["Order status"]}}]	43	1
824	2022-10-23 10:06:21.762774+00	50	Order Code :  3a065f4e2022 - Date : 2022-10-23	2	[{"changed": {"name": "refund item", "object": "Order Code : 3a065f4e2022 - Apex Blue - 1", "fields": ["To refund quantity"]}}]	47	1
825	2022-10-23 10:07:27.558532+00	51	Order Code :  810665792022 - Date : 2022-10-23	2	[{"changed": {"name": "refund item", "object": "Order Code : 810665792022 - Zoom single kit - 1", "fields": ["To refund quantity"]}}]	47	1
826	2022-10-23 10:15:25.477595+00	52	Order Code :  ec0702a82022 - Date : 2022-10-23	2	[{"changed": {"name": "refund item", "object": "Order Code : ec0702a82022 - Apex Blue - 1", "fields": ["To refund quantity"]}}]	47	1
827	2022-10-27 09:14:56.090946+00	133	Ultrapak E - product/Ultrapak E/Ultrapak_E_Cord_Size_2_1.jpeg	2	[]	15	1
828	2022-10-30 08:01:20.216421+00	169	User: mousa nageh - Order Code: e0848f912022 - Date: 2022-10-30 - Register ID: None	2	[{"changed": {"fields": ["Order status"]}}]	43	1
829	2022-10-30 08:01:24.295938+00	169	User: mousa nageh - Order Code: e0848f912022 - Date: 2022-10-30 - Register ID: None	2	[]	43	1
830	2022-10-30 08:05:36.769614+00	53	Order Code :  e0848f912022 - Date : 2022-10-30	2	[{"changed": {"name": "refund item", "object": "Order Code : e0848f912022 - MiniS (RTA) - 1", "fields": ["To refund quantity"]}}, {"changed": {"name": "refund item", "object": "Order Code : e0848f912022 - Apex Blue - 11", "fields": ["To refund quantity"]}}]	47	1
831	2022-10-30 08:52:47.175968+00	5	test12	1	[{"added": {}}]	40	1
832	2022-10-30 09:01:00.788774+00	54	Order Code :  3eea8b832022 - Date : 2022-10-30	2	[{"changed": {"name": "refund item", "object": "Order Code : 3eea8b832022 - MiniS (RTA) - 2", "fields": ["To refund quantity"]}}]	47	1
833	2022-10-30 12:25:02.184655+00	03b72a45-05f7-4cc9-8e25-95365bf03849	Zoom single kit	2	[{"changed": {"name": "product image", "object": "Zoom single kit - product/Zoom single kit/Acid_Etch.png", "fields": ["Image"]}}]	14	1
834	2022-10-30 12:27:10.4704+00	2ede9c6f-c5fb-4a24-8e51-15a93f2380dc	MiniS (RTA)	2	[{"changed": {"name": "product image", "object": "MiniS (RTA) - product/MiniS (RTA)/Minis_190227.png", "fields": ["Image"]}}]	14	1
835	2022-10-30 12:49:26.457343+00	021f7ba2-5e3a-4d2b-b5fd-386005b6fe72	Soft Tray Classic Sheets	2	[{"changed": {"name": "product image", "object": "Soft Tray Classic Sheets - product/Soft Tray Classic Sheets/Soft_tray_Classic_Sheets.png", "fields": ["Image"]}}]	14	1
836	2022-10-30 13:08:15.197948+00	04e74632-6afd-4f2f-8d40-4d1145cb577a	Q7	2	[{"changed": {"name": "product image", "object": "Q7 - product/Q7/5_qFJXDPg.png", "fields": ["Image"]}}]	14	1
837	2022-11-02 20:26:17.636093+00	163	User: mousa nageh - Order Code: 810665792022 - Date: 2022-10-23 - Register ID: None	2	[{"changed": {"fields": ["Total price"]}}]	43	1
838	2023-04-30 12:32:23.485617+00	109	Points object (109)	2	[{"changed": {"fields": ["Points"]}}]	42	1
839	2023-05-01 11:57:09.015591+00	56	Order Code :  443a81e62023 - Date : 2023-05-01	2	[{"changed": {"name": "refund item", "object": "Order Code : 443a81e62023 - MiniS (RTA) - 1", "fields": ["To refund quantity"]}}]	47	1
840	2023-05-01 12:23:05.024043+00	57	Order Code :  24a73cfb2023 - Date : 2023-05-01	2	[{"changed": {"name": "refund item", "object": "Order Code : 24a73cfb2023 - Fischer's Ultrapak Packers (45\\u00ba to handle) - 1", "fields": ["To refund quantity"]}}]	47	1
841	2023-05-16 08:08:34.387513+00	4ab2223d-17e7-41a6-9465-3598351f081d	Apex Gold Plus V	3		14	31
842	2023-05-16 08:35:29.94072+00	94066a49-0d5e-4fe5-b11d-be8569c7cb03	Apex Gold Plus V	1	[{"added": {}}, {"added": {"name": "translation", "object": "Woodpex V is the Fifth Generation of the popular Gold series.\\r\\n\\r\\nFeatures:\\r\\n1) Accurate: Eliminate interference through DSP data processing system.\\r\\n2) New technology: US data processing chip\\r\\n3) Sound volume can be adjusted: OFF, Low, medium and High.\\r\\n4) O-led colored screen display.: Woodpex V \\u0647\\u0648 \\u0627\\u0644\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062e\\u0627\\u0645\\u0633 \\u0645\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0633\\u0644\\u0629 \\u0627\\u0644\\u0630\\u0647\\u0628\\u064a\\u0629 \\u0627\\u0644\\u0634\\u0647\\u064a\\u0631\\u0629\\r\\n\\r\\n\\u0633\\u0645\\u0627\\u062a\\r\\n\\u062f\\u0642\\u064a\\u0642: \\u062a\\u062e\\u0644\\u0635 \\u0645\\u0646 \\u0627\\u0644\\u062a\\u062f\\u0627\\u062e\\u0644 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0646\\u0638\\u0627\\u0645 \\u0645\\u0639\\u0627\\u0644\\u062c\\u0629 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a DSP.\\r\\n \\u0627\\u0644\\u062a\\u0643\\u0646\\u0648\\u0644\\u0648\\u062c\\u064a\\u0627 \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f\\u0629: \\u0631\\u0642\\u0627\\u0642\\u0629 \\u0645\\u0639\\u0627\\u0644\\u062c\\u0629 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0623\\u0645\\u0631\\u064a\\u0643\\u064a\\u0629\\r\\n \\u064a\\u0645\\u0643\\u0646 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u062c\\u0645 \\u0627\\u0644\\u0635\\u0648\\u062a: \\u0625\\u064a\\u0642\\u0627\\u0641 \\u060c \\u0645\\u0646\\u062e\\u0641\\u0636 \\u060c \\u0645\\u062a\\u0648\\u0633\\u0637 \\u0648\\u200b\\u200b\\u0639\\u0627\\u0644\\u064a\\r\\n\\u0634\\u0627\\u0634\\u0629 \\u0645\\u0644\\u0648\\u0646\\u0629 O-led"}}, {"added": {"name": "product image", "object": "Apex Gold Plus V - product/Apex Gold Plus V/Gold_plus_V_1.png"}}, {"added": {"name": "product image", "object": "Apex Gold Plus V - product/Apex Gold Plus V/Gold_Plus_V_2.png"}}, {"added": {"name": "product image", "object": "Apex Gold Plus V - product/Apex Gold Plus V/Gold_plus_V_3.png"}}, {"added": {"name": "product image", "object": "Apex Gold Plus V - product/Apex Gold Plus V/Gold_plus_V_4.png"}}, {"added": {"name": "product video url", "object": "Apex Gold Plus V - https://www.youtube.com/embed/UuCvpEbgurI"}}, {"added": {"name": "product item", "object": "Apex Gold Plus V Mint"}}, {"added": {"name": "product item", "object": "Apex Gold Plus V Melon"}}]	14	31
843	2023-05-16 08:37:41.07157+00	94066a49-0d5e-4fe5-b11d-be8569c7cb03	Apex Gold Plus V	2	[{"changed": {"fields": ["Product item title"]}}, {"deleted": {"name": "product item", "object": "Apex Gold Plus V Mint"}}, {"deleted": {"name": "product item", "object": "Apex Gold Plus V Melon"}}]	14	31
844	2023-05-17 14:43:51.675446+00	021f7ba2-5e3a-4d2b-b5fd-386005b6fe72	Soft Tray Classic Sheets	3		14	1
845	2023-05-17 14:43:51.68427+00	03b72a45-05f7-4cc9-8e25-95365bf03849	Zoom single kit	3		14	1
846	2023-05-17 14:43:51.685301+00	04e74632-6afd-4f2f-8d40-4d1145cb577a	Q7	3		14	1
847	2023-05-17 14:43:51.686274+00	09d4f44f-e1b5-4f4e-829d-3da5b51a765b	DenFil N	3		14	1
848	2023-05-17 14:43:51.687178+00	0d373ffd-51a7-4095-9f82-6f979738d86b	DenFil Etchant	3		14	1
849	2023-05-17 14:43:51.688027+00	165144d1-88c4-470e-b35f-dd6071d0da33	King Kong (Japanese Bearings)	3		14	1
850	2023-05-17 14:43:51.688861+00	2c5633e0-786a-4d67-a7e2-6e3572c6b508	i-Led	3		14	1
851	2023-05-17 14:43:51.690315+00	2ede9c6f-c5fb-4a24-8e51-15a93f2380dc	MiniS (RTA)	3		14	1
852	2023-05-17 14:43:51.691272+00	36391c85-567b-4740-8e45-1f82597c0c01	Ultrapak	3		14	1
853	2023-05-17 14:43:51.692035+00	41594e5b-8b19-4656-8e18-907be15f61ed	Fi-G & Fi-P	3		14	1
854	2023-05-17 14:43:51.692773+00	55a70082-0bdc-4b4b-a1d7-57e90c3a4847	UDS-K LED	3		14	1
855	2023-05-17 14:43:51.693515+00	5b1f4e89-e9fe-4ba2-8e8e-03b6813d0597	Ai-Motor	3		14	1
856	2023-05-17 14:43:51.694283+00	68a3d57a-608f-4be7-88fc-f6299964a47b	Ultrapak E	3		14	1
857	2023-05-17 14:43:51.694995+00	6d7fc330-7c9d-404f-9152-1af900cc46ab	DenFil Bulk Flow	3		14	1
863	2023-05-17 14:43:51.70045+00	8bce460e-76fa-4ac4-9e55-f2bbf7bc5616	E-com	3		14	1
864	2023-05-17 14:43:51.702369+00	94066a49-0d5e-4fe5-b11d-be8569c7cb03	Apex Gold Plus V	3		14	1
865	2023-05-17 14:43:51.703117+00	a6340c5a-42d7-40b1-ae2f-2685748d0f82	DenFil Flow	3		14	1
866	2023-05-17 14:43:51.703837+00	c4b17ff2-5676-4608-a561-d14812432f44	Apex Gold Plus III	3		14	1
867	2023-05-17 14:43:51.704555+00	cac23bb0-443f-473c-9490-bf2aff0c09d4	Led D	3		14	1
868	2023-05-17 14:43:51.705277+00	ccc7cccf-0d02-4c98-aeec-928390dbad8f	Led F	3		14	1
869	2023-05-17 14:43:51.705997+00	cf47ba15-2d0c-487f-9f03-8a99768eedcb	Tanda 18L	3		14	1
870	2023-05-17 14:43:51.707204+00	d00163c7-ec90-40ad-8113-3230290440a1	A-Led	3		14	1
871	2023-05-17 14:43:51.707946+00	d03f68d5-1c9e-4f4e-b8a8-aeca15c31f91	U-Cem	3		14	1
872	2023-05-17 14:43:51.708709+00	d063cc1e-10e3-48cb-9339-b70b0a3bb999	Gemini™ Laser	3		14	1
873	2023-05-17 14:43:51.709431+00	d06f336a-f7d6-409d-ad0d-1350ccd26ed4	Dual Core	3		14	1
874	2023-05-17 14:43:51.71014+00	e07b0a55-832a-40b5-893c-d7686bd3f666	B-cure	3		14	1
875	2023-05-17 14:43:51.710902+00	eafb75a8-4bb7-499c-89c3-adca04e1a6ad	Zoom NiteWhite 22% CP	3		14	1
876	2023-05-17 14:43:51.71162+00	ef2a66ca-ed73-4ee2-a3fe-49a3ea9db75a	Q3	3		14	1
877	2023-05-17 14:43:51.712345+00	f4c5e182-a1f3-4fb2-9e9b-da2857859ddd	Tanda 23L	3		14	1
878	2023-05-17 14:44:38.114038+00	401	User: Youssef Shaker - Order Code: 2c6f1d2a2023 - Product Title: Q7	3		44	1
879	2023-05-17 14:44:38.11683+00	400	User: Youssef Shaker - Order Code: da2f248b2023 - Product Title: Q7	3		44	1
880	2023-05-17 14:44:38.117693+00	399	User: Youssef Shaker - Order Code: 443a81e62023 - Product Title: MiniS (RTA)	3		44	1
881	2023-05-17 14:44:38.118538+00	398	User: Youssef Shaker - Order Code: 8e170ce62023 - Product Title: Fischer's Ultrapak Packers (45º to handle)	3		44	1
882	2023-05-17 14:44:38.119319+00	397	User: Youssef Shaker - Order Code: 24a73cfb2023 - Product Title: Fischer's Ultrapak Packers (45º to handle)	3		44	1
883	2023-05-17 14:44:38.120108+00	396	User: Youssef Shaker - Order Code: 2b2d77652023 - Product Title: Fischer's Ultrapak Packers (45º to handle)	3		44	1
884	2023-05-17 14:44:38.120981+00	395	User: Youssef Shaker - Order Code: 306378582023 - Product Title: Fischer's Ultrapak Packers (45º to handle)	3		44	1
885	2023-05-17 14:44:38.12269+00	394	User: Youssef Shaker - Order Code: 54191c842023 - Product Title: Fischer's Ultrapak Packers (45º to handle)	3		44	1
886	2023-05-17 14:44:38.123413+00	393	User: Youssef Shaker - Order Code: bdb53d0c2023 - Product Title: Q7	3		44	1
887	2023-05-17 14:44:38.12438+00	392	User: karim - Order Code: 602dfd852023 - Product Title: Q7	3		44	1
888	2023-05-17 14:44:38.12515+00	391	User: karim - Order Code: 602dfd852023 - Product Title: Zoom single kit	3		44	1
889	2023-05-17 14:44:38.125865+00	390	User: karim - Order Code: e6649ef72023 - Product Title: Q7	3		44	1
890	2023-05-17 14:44:38.126559+00	389	User: karim - Order Code: e6649ef72023 - Product Title: Zoom single kit	3		44	1
891	2023-05-17 14:44:38.127314+00	388	User: karim - Order Code: 8e769b702022 - Product Title: MotoPex	3		44	1
892	2023-05-17 14:44:38.128042+00	387	User: karim - Order Code: 640541212022 - Product Title: MiniS (RTA)	3		44	1
893	2023-05-17 14:44:38.128793+00	386	User: karim - Order Code: 871fb2cf2022 - Product Title: Apex Blue	3		44	1
894	2023-05-17 14:44:38.129508+00	385	User: karim - Order Code: 871fb2cf2022 - Product Title: i-Led	3		44	1
895	2023-05-17 14:44:38.130233+00	384	User: karim - Order Code: 871fb2cf2022 - Product Title: MiniS (RTA)	3		44	1
896	2023-05-17 14:44:38.131013+00	383	User: karim - Order Code: 3bead48a2022 - Product Title: Zoom single kit	3		44	1
897	2023-05-17 14:44:38.131718+00	382	User: karim - Order Code: 76d748112022 - Product Title: MiniS (RTA)	3		44	1
898	2023-05-17 14:44:38.132433+00	381	User: karim - Order Code: d1e6c9b52022 - Product Title: UDS-K LED	3		44	1
899	2023-05-17 14:44:38.133142+00	380	User: karim - Order Code: d1e6c9b52022 - Product Title: MiniS (RTA)	3		44	1
900	2023-05-17 14:44:38.133838+00	379	User: karim - Order Code: d1e6c9b52022 - Product Title: Fi-G & Fi-P	3		44	1
901	2023-05-17 14:44:38.134534+00	378	User: karim - Order Code: d1e6c9b52022 - Product Title: i-Led	3		44	1
902	2023-05-17 14:44:38.135234+00	377	User: karim - Order Code: d1e6c9b52022 - Product Title: Q7	3		44	1
903	2023-05-17 14:44:38.136356+00	376	User: karim - Order Code: cf8901992022 - Product Title: MotoPex	3		44	1
904	2023-05-17 14:44:38.137067+00	375	User: karim - Order Code: cf8901992022 - Product Title: MiniS (RTA)	3		44	1
905	2023-05-17 14:44:38.137757+00	374	User: mousa nageh - Order Code: eabe34f42022 - Product Title: Q7	3		44	1
906	2023-05-17 14:44:38.13846+00	373	User: mousa nageh - Order Code: 3eea8b832022 - Product Title: MiniS (RTA)	3		44	1
907	2023-05-17 14:44:38.139172+00	372	User: mousa nageh - Order Code: 3eea8b832022 - Product Title: Apex Blue	3		44	1
908	2023-05-17 14:44:38.139869+00	371	User: mousa nageh - Order Code: 6e289a9a2022 - Product Title: King Kong (Japanese Bearings)	3		44	1
909	2023-05-17 14:44:38.143517+00	370	User: mousa nageh - Order Code: e0848f912022 - Product Title: Apex Blue	3		44	1
910	2023-05-17 14:44:38.144336+00	369	User: mousa nageh - Order Code: e0848f912022 - Product Title: MiniS (RTA)	3		44	1
911	2023-05-17 14:44:38.145059+00	368	User: mousa nageh - Order Code: 22e2ef712022 - Product Title: Apex Blue	3		44	1
912	2023-05-17 14:44:38.145766+00	367	User: mousa nageh - Order Code: 22e2ef712022 - Product Title: MiniS (RTA)	3		44	1
913	2023-05-17 14:44:38.146474+00	366	User: mousa nageh - Order Code: ec0702a82022 - Product Title: King Kong (Japanese Bearings)	3		44	1
914	2023-05-17 14:44:38.147178+00	365	User: mousa nageh - Order Code: ec0702a82022 - Product Title: UDS-K LED	3		44	1
915	2023-05-17 14:44:38.147885+00	364	User: mousa nageh - Order Code: ec0702a82022 - Product Title: Apex Blue	3		44	1
916	2023-05-17 14:44:38.148628+00	363	User: mousa nageh - Order Code: ec0702a82022 - Product Title: Zoom single kit	3		44	1
917	2023-05-17 14:44:38.149336+00	362	User: mousa nageh - Order Code: ec0702a82022 - Product Title: MiniS (RTA)	3		44	1
918	2023-05-17 14:44:38.15004+00	361	User: mousa nageh - Order Code: 3a065f4e2022 - Product Title: MiniS (RTA)	3		44	1
919	2023-05-17 14:44:38.151004+00	360	User: mousa nageh - Order Code: 3a065f4e2022 - Product Title: Apex Blue	3		44	1
920	2023-05-17 14:44:38.151709+00	359	User: mousa nageh - Order Code: 3a065f4e2022 - Product Title: Zoom single kit	3		44	1
921	2023-05-17 14:44:38.152429+00	358	User: Youssef Shaker - Order Code: d41d44982022 - Product Title: King Kong (Japanese Bearings)	3		44	1
922	2023-05-17 14:44:38.153131+00	357	User: Youssef Shaker - Order Code: c08cb8762022 - Product Title: King Kong (Japanese Bearings)	3		44	1
923	2023-05-17 14:44:38.153847+00	356	User: mousa nageh - Order Code: 810665792022 - Product Title: Zoom single kit	3		44	1
924	2023-05-17 14:44:38.154542+00	355	User: mousa nageh - Order Code: 8aa5fb1a2022 - Product Title: UDS-K LED	3		44	1
925	2023-05-17 14:44:38.156066+00	354	User: mousa nageh - Order Code: 8aa5fb1a2022 - Product Title: Apex Blue	3		44	1
926	2023-05-17 14:44:38.157472+00	353	User: mousa nageh - Order Code: 8aa5fb1a2022 - Product Title: Led F	3		44	1
927	2023-05-17 14:44:38.158234+00	352	User: karim - Order Code: 55f869e42022 - Product Title: MiniS (RTA)	3		44	1
928	2023-05-17 14:44:38.158987+00	351	User: karim - Order Code: 55f869e42022 - Product Title: King Kong (Japanese Bearings)	3		44	1
929	2023-05-17 14:44:38.159722+00	350	User: karim - Order Code: 55f869e42022 - Product Title: Q7	3		44	1
930	2023-05-17 14:44:38.160474+00	349	User: karim - Order Code: 55f869e42022 - Product Title: Soft Tray Classic Sheets	3		44	1
931	2023-05-17 14:44:38.16122+00	348	User: karim - Order Code: 55f869e42022 - Product Title: Zoom single kit	3		44	1
932	2023-05-17 14:44:38.161922+00	347	User: karim - Order Code: 55f869e42022 - Product Title: UDS-K LED	3		44	1
933	2023-05-17 14:44:38.162658+00	346	User: karim - Order Code: 4bd8b1502022 - Product Title: Apex Blue	3		44	1
934	2023-05-17 14:44:38.163342+00	345	User: karim - Order Code: aa52ed482022 - Product Title: Q7	3		44	1
935	2023-05-17 14:44:38.164026+00	340	User: karim - Order Code: d066d73c2022 - Product Title: MiniS (RTA)	3		44	1
936	2023-05-17 14:44:38.164735+00	339	User: karim - Order Code: 4254bea72022 - Product Title: King Kong (Japanese Bearings)	3		44	1
937	2023-05-17 14:44:38.165428+00	338	User: karim - Order Code: 4254bea72022 - Product Title: Soft Tray Classic Sheets	3		44	1
938	2023-05-17 14:44:38.166113+00	337	User: karim - Order Code: 4254bea72022 - Product Title: Q7	3		44	1
939	2023-05-17 14:44:38.166979+00	336	User: karim - Order Code: 68ca17382022 - Product Title: King Kong (Japanese Bearings)	3		44	1
940	2023-05-17 14:44:38.167678+00	335	User: karim - Order Code: 68ca17382022 - Product Title: Soft Tray Classic Sheets	3		44	1
941	2023-05-17 14:44:38.16838+00	334	User: karim - Order Code: 68ca17382022 - Product Title: Q7	3		44	1
942	2023-05-17 14:44:38.169073+00	326	User: Eslam Ghanem - Order Code: 0a9714202022 - Product Title: Zoom single kit	3		44	1
943	2023-05-17 14:44:38.169769+00	325	User: Eslam Ghanem - Order Code: 0a9714202022 - Product Title: UDS-K LED	3		44	1
944	2023-05-17 14:44:38.170604+00	324	User: Eslam Ghanem - Order Code: 33cc2b5e2022 - Product Title: Led F	3		44	1
945	2023-05-17 14:44:38.171302+00	323	User: Eslam Ghanem - Order Code: 33cc2b5e2022 - Product Title: MotoPex	3		44	1
946	2023-05-17 14:44:38.171994+00	246	User: Loay - Order Code: 734515272022 - Product Title: Pliers	3		44	1
947	2023-05-17 14:44:38.173122+00	245	User: Loay - Order Code: 734515272022 - Product Title: LED Curing light-	3		44	1
948	2023-05-17 14:44:38.17382+00	244	User: Loay - Order Code: b6bfc4e82022 - Product Title: LED Curing light-	3		44	1
949	2023-05-17 14:44:38.174517+00	234	User: Loay - Order Code: a17fff3a2022 - Product Title: 11	3		44	1
950	2023-05-17 14:44:38.175214+00	233	User: Loay - Order Code: a17fff3a2022 - Product Title: sadsad	3		44	1
951	2023-05-17 14:44:38.175935+00	232	User: Loay - Order Code: 816e71ab2022 - Product Title: sadsad	3		44	1
952	2023-05-17 14:44:38.176642+00	225	User: Loay - Order Code: 30a157bb2022 - Product Title: sadsad	3		44	1
953	2023-05-17 14:44:38.177328+00	224	User: Loay - Order Code: c967b0322022 - Product Title: sadsad	3		44	1
954	2023-05-17 14:44:38.178009+00	223	User: Loay - Order Code: f50b80412022 - Product Title: sadsad	3		44	1
955	2023-05-17 14:44:38.17869+00	222	User: Loay - Order Code: 33708d202022 - Product Title: sadsad	3		44	1
956	2023-05-17 14:44:38.179388+00	219	User: Loay - Order Code: 8101f7de2022 - Product Title: sadsad	3		44	1
957	2023-05-17 14:44:38.180074+00	218	User: Loay - Order Code: 490c51862022 - Product Title: sadsad	3		44	1
958	2023-05-17 14:44:38.180809+00	217	User: Loay - Order Code: 3db18a942022 - Product Title: sadsad	3		44	1
959	2023-05-17 14:44:38.181525+00	216	User: Loay - Order Code: c708b3342022 - Product Title: sadsad	3		44	1
960	2023-05-17 14:44:38.182216+00	215	User: Loay - Order Code: 4c767c252022 - Product Title: sadsad	3		44	1
961	2023-05-17 14:44:38.182908+00	214	User: Loay - Order Code: 4c767c252022 - Product Title: test	3		44	1
962	2023-05-17 14:44:38.183598+00	213	User: Loay - Order Code: 484a89582022 - Product Title: sadsad	3		44	1
963	2023-05-17 14:44:38.184298+00	212	User: Loay - Order Code: 484a89582022 - Product Title: test	3		44	1
964	2023-05-17 14:44:38.185003+00	211	User: Loay - Order Code: 3a4d4e532022 - Product Title: sadsad	3		44	1
965	2023-05-17 14:44:38.185732+00	210	User: Loay - Order Code: 3a4d4e532022 - Product Title: test	3		44	1
966	2023-05-17 14:44:38.186416+00	209	User: Loay - Order Code: 43ed98872022 - Product Title: test	3		44	1
967	2023-05-17 14:44:38.187121+00	207	User: Loay - Order Code: d2815b442022 - Product Title: sadsad	3		44	1
968	2023-05-17 14:44:38.187807+00	130	User: Loay - Order Code: f43ebe5c2022 - Product Title: 12321321	3		44	1
969	2023-05-17 14:44:38.188545+00	129	User: Loay - Order Code: f43ebe5c2022 - Product Title: 12321	3		44	1
970	2023-05-17 14:44:38.189229+00	128	User: Loay - Order Code: f43ebe5c2022 - Product Title: wqewqe	3		44	1
971	2023-05-17 14:44:50.445749+00	190	User: Youssef Shaker - Order Code: 2c6f1d2a2023 - Date: 2023-05-01 - Register ID: None	3		43	1
972	2023-05-17 14:44:50.448247+00	189	User: Youssef Shaker - Order Code: da2f248b2023 - Date: 2023-04-30 - Register ID: None	3		43	1
973	2023-05-17 14:44:50.449185+00	188	User: Youssef Shaker - Order Code: 443a81e62023 - Date: 2023-04-30 - Register ID: None	3		43	1
974	2023-05-17 14:44:50.450004+00	187	User: Youssef Shaker - Order Code: 8e170ce62023 - Date: 2023-04-30 - Register ID: None	3		43	1
975	2023-05-17 14:44:50.450856+00	186	User: Youssef Shaker - Order Code: 24a73cfb2023 - Date: 2023-04-30 - Register ID: None	3		43	1
976	2023-05-17 14:44:50.451674+00	185	User: Youssef Shaker - Order Code: 2b2d77652023 - Date: 2023-04-30 - Register ID: None	3		43	1
977	2023-05-17 14:44:50.452487+00	184	User: Youssef Shaker - Order Code: 306378582023 - Date: 2023-04-30 - Register ID: None	3		43	1
978	2023-05-17 14:44:50.453208+00	183	User: Youssef Shaker - Order Code: 54191c842023 - Date: 2023-04-30 - Register ID: None	3		43	1
979	2023-05-17 14:44:50.453922+00	182	User: Youssef Shaker - Order Code: bdb53d0c2023 - Date: 2023-04-30 - Register ID: None	3		43	1
980	2023-05-17 14:44:50.454727+00	181	User: karim - Order Code: 602dfd852023 - Date: 2023-04-30 - Register ID: None	3		43	1
981	2023-05-17 14:44:50.455481+00	180	User: karim - Order Code: e6649ef72023 - Date: 2023-04-30 - Register ID: None	3		43	1
982	2023-05-17 14:44:50.456312+00	179	User: karim - Order Code: 8e769b702022 - Date: 2022-11-09 - Register ID: None	3		43	1
983	2023-05-17 14:44:50.457239+00	178	User: karim - Order Code: 640541212022 - Date: 2022-11-03 - Register ID: None	3		43	1
984	2023-05-17 14:44:50.457964+00	177	User: karim - Order Code: 871fb2cf2022 - Date: 2022-11-03 - Register ID: None	3		43	1
985	2023-05-17 14:44:50.458691+00	176	User: karim - Order Code: 3bead48a2022 - Date: 2022-11-03 - Register ID: None	3		43	1
986	2023-05-17 14:44:50.459453+00	175	User: karim - Order Code: 76d748112022 - Date: 2022-11-03 - Register ID: None	3		43	1
987	2023-05-17 14:44:50.460213+00	174	User: karim - Order Code: d1e6c9b52022 - Date: 2022-11-03 - Register ID: None	3		43	1
988	2023-05-17 14:44:50.461023+00	173	User: karim - Order Code: cf8901992022 - Date: 2022-11-03 - Register ID: None	3		43	1
989	2023-05-17 14:44:50.461864+00	172	User: mousa nageh - Order Code: eabe34f42022 - Date: 2022-10-30 - Register ID: None	3		43	1
990	2023-05-17 14:44:50.462631+00	171	User: mousa nageh - Order Code: 3eea8b832022 - Date: 2022-10-30 - Register ID: None	3		43	1
991	2023-05-17 14:44:50.463341+00	170	User: mousa nageh - Order Code: 6e289a9a2022 - Date: 2022-10-30 - Register ID: None	3		43	1
992	2023-05-17 14:44:50.464042+00	169	User: mousa nageh - Order Code: e0848f912022 - Date: 2022-10-30 - Register ID: None	3		43	1
993	2023-05-17 14:44:50.464758+00	168	User: mousa nageh - Order Code: 22e2ef712022 - Date: 2022-10-30 - Register ID: None	3		43	1
994	2023-05-17 14:44:50.466049+00	167	User: mousa nageh - Order Code: ec0702a82022 - Date: 2022-10-23 - Register ID: None	3		43	1
995	2023-05-17 14:44:50.466796+00	166	User: mousa nageh - Order Code: 3a065f4e2022 - Date: 2022-10-23 - Register ID: None	3		43	1
996	2023-05-17 14:44:50.467522+00	165	User: Youssef Shaker - Order Code: d41d44982022 - Date: 2022-10-23 - Register ID: None	3		43	1
997	2023-05-17 14:44:50.468242+00	164	User: Youssef Shaker - Order Code: c08cb8762022 - Date: 2022-10-23 - Register ID: None	3		43	1
998	2023-05-17 14:44:50.468985+00	163	User: mousa nageh - Order Code: 810665792022 - Date: 2022-10-23 - Register ID: None	3		43	1
999	2023-05-17 14:44:50.469681+00	162	User: mousa nageh - Order Code: 8aa5fb1a2022 - Date: 2022-10-23 - Register ID: None	3		43	1
1000	2023-05-17 14:44:50.470404+00	161	User: karim - Order Code: 55f869e42022 - Date: 2022-10-23 - Register ID: None	3		43	1
1001	2023-05-17 14:44:50.471136+00	160	User: karim - Order Code: 4bd8b1502022 - Date: 2022-10-16 - Register ID: None	3		43	1
1002	2023-05-17 14:44:50.471827+00	159	User: karim - Order Code: aa52ed482022 - Date: 2022-10-16 - Register ID: None	3		43	1
1003	2023-05-17 14:44:50.472575+00	156	User: karim - Order Code: d066d73c2022 - Date: 2022-10-13 - Register ID: None	3		43	1
1004	2023-05-17 14:44:50.473351+00	155	User: karim - Order Code: 4254bea72022 - Date: 2022-10-13 - Register ID: 563c3c76-c658-45f5-a477-a7778c5afe44	3		43	1
1005	2023-05-17 14:44:50.474045+00	154	User: karim - Order Code: 68ca17382022 - Date: 2022-10-13 - Register ID: None	3		43	1
1006	2023-05-17 14:44:50.474737+00	146	User: Eslam Ghanem - Order Code: 0a9714202022 - Date: 2022-09-18 - Register ID: None	3		43	1
1007	2023-05-17 14:44:50.47544+00	145	User: Eslam Ghanem - Order Code: 33cc2b5e2022 - Date: 2022-09-18 - Register ID: None	3		43	1
1008	2023-05-17 14:44:50.476133+00	102	User: Loay - Order Code: 734515272022 - Date: 2022-05-19 - Register ID: None	3		43	1
1009	2023-05-17 14:44:50.476863+00	101	User: Loay - Order Code: b6bfc4e82022 - Date: 2022-05-19 - Register ID: None	3		43	1
1010	2023-05-17 14:44:50.477627+00	97	User: Loay - Order Code: a17fff3a2022 - Date: 2022-05-19 - Register ID: 47380671	3		43	1
1011	2023-05-17 14:44:50.478348+00	96	User: Loay - Order Code: 816e71ab2022 - Date: 2022-05-19 - Register ID: 47380525	3		43	1
1012	2023-05-17 14:44:50.479519+00	93	User: Loay - Order Code: 30a157bb2022 - Date: 2022-05-18 - Register ID: 47296543	3		43	1
1013	2023-05-17 14:44:50.480266+00	92	User: Loay - Order Code: c967b0322022 - Date: 2022-05-18 - Register ID: 47296538	3		43	1
1014	2023-05-17 14:44:50.481037+00	91	User: Loay - Order Code: f50b80412022 - Date: 2022-05-18 - Register ID: 47295286	3		43	1
1015	2023-05-17 14:44:50.481777+00	90	User: Loay - Order Code: 33708d202022 - Date: 2022-05-18 - Register ID: 47293337	3		43	1
1016	2023-05-17 14:44:50.482479+00	88	User: Loay - Order Code: 8101f7de2022 - Date: 2022-05-18 - Register ID: 47289003	3		43	1
1017	2023-05-17 14:44:50.483185+00	87	User: Loay - Order Code: 490c51862022 - Date: 2022-05-18 - Register ID: 47287684	3		43	1
1018	2023-05-17 14:44:50.483887+00	86	User: Loay - Order Code: 3db18a942022 - Date: 2022-05-18 - Register ID: 47285438	3		43	1
1019	2023-05-17 14:44:50.484596+00	85	User: Loay - Order Code: c708b3342022 - Date: 2022-05-18 - Register ID: 47285038	3		43	1
1020	2023-05-17 14:44:50.485301+00	84	User: Loay - Order Code: 4c767c252022 - Date: 2022-05-18 - Register ID: 47283773	3		43	1
1021	2023-05-17 14:44:50.486008+00	83	User: Loay - Order Code: 484a89582022 - Date: 2022-05-18 - Register ID: 47281303	3		43	1
1022	2023-05-17 14:44:50.486707+00	82	User: Loay - Order Code: 3a4d4e532022 - Date: 2022-05-18 - Register ID: 47279869	3		43	1
1023	2023-05-17 14:44:50.487489+00	81	User: Loay - Order Code: 43ed98872022 - Date: 2022-05-18 - Register ID: 47269709	3		43	1
1024	2023-05-17 14:44:50.488193+00	79	User: Loay - Order Code: d2815b442022 - Date: 2022-05-18 - Register ID: 47266575	3		43	1
1025	2023-05-17 14:44:50.488935+00	47	User: Loay - Order Code: f43ebe5c2022 - Date: 2022-05-18 - Register ID: 47225756	3		43	1
1026	2023-05-18 07:03:38.113461+00	1	ContactForm object (1)	3		7	1
1027	2023-05-18 07:03:38.117411+00	2	ContactForm object (2)	3		7	1
1028	2023-05-18 07:03:38.118383+00	3	ContactForm object (3)	3		7	1
1029	2023-05-18 07:03:38.119291+00	4	ContactForm object (4)	3		7	1
1030	2023-05-18 07:03:38.120371+00	5	ContactForm object (5)	3		7	1
1031	2023-05-18 07:03:38.121262+00	6	ContactForm object (6)	3		7	1
1032	2023-05-18 07:03:38.12212+00	7	ContactForm object (7)	3		7	1
1033	2023-05-18 07:03:38.123668+00	8	ContactForm object (8)	3		7	1
1034	2023-05-18 07:03:38.124457+00	9	ContactForm object (9)	3		7	1
1035	2023-05-18 07:03:38.12523+00	10	ContactForm object (10)	3		7	1
1036	2023-05-18 07:03:38.125983+00	11	ContactForm object (11)	3		7	1
1037	2023-05-18 07:03:38.126735+00	12	ContactForm object (12)	3		7	1
1038	2023-05-18 07:03:38.127471+00	13	ContactForm object (13)	3		7	1
1039	2023-05-18 07:03:38.128183+00	14	ContactForm object (14)	3		7	1
1040	2023-05-18 07:03:38.128928+00	15	ContactForm object (15)	3		7	1
1041	2023-05-18 07:03:38.129679+00	16	ContactForm object (16)	3		7	1
1042	2023-05-18 07:03:38.130383+00	17	ContactForm object (17)	3		7	1
1043	2023-05-18 07:03:38.131128+00	18	ContactForm object (18)	3		7	1
1044	2023-05-18 07:03:38.131841+00	19	ContactForm object (19)	3		7	1
1045	2023-05-18 07:03:38.132563+00	20	ContactForm object (20)	3		7	1
1046	2023-05-18 07:03:38.133266+00	21	ContactForm object (21)	3		7	1
1047	2023-05-18 07:03:38.134463+00	22	ContactForm object (22)	3		7	1
1048	2023-05-18 07:03:38.135207+00	23	ContactForm object (23)	3		7	1
1049	2023-05-18 07:03:38.135938+00	24	ContactForm object (24)	3		7	1
1050	2023-05-18 07:03:38.13668+00	25	ContactForm object (25)	3		7	1
1051	2023-05-18 07:03:38.13738+00	26	ContactForm object (26)	3		7	1
1052	2023-05-18 07:03:38.138098+00	27	ContactForm object (27)	3		7	1
1053	2023-05-18 07:03:38.138979+00	28	ContactForm object (28)	3		7	1
1054	2023-05-18 07:03:38.140072+00	29	ContactForm object (29)	3		7	1
1055	2023-05-18 07:03:38.140892+00	30	ContactForm object (30)	3		7	1
1056	2023-05-18 07:03:38.141627+00	31	ContactForm object (31)	3		7	1
1057	2023-05-18 07:03:38.142332+00	32	ContactForm object (32)	3		7	1
1058	2023-05-18 07:03:38.143049+00	33	ContactForm object (33)	3		7	1
1059	2023-05-18 07:03:38.143772+00	34	ContactForm object (34)	3		7	1
1060	2023-05-18 07:03:38.14448+00	35	ContactForm object (35)	3		7	1
1061	2023-05-18 07:03:38.145174+00	36	ContactForm object (36)	3		7	1
1062	2023-05-18 07:03:38.145871+00	37	ContactForm object (37)	3		7	1
1063	2023-05-18 07:03:38.146579+00	38	ContactForm object (38)	3		7	1
1064	2023-05-18 07:03:38.147312+00	39	ContactForm object (39)	3		7	1
1065	2023-05-18 07:03:38.148073+00	40	ContactForm object (40)	3		7	1
1066	2023-05-18 07:03:38.149008+00	41	ContactForm object (41)	3		7	1
1067	2023-05-18 07:03:38.149936+00	42	ContactForm object (42)	3		7	1
1068	2023-05-18 07:03:38.150651+00	43	ContactForm object (43)	3		7	1
1069	2023-05-18 07:03:38.151572+00	44	ContactForm object (44)	3		7	1
1070	2023-05-18 07:03:38.152496+00	45	ContactForm object (45)	3		7	1
1071	2023-05-18 07:03:38.153204+00	46	ContactForm object (46)	3		7	1
1072	2023-05-18 07:03:38.15391+00	47	ContactForm object (47)	3		7	1
1073	2023-05-18 07:03:38.154603+00	48	ContactForm object (48)	3		7	1
1074	2023-05-18 07:03:38.155291+00	49	ContactForm object (49)	3		7	1
1075	2023-05-18 07:03:38.155999+00	50	ContactForm object (50)	3		7	1
1076	2023-05-18 07:03:38.156715+00	51	ContactForm object (51)	3		7	1
1077	2023-05-18 07:03:38.157398+00	52	ContactForm object (52)	3		7	1
1078	2023-05-18 07:03:38.158124+00	53	ContactForm object (53)	3		7	1
1079	2023-05-18 07:03:38.158826+00	54	ContactForm object (54)	3		7	1
1080	2023-05-18 07:03:38.159594+00	55	ContactForm object (55)	3		7	1
1081	2023-05-18 07:03:38.160309+00	56	ContactForm object (56)	3		7	1
1082	2023-05-18 07:03:38.161049+00	57	ContactForm object (57)	3		7	1
1083	2023-05-18 07:03:38.162135+00	58	ContactForm object (58)	3		7	1
1084	2023-05-18 07:03:38.162841+00	59	ContactForm object (59)	3		7	1
1085	2023-05-18 07:03:38.163526+00	60	ContactForm object (60)	3		7	1
1086	2023-05-18 07:03:38.164208+00	61	ContactForm object (61)	3		7	1
1087	2023-05-18 07:03:38.16499+00	62	ContactForm object (62)	3		7	1
1088	2023-05-18 07:03:38.165712+00	63	ContactForm object (63)	3		7	1
1089	2023-05-18 07:03:38.166423+00	64	ContactForm object (64)	3		7	1
1090	2023-05-18 07:03:38.167127+00	65	ContactForm object (65)	3		7	1
1091	2023-05-18 07:03:38.167826+00	66	ContactForm object (66)	3		7	1
1092	2023-05-18 07:03:38.168532+00	67	ContactForm object (67)	3		7	1
1093	2023-05-18 07:03:38.169249+00	68	ContactForm object (68)	3		7	1
1094	2023-05-18 07:03:38.169999+00	69	ContactForm object (69)	3		7	1
1095	2023-05-18 07:03:38.170723+00	70	ContactForm object (70)	3		7	1
1096	2023-05-18 07:03:38.171414+00	71	ContactForm object (71)	3		7	1
1097	2023-05-18 07:03:38.172132+00	72	ContactForm object (72)	3		7	1
1098	2023-05-18 07:03:38.172923+00	73	ContactForm object (73)	3		7	1
1099	2023-05-18 07:03:38.173675+00	74	ContactForm object (74)	3		7	1
1100	2023-05-18 07:03:38.174713+00	75	ContactForm object (75)	3		7	1
1101	2023-05-18 07:03:38.175412+00	76	ContactForm object (76)	3		7	1
1102	2023-05-18 07:03:38.176126+00	77	ContactForm object (77)	3		7	1
1103	2023-05-18 07:03:38.177267+00	78	ContactForm object (78)	3		7	1
1104	2023-05-18 07:03:38.177977+00	79	ContactForm object (79)	3		7	1
1105	2023-05-18 07:03:38.178665+00	80	ContactForm object (80)	3		7	1
1106	2023-05-18 07:03:38.179347+00	81	ContactForm object (81)	3		7	1
1107	2023-05-18 07:03:38.180124+00	82	ContactForm object (82)	3		7	1
1108	2023-05-18 07:03:38.18093+00	83	ContactForm object (83)	3		7	1
1109	2023-05-18 07:03:38.181711+00	84	ContactForm object (84)	3		7	1
1110	2023-05-18 07:03:38.182411+00	85	ContactForm object (85)	3		7	1
1111	2023-05-18 07:03:38.183123+00	86	ContactForm object (86)	3		7	1
1112	2023-05-18 07:03:38.183834+00	87	ContactForm object (87)	3		7	1
1113	2023-05-18 07:03:38.184544+00	88	ContactForm object (88)	3		7	1
1114	2023-05-18 07:03:38.18522+00	89	ContactForm object (89)	3		7	1
1115	2023-05-18 07:03:38.185906+00	90	ContactForm object (90)	3		7	1
1116	2023-05-18 07:03:38.186587+00	91	ContactForm object (91)	3		7	1
1117	2023-05-18 07:03:38.187294+00	92	ContactForm object (92)	3		7	1
1118	2023-05-18 07:03:38.187992+00	93	ContactForm object (93)	3		7	1
1119	2023-05-18 07:03:38.188703+00	94	ContactForm object (94)	3		7	1
1120	2023-05-18 07:03:38.189946+00	95	ContactForm object (95)	3		7	1
1121	2023-05-18 07:03:38.190671+00	96	ContactForm object (96)	3		7	1
1122	2023-05-18 07:03:38.191372+00	97	ContactForm object (97)	3		7	1
1123	2023-05-18 07:03:38.19208+00	98	ContactForm object (98)	3		7	1
1124	2023-05-18 07:03:38.192893+00	99	ContactForm object (99)	3		7	1
1125	2023-05-18 07:03:38.193712+00	100	ContactForm object (100)	3		7	1
1126	2023-05-18 07:03:50.653258+00	101	ContactForm object (101)	3		7	1
1127	2023-05-18 07:03:50.655704+00	102	ContactForm object (102)	3		7	1
1128	2023-05-18 07:03:50.656981+00	103	ContactForm object (103)	3		7	1
1129	2023-05-18 07:03:50.658265+00	104	ContactForm object (104)	3		7	1
1130	2023-05-18 07:03:50.659117+00	105	ContactForm object (105)	3		7	1
1131	2023-05-18 07:03:50.660188+00	106	ContactForm object (106)	3		7	1
1132	2023-05-18 07:03:50.661021+00	107	ContactForm object (107)	3		7	1
1133	2023-05-18 07:03:50.661754+00	108	ContactForm object (108)	3		7	1
1134	2023-05-18 07:03:50.662468+00	109	ContactForm object (109)	3		7	1
1135	2023-05-18 07:03:50.663343+00	110	ContactForm object (110)	3		7	1
1136	2023-05-18 07:03:50.664054+00	111	ContactForm object (111)	3		7	1
1137	2023-05-18 07:03:50.665017+00	112	ContactForm object (112)	3		7	1
1138	2023-05-18 07:03:50.665965+00	113	ContactForm object (113)	3		7	1
1139	2023-05-18 07:03:50.666877+00	114	ContactForm object (114)	3		7	1
1140	2023-05-18 07:03:50.667801+00	115	ContactForm object (115)	3		7	1
1141	2023-05-18 07:03:50.668541+00	116	ContactForm object (116)	3		7	1
1142	2023-05-18 07:03:50.669294+00	117	ContactForm object (117)	3		7	1
1143	2023-05-18 07:03:50.670043+00	118	ContactForm object (118)	3		7	1
1144	2023-05-18 07:03:50.671323+00	119	ContactForm object (119)	3		7	1
1145	2023-05-18 07:03:50.672025+00	120	ContactForm object (120)	3		7	1
1146	2023-05-18 07:03:50.672722+00	121	ContactForm object (121)	3		7	1
1147	2023-05-18 07:03:50.673405+00	122	ContactForm object (122)	3		7	1
1148	2023-05-18 07:03:50.674093+00	123	ContactForm object (123)	3		7	1
1149	2023-05-18 07:03:50.67513+00	124	ContactForm object (124)	3		7	1
1150	2023-05-18 07:03:50.676124+00	125	ContactForm object (125)	3		7	1
1151	2023-05-18 07:03:50.676858+00	126	ContactForm object (126)	3		7	1
1152	2023-05-18 07:03:50.67757+00	127	ContactForm object (127)	3		7	1
1153	2023-05-18 07:03:50.678243+00	128	ContactForm object (128)	3		7	1
1154	2023-05-18 07:03:50.678923+00	129	ContactForm object (129)	3		7	1
1155	2023-05-18 07:03:50.679625+00	130	ContactForm object (130)	3		7	1
1156	2023-05-18 07:03:50.680354+00	131	ContactForm object (131)	3		7	1
1157	2023-05-18 07:03:50.681048+00	132	ContactForm object (132)	3		7	1
1158	2023-05-18 07:03:50.681719+00	133	ContactForm object (133)	3		7	1
1159	2023-05-18 07:03:50.682427+00	134	ContactForm object (134)	3		7	1
1160	2023-05-18 07:03:50.683296+00	135	ContactForm object (135)	3		7	1
1161	2023-05-18 07:03:50.683965+00	136	ContactForm object (136)	3		7	1
1162	2023-05-18 07:03:50.684967+00	137	ContactForm object (137)	3		7	1
1163	2023-05-18 07:03:50.685825+00	138	ContactForm object (138)	3		7	1
1164	2023-05-18 07:03:50.686695+00	139	ContactForm object (139)	3		7	1
1165	2023-05-18 07:03:50.687368+00	140	ContactForm object (140)	3		7	1
1166	2023-05-18 07:03:50.688052+00	141	ContactForm object (141)	3		7	1
1167	2023-05-18 07:03:50.688745+00	142	ContactForm object (142)	3		7	1
1168	2023-05-18 07:03:50.689436+00	143	ContactForm object (143)	3		7	1
1169	2023-05-18 07:03:50.690172+00	144	ContactForm object (144)	3		7	1
1170	2023-05-18 07:03:50.690869+00	145	ContactForm object (145)	3		7	1
1171	2023-05-18 07:03:50.691557+00	146	ContactForm object (146)	3		7	1
1172	2023-05-18 07:03:50.692254+00	147	ContactForm object (147)	3		7	1
1173	2023-05-18 07:03:50.692961+00	148	ContactForm object (148)	3		7	1
1174	2023-05-18 07:03:50.693652+00	149	ContactForm object (149)	3		7	1
1175	2023-05-18 07:03:50.694332+00	150	ContactForm object (150)	3		7	1
1176	2023-05-18 07:03:50.695028+00	151	ContactForm object (151)	3		7	1
1177	2023-05-18 07:03:50.695748+00	152	ContactForm object (152)	3		7	1
1178	2023-05-18 07:03:50.696667+00	153	ContactForm object (153)	3		7	1
1179	2023-05-18 07:03:50.697698+00	154	ContactForm object (154)	3		7	1
1180	2023-05-18 07:03:50.698394+00	155	ContactForm object (155)	3		7	1
1181	2023-05-18 07:03:50.699083+00	156	ContactForm object (156)	3		7	1
1182	2023-05-18 07:03:50.69989+00	157	ContactForm object (157)	3		7	1
1183	2023-05-18 07:03:50.70076+00	158	ContactForm object (158)	3		7	1
1184	2023-05-18 07:03:50.701635+00	159	ContactForm object (159)	3		7	1
1185	2023-05-18 07:03:50.702518+00	160	ContactForm object (160)	3		7	1
1186	2023-05-18 07:03:50.703203+00	161	ContactForm object (161)	3		7	1
1187	2023-05-18 07:03:50.704079+00	162	ContactForm object (162)	3		7	1
1188	2023-05-18 07:03:50.704832+00	163	ContactForm object (163)	3		7	1
1189	2023-05-18 07:03:50.705579+00	164	ContactForm object (164)	3		7	1
1190	2023-05-18 07:03:50.706299+00	165	ContactForm object (165)	3		7	1
1191	2023-05-18 07:03:50.706995+00	166	ContactForm object (166)	3		7	1
1192	2023-05-18 07:03:50.707892+00	167	ContactForm object (167)	3		7	1
1193	2023-05-18 07:03:50.708823+00	168	ContactForm object (168)	3		7	1
1194	2023-05-18 07:03:50.710128+00	169	ContactForm object (169)	3		7	1
1195	2023-05-18 07:03:50.710848+00	170	ContactForm object (170)	3		7	1
1196	2023-05-18 07:03:50.711579+00	171	ContactForm object (171)	3		7	1
1197	2023-05-18 07:03:50.712295+00	172	ContactForm object (172)	3		7	1
1198	2023-05-18 07:03:50.71309+00	173	ContactForm object (173)	3		7	1
1199	2023-05-18 09:52:37.37782+00	43	01009947991	1	[{"added": {}}]	21	1
1200	2023-05-18 09:53:24.895805+00	43	01009947991	2	[{"changed": {"fields": ["Name", "Is active", "Is staff", "Superuser status"]}}]	21	1
1201	2023-05-22 08:23:43.425188+00	07368b73-d58c-4720-8933-f8429a60da3d	Apex Blue	1	[{"added": {}}, {"added": {"name": "translation", "object": "-Fourth generation\\r\\n-High quality screen\\r\\n-Accuracy 97%\\r\\n-Battery 750 mAh\\r\\n-Most Economical Device: \\u0627\\u0644\\u062c\\u064a\\u0644 \\u0627\\u0644\\u0631\\u0627\\u0628\\u0639-\\r\\n\\u0634\\u0627\\u0634\\u0629 \\u0639\\u0627\\u0644\\u064a\\u0629 \\u0627\\u0644\\u062c\\u0648\\u062f\\u0629-\\r\\n\\u062f\\u0642\\u0629 97\\u066a-\\r\\n\\u0628\\u0637\\u0627\\u0631\\u064a\\u0629 750 \\u0645\\u0644\\u0644\\u064a \\u0623\\u0645\\u0628\\u064a\\u0631-\\r\\n\\u0627\\u0644\\u062c\\u0647\\u0627\\u0632 \\u0627\\u0644\\u0623\\u0643\\u062b\\u0631 \\u0627\\u0642\\u062a\\u0635\\u0627\\u062f\\u0627-"}}, {"added": {"name": "product image", "object": "Apex Blue - product/Apex Blue/Apex_Blue.jpeg"}}]	14	43
1202	2023-05-22 08:31:53.841757+00	ebf165fd-f821-4212-83b2-d9497392c468	WoodPex Gold Plus III	1	[{"added": {}}, {"added": {"name": "translation", "object": "-Dual Function\\r\\n-sixth Generation\\r\\n-Accuracy 97%\\r\\n-Battery 750 mAh: \\u0648\\u0638\\u064a\\u0641\\u0629 \\u0645\\u0632\\u062f\\u0648\\u062c\\u0629-\\r\\n\\u0627\\u0644\\u062c\\u064a\\u0644 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633-\\r\\n\\u062f\\u0642\\u0629 97\\u066a-\\r\\n\\u0628\\u0637\\u0627\\u0631\\u064a\\u0629 750 \\u0645\\u0644\\u0644\\u064a \\u0623\\u0645\\u0628\\u064a\\u0631-"}}, {"added": {"name": "product image", "object": "WoodPex Gold Plus III - product/WoodPex Gold Plus III/WOODPEX_III_Plus_3.png"}}, {"added": {"name": "product image", "object": "WoodPex Gold Plus III - product/WoodPex Gold Plus III/WOODPEX_III_Plus_4.png"}}, {"added": {"name": "product image", "object": "WoodPex Gold Plus III - product/WoodPex Gold Plus III/WOODPEX_III_Plus_2.png"}}]	14	43
1203	2023-05-22 08:32:15.314193+00	ebf165fd-f821-4212-83b2-d9497392c468	WoodPex Gold Plus III	2	[{"changed": {"name": "product image", "object": "WoodPex Gold Plus III - product/WoodPex Gold Plus III/WOODPEX_III_Plus_3.png", "fields": ["Is main"]}}]	14	43
1204	2023-05-22 08:47:29.09227+00	c3777f9f-1619-4e62-a661-ab9bd614babf	Apex Gold Plus V	1	[{"added": {}}, {"added": {"name": "translation", "object": "-SIX GENERATION (EDITION FIVE)\\r\\n-Accuracy 97%\\r\\n-Dual Function\\r\\n-Data processing System\\r\\n-Battery 750 mAh: \\u0627\\u0644\\u062c\\u064a\\u0644 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 (\\u0627\\u0644\\u0625\\u0635\\u062f\\u0627\\u0631 \\u0627\\u0644\\u062e\\u0627\\u0645\\u0633)-\\r\\n\\u062f\\u0642\\u0629 97\\u066a-\\r\\n\\u0648\\u0638\\u064a\\u0641\\u0629 \\u0645\\u0632\\u062f\\u0648\\u062c\\u0629-\\r\\n \\u0646\\u0638\\u0627\\u0645 \\u0645\\u0639\\u0627\\u0644\\u062c\\u0629 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a-\\r\\n\\u0628\\u0637\\u0627\\u0631\\u064a\\u0629 750 \\u0645\\u0644\\u0644\\u064a \\u0623\\u0645\\u0628\\u064a\\u0631-"}}, {"added": {"name": "product image", "object": "Apex Gold Plus V - product/Apex Gold Plus V/Gold_plus_V_1.png"}}, {"added": {"name": "product image", "object": "Apex Gold Plus V - product/Apex Gold Plus V/Gold_plus_V_4.png"}}, {"added": {"name": "product image", "object": "Apex Gold Plus V - product/Apex Gold Plus V/Gold_plus_V_3.png"}}, {"added": {"name": "product item", "object": "Apex Gold Plus V Apex Locator"}}]	14	43
1205	2023-05-22 08:55:22.166922+00	f20d3aff-3d7a-4a65-8b57-ad141a13b32b	Endo Gold	1	[{"added": {}}, {"added": {"name": "translation", "object": "-Speed 100 rpm to 1200 rpm\\r\\n-Torque Up to 5 N/cm\\r\\n-The Endo Gold is the most economic of its family: \\u0627\\u0644\\u0633\\u0631\\u0639\\u0629 100 \\u062f\\u0648\\u0631\\u0629 \\u0641\\u064a \\u0627\\u0644\\u062f\\u0642\\u064a\\u0642\\u0629 \\u0625\\u0644\\u0649 1200 \\u062f\\u0648\\u0631\\u0629 \\u0641\\u064a \\u0627\\u0644\\u062f\\u0642\\u064a\\u0642\\u0629-\\r\\n \\u0639\\u0632\\u0645 \\u064a\\u0635\\u0644 \\u0625\\u0644\\u0649 5 \\u0646\\u064a\\u0648\\u062a\\u0646 / \\u0633\\u0645-\\r\\n \\u0625\\u0646\\u062f\\u0648 \\u062c\\u0648\\u0644\\u062f \\u0647\\u0648 \\u0627\\u0644\\u0623\\u0643\\u062b\\u0631 \\u0627\\u0642\\u062a\\u0635\\u0627\\u062f\\u0627 -"}}, {"added": {"name": "product image", "object": "Endo Gold - product/Endo Gold/Endo_Gold_2.jpeg"}}, {"added": {"name": "product image", "object": "Endo Gold - product/Endo Gold/Endo_Gold_5.png"}}, {"added": {"name": "product image", "object": "Endo Gold - product/Endo Gold/Endo_Gold_3.jpeg"}}, {"added": {"name": "product item", "object": "Endo Gold Endo Motor"}}]	14	43
1206	2023-05-22 09:08:35.287353+00	fb94bb02-a98a-4726-838a-8b3be1ef585d	E-Com +	1	[{"added": {}}, {"added": {"name": "translation", "object": "-DUAL FUNCTION Connected to Apex locator\\r\\n-AUTO APICAL\\r\\n1. Reverse / Stop\\r\\n2. Slow down\\r\\n-9 modes\\r\\n-torque of 0.6 N/cm to 5 N/cm \\r\\n-speed of 100 rpm to 1000 rpm.: \\u0648\\u0638\\u064a\\u0641\\u0629 \\u0645\\u0632\\u062f\\u0648\\u062c\\u0629 \\u0645\\u062a\\u0635\\u0644\\u0629 \\u0628\\u0645\\u062d\\u062f\\u062f \\u0645\\u0648\\u0642\\u0639 \\u0627\\u0644\\u0627\\u0628\\u064a\\u0643\\u0633-\\r\\n\\u0639\\u0646\\u062f \\u0627\\u0644\\u0648\\u0635\\u0648\\u0644 \\u0644\\u0644\\u0627\\u0628\\u064a\\u0643\\u0633-\\r\\n1. \\u0639\\u0643\\u0633 / \\u062a\\u0648\\u0642\\u0641\\r\\n2. \\u062a\\u0645\\u0647\\u0644\\r\\n \\u0623\\u0648\\u0636\\u0627\\u0639 9\\r\\n \\u0639\\u0632\\u0645 \\u062f\\u0648\\u0631\\u0627\\u0646 \\u0645\\u0646 0.6 \\u0646\\u064a\\u0648\\u062a\\u0646 / \\u0633\\u0645 \\u0625\\u0644\\u0649 5 \\u0646\\u064a\\u0648\\u062a\\u0646 / \\u0633\\u0645-\\r\\n\\u0633\\u0631\\u0639\\u0629 100 \\u062f\\u0648\\u0631\\u0629 \\u0641\\u064a \\u0627\\u0644\\u062f\\u0642\\u064a\\u0642\\u0629 \\u0625\\u0644\\u0649 1000 \\u062f\\u0648\\u0631\\u0629 \\u0641\\u064a \\u0627\\u0644\\u062f\\u0642\\u064a\\u0642\\u0629-"}}, {"added": {"name": "product image", "object": "E-Com + - product/E-Com +/4.jpeg"}}, {"added": {"name": "product image", "object": "E-Com + - product/E-Com +/7.jpeg"}}, {"added": {"name": "product image", "object": "E-Com + - product/E-Com +/12.png"}}, {"added": {"name": "product item", "object": "E-Com + Endo Motor"}}]	14	43
1207	2023-05-22 09:17:13.184147+00	b2333832-738a-453c-9127-b81699bb7d81	Endo Pace	1	[{"added": {}}, {"added": {"name": "translation", "object": "-Dual Function Can be connected to Apex locator\\r\\n-CUSTOMISED RECIPROCATING  ANGLE\\r\\n-SPEED 100 rpm to 1500 rpm\\r\\n-Torque 0.6 N/cm to 4.2 Nc/m\\r\\n-durable and silent\\r\\n-It has four working modes: forward, reverse, reciprocation and ATR.\\r\\n -It can be connected to the Apex Locator.: \\u0633\\u0631\\u0639\\u0629 100 \\u062f\\u0648\\u0631\\u0629 \\u0641\\u064a \\u0627\\u0644\\u062f\\u0642\\u064a\\u0642\\u0629 \\u0625\\u0644\\u0649 1500 \\u062f\\u0648\\u0631\\u0629 \\u0641\\u064a \\u0627\\u0644\\u062f\\u0642\\u064a\\u0642\\u0629-\\r\\n \\u0639\\u0632\\u0645 \\u0627\\u0644\\u062f\\u0648\\u0631\\u0627\\u0646 0.6 \\u0646\\u064a\\u0648\\u062a\\u0646 / \\u0633\\u0645 \\u0625\\u0644\\u0649 4.2 \\u0646\\u064a\\u0648\\u062a\\u0646 / \\u0645-\\r\\n\\u0645\\u062a\\u064a\\u0646 \\u0648\\u0635\\u0627\\u0645\\u062a-\\r\\n\\u064a\\u0645\\u0643\\u0646 \\u062a\\u0648\\u0635\\u064a\\u0644\\u0647 \\u0628\\u0627\\u0628\\u0643\\u0633 \\u0644\\u0648\\u0643\\u0627\\u062a\\u0648\\u0631-"}}, {"added": {"name": "product image", "object": "Endo Pace - product/Endo Pace/Endo_Pace_3.jpeg"}}, {"added": {"name": "product image", "object": "Endo Pace - product/Endo Pace/Endo_Pace_2.jpeg"}}, {"added": {"name": "product image", "object": "Endo Pace - product/Endo Pace/Endo_Pace_1.jpeg"}}, {"added": {"name": "product item", "object": "Endo Pace Endo Motor"}}]	14	43
1208	2023-05-22 09:18:24.218244+00	f20d3aff-3d7a-4a65-8b57-ad141a13b32b	Endo Gold	2	[]	14	43
1209	2023-05-22 09:52:33.023681+00	e2bfb134-5da4-452a-a70d-d55cccb82bd0	MotoPex	1	[{"added": {}}, {"added": {"name": "translation", "object": "-First brushless endomotor\\r\\n-High durability\\r\\n-Built in Apex locator\\r\\n-Silent motor\\r\\n-360 degrees rotatable contra-angle\\r\\n-Lithium battery of 2000 mAh: \\u0623\\u0648\\u0644 \\u0645\\u062d\\u0631\\u0643 \\u062f\\u0627\\u062e\\u0644\\u064a \\u0628\\u062f\\u0648\\u0646 \\u0641\\u0631\\u0634-\\r\\n\\u0645\\u062a\\u0627\\u0646\\u0629 \\u0639\\u0627\\u0644\\u064a\\u0629-\\r\\n\\u0645\\u0628\\u0646\\u064a \\u0641\\u064a \\u0623\\u0628\\u064a\\u0643\\u0633 \\u0645\\u062d\\u062f\\u062f-\\r\\n \\u0645\\u062d\\u0631\\u0643 \\u0635\\u0627\\u0645\\u062a-\\r\\n360 \\u062f\\u0631\\u062c\\u0629 \\u0644\\u0644\\u062a\\u062f\\u0648\\u064a\\u0631 \\u0632\\u0627\\u0648\\u064a\\u0629 \\u0645\\u0636\\u0627\\u062f\\u0629-\\r\\n \\u0628\\u0637\\u0627\\u0631\\u064a\\u0629 \\u0644\\u064a\\u062b\\u064a\\u0648\\u0645 2000 \\u0645\\u0644\\u0644\\u064a \\u0623\\u0645\\u0628\\u064a\\u0631-"}}, {"added": {"name": "product image", "object": "MotoPex - product/MotoPex/MotoPex_2.png"}}, {"added": {"name": "product image", "object": "MotoPex - product/MotoPex/MotoPex_4.png"}}, {"added": {"name": "product image", "object": "MotoPex - product/MotoPex/MotoPex_White_and_Pink_1.png"}}, {"added": {"name": "product item", "object": "MotoPex Endo Motor"}}]	14	43
1210	2023-05-22 12:48:06.859739+00	683de5a1-7d57-4438-b63f-aedf8e03d376	Ai-Motor	1	[{"added": {}}, {"added": {"name": "translation", "object": "-Brushless Endomotor\\r\\n-Built in apex locator\\r\\n-wireless charging: \\u0627\\u0644\\u0634\\u062d\\u0646 \\u0627\\u0644\\u0644\\u0627\\u0633\\u0644\\u0643\\u064a-\\r\\n\\u0645\\u062d\\u0631\\u0643 \\u0625\\u0646\\u062f\\u0648 \\u0628\\u062f\\u0648\\u0646 \\u0641\\u0631\\u0634-\\r\\n\\u0645\\u062f\\u0645\\u062c \\u0628\\u0627\\u0628\\u064a\\u0643\\u0633 \\u0644\\u0648\\u0643\\u0627\\u062a\\u0648\\u0631-"}}, {"added": {"name": "product image", "object": "Ai-Motor - product/Ai-Motor/pink__white_2.png"}}, {"added": {"name": "product image", "object": "Ai-Motor - product/Ai-Motor/white_3.png"}}, {"added": {"name": "product image", "object": "Ai-Motor - product/Ai-Motor/white.png"}}, {"added": {"name": "product item", "object": "Ai-Motor Endo Motor"}}]	14	43
1211	2023-05-22 13:06:43.496775+00	91b542e1-d2a7-404a-ae04-34316e9b4100	Ai-Motor-Yoshi	1	[{"added": {}}, {"added": {"name": "translation", "object": "-Safe ledge\\r\\n-Wireless charging\\r\\n-Customized Reciprocating ANGLE 20 to 400 degree\\r\\n-High performance\\r\\n-speed of 100 rpm to 2500 rpm. \\r\\n-Lithium battery of 2000 mAh\\r\\n-360 degrees rotatable contra-angle: \\u0627\\u0644\\u0634\\u062d\\u0646 \\u0627\\u0644\\u0644\\u0627\\u0633\\u0644\\u0643\\u064a-\\r\\n\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0632\\u0627\\u0648\\u064a\\u0629 \\u062a\\u0631\\u062f\\u062f\\u064a\\u0629 \\u0645\\u0646 20 \\u0625\\u0644\\u0649 400 \\u062f\\u0631\\u062c\\u0629-\\r\\n\\u0623\\u062f\\u0627\\u0621 \\u0639\\u0627\\u0644\\u064a-\\r\\n\\u0633\\u0631\\u0639\\u0629 100 \\u062f\\u0648\\u0631\\u0629 \\u0641\\u064a \\u0627\\u0644\\u062f\\u0642\\u064a\\u0642\\u0629 \\u0625\\u0644\\u0649 2500 \\u062f\\u0648\\u0631\\u0629 \\u0641\\u064a \\u0627\\u0644\\u062f\\u0642\\u064a\\u0642\\u0629-\\r\\n \\u0628\\u0637\\u0627\\u0631\\u064a\\u0629 \\u0644\\u064a\\u062b\\u064a\\u0648\\u0645 2000 \\u0645\\u0644\\u0644\\u064a \\u0623\\u0645\\u0628\\u064a\\u0631-\\r\\n360 \\u062f\\u0631\\u062c\\u0629 \\u0644\\u0644\\u062a\\u062f\\u0648\\u064a\\u0631 \\u0632\\u0627\\u0648\\u064a\\u0629 \\u0645\\u0636\\u0627\\u062f\\u0629-"}}, {"added": {"name": "product image", "object": "Ai-Motor-Yoshi - product/Ai-Motor-Yoshi/black_3.jpeg"}}, {"added": {"name": "product image", "object": "Ai-Motor-Yoshi - product/Ai-Motor-Yoshi/contra-angle.jpeg"}}, {"added": {"name": "product image", "object": "Ai-Motor-Yoshi - product/Ai-Motor-Yoshi/red2.jpeg"}}, {"added": {"name": "product item", "object": "Ai-Motor-Yoshi Endo Motor"}}]	14	43
1287	2023-05-25 10:51:29.713858+00	34	Hemostatics	1	[{"added": {}}]	18	43
1382	2023-06-07 10:32:44.303593+00	44	sealants	1	[{"added": {}}]	18	43
1212	2023-05-22 13:17:25.005237+00	1f3d19ef-f11c-4711-950d-75856208f9b6	Fi-G	1	[{"added": {}}, {"added": {"name": "translation", "object": "-Heating time: 15 seconds\\r\\n-0.35 pre-bend tip\\r\\n-4 working temperatures\\r\\n-High precision temperature control\\r\\n-360 rotatable injection needle\\r\\n-Panasonic battery\\r\\n-4 Hours of endurance: \\u0642\\u062a \\u0627\\u0644\\u062a\\u0633\\u062e\\u064a\\u0646: 15 \\u062b\\u0627\\u0646\\u064a\\u0629-\\r\\n0.35 \\u0637\\u0631\\u0641 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0627\\u0646\\u062d\\u0646\\u0627\\u0621-\\r\\n \\u062f\\u0631\\u062c\\u0627\\u062a \\u062d\\u0631\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0639\\u0645\\u06444-\\r\\n\\u062a\\u062d\\u0643\\u0645 \\u0639\\u0627\\u0644\\u064a \\u0627\\u0644\\u062f\\u0642\\u0629 \\u0641\\u064a \\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629-\\r\\n360 \\u0625\\u0628\\u0631\\u0629 \\u062d\\u0642\\u0646 \\u0642\\u0627\\u0628\\u0644\\u0629 \\u0644\\u0644\\u062f\\u0648\\u0631\\u0627\\u0646-\\r\\n\\u0628\\u0637\\u0627\\u0631\\u064a\\u0629 \\u0628\\u0627\\u0646\\u0627\\u0633\\u0648\\u0646\\u064a\\u0643-\\r\\n4 \\u0633\\u0627\\u0639\\u0627\\u062a \\u0645\\u0646 \\u0627\\u0644\\u062a\\u062d\\u0645\\u0644-"}}, {"added": {"name": "product image", "object": "Fi-G - product/Fi-G/Fi-G.jpeg"}}, {"added": {"name": "product image", "object": "Fi-G - product/Fi-G/Fi-G__Fi-P_3.jpeg"}}, {"added": {"name": "product item", "object": "Fi-G Obturation system"}}]	14	43
1213	2023-05-22 13:29:28.037928+00	6d73e7f0-b65f-4db3-8c5b-b24ca1a4291e	Fi-pen	1	[{"added": {}}, {"added": {"name": "translation", "object": "-0.35 Pre-bend tip\\r\\n-Heating time: 0.2 seconds\\r\\n-4 Working temperatures\\r\\n-High precision temperature control\\r\\n-360 Rotatable injection needle\\r\\n-4 hours of endurance  \\r\\n-Panasonic battery: 0.35 \\u0637\\u0631\\u0641 \\u0645\\u0627 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0627\\u0646\\u062d\\u0646\\u0627\\u0621-\\r\\n\\u0648\\u0642\\u062a \\u0627\\u0644\\u062a\\u0633\\u062e\\u064a\\u0646: 0.2 \\u062b\\u0627\\u0646\\u064a\\u0629-\\r\\n4 \\u062f\\u0631\\u062c\\u0627\\u062a \\u062d\\u0631\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0639\\u0645\\u0644-\\r\\n\\u062a\\u062d\\u0643\\u0645 \\u0639\\u0627\\u0644\\u064a \\u0627\\u0644\\u062f\\u0642\\u0629 \\u0641\\u064a \\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629-\\r\\n360 \\u0625\\u0628\\u0631\\u0629 \\u062d\\u0642\\u0646 \\u0642\\u0627\\u0628\\u0644\\u0629 \\u0644\\u0644\\u062f\\u0648\\u0631\\u0627\\u0646-\\r\\n4 \\u0633\\u0627\\u0639\\u0627\\u062a \\u0645\\u0646 \\u0627\\u0644\\u062a\\u062d\\u0645\\u0644-\\r\\n\\u0628\\u0637\\u0627\\u0631\\u064a\\u0629 \\u0628\\u0627\\u0646\\u0627\\u0633\\u0648\\u0646\\u064a\\u0643-"}}, {"added": {"name": "product image", "object": "Fi-pen - product/Fi-pen/Fi-G__Fi-P_2.jpeg"}}, {"added": {"name": "product image", "object": "Fi-pen - product/Fi-pen/Fi-G__Fi-P_3.jpeg"}}, {"added": {"name": "product image", "object": "Fi-pen - product/Fi-pen/Fi-G__Fi-P_3_vIh7szq.jpeg"}}, {"added": {"name": "product item", "object": "Fi-pen Obturation system"}}]	14	43
1214	2023-05-22 13:30:12.001361+00	1f3d19ef-f11c-4711-950d-75856208f9b6	Fi-Gun	2	[{"changed": {"fields": ["Title"]}}]	14	43
1215	2023-05-22 13:35:59.395093+00	24	Endo activator	1	[{"added": {}}]	18	43
1216	2023-05-22 13:48:15.874575+00	91b542e1-d2a7-404a-ae04-34316e9b4100	Ai-Motor-Yoshi	2	[{"deleted": {"name": "product item", "object": "Ai-Motor-Yoshi Endo Motor"}}]	14	31
1217	2023-05-22 13:49:42.708807+00	b2333832-738a-453c-9127-b81699bb7d81	Endo Pace	2	[{"deleted": {"name": "product item", "object": "Endo Pace Endo Motor"}}]	14	31
1218	2023-05-22 13:50:04.761072+00	1f3d19ef-f11c-4711-950d-75856208f9b6	Fi-Gun	2	[{"deleted": {"name": "product item", "object": "Fi-Gun Obturation system"}}]	14	31
1219	2023-05-22 13:52:26.958293+00	042d2ad5-c4db-4dda-9b20-c9edd306b227	Endo 1	1	[{"added": {}}, {"added": {"name": "translation", "object": "-Activation and Irrigation of the root canal.\\r\\n-t has 3 tips: E93, E96 and E98.: -\\u062a\\u0646\\u0634\\u064a\\u0637 \\u062a\\u0646\\u0638\\u064a\\u0641 \\u0627\\u0644\\u0642\\u0646\\u0648\\u0627\\u062a.\\r\\n-\\u0644\\u062f\\u064a\\u0647 3 \\u062a\\u064a\\u0628: E93 \\u0648 E96 \\u0648 E98."}}, {"added": {"name": "product image", "object": "Endo 1 - product/Endo 1/171127.png"}}, {"added": {"name": "product image", "object": "Endo 1 - product/Endo 1/190822.png"}}, {"added": {"name": "product image", "object": "Endo 1 - product/Endo 1/\\u8361\\u6d17\\u5668_ENDO_1_\\u5544\\u6728\\u9e1f\\u82f1\\u6587\\u5355\\u9875_190304.png"}}, {"added": {"name": "product item", "object": "Endo 1 Activator"}}]	14	43
1220	2023-05-22 13:53:01.579638+00	91b542e1-d2a7-404a-ae04-34316e9b4100	Ai-Motor-Yoshi	2	[{"changed": {"fields": ["Description"]}}]	14	43
1221	2023-05-22 13:54:08.124815+00	ebf165fd-f821-4212-83b2-d9497392c468	Apex Gold Plus III	2	[{"changed": {"fields": ["Title"]}}]	14	43
1222	2023-05-22 15:39:28.969308+00	25	Laser	1	[{"added": {}}]	18	43
1223	2023-05-22 15:44:30.645749+00	f6e5b415-7430-4be7-85d8-440efb9f63cd	LX16 Plus	1	[{"added": {}}, {"added": {"name": "product image", "object": "LX16 Plus - product/LX16 Plus/transparent_background_main_unit_2.png"}}, {"added": {"name": "product image", "object": "LX16 Plus - product/LX16 Plus/side_of_main_unit.jpeg"}}, {"added": {"name": "product image", "object": "LX16 Plus - product/LX16 Plus/mian_unit2.jpeg"}}, {"added": {"name": "product item", "object": "LX16 Plus Laser"}}]	14	43
1224	2023-05-22 15:52:58.813989+00	0156529b-593c-4576-89e2-182b0e917839	I-Sensor size 1	1	[{"added": {}}, {"added": {"name": "product image", "object": "I-Sensor size 1 - product/I-Sensor size 1/4.jpeg"}}, {"added": {"name": "product image", "object": "I-Sensor size 1 - product/I-Sensor size 1/2.jpeg"}}, {"added": {"name": "product image", "object": "I-Sensor size 1 - product/I-Sensor size 1/1.png"}}]	14	43
1225	2023-05-22 15:55:58.405065+00	e0335233-1dce-48e0-85a6-0bfe2dc25026	I-Sensor size 2	1	[{"added": {}}, {"added": {"name": "product image", "object": "I-Sensor size 2 - product/I-Sensor size 2/4.jpeg"}}, {"added": {"name": "product image", "object": "I-Sensor size 2 - product/I-Sensor size 2/2.jpeg"}}, {"added": {"name": "product image", "object": "I-Sensor size 2 - product/I-Sensor size 2/1.png"}}, {"added": {"name": "product item", "object": "I-Sensor size 2 radiology"}}]	14	43
1226	2023-05-22 16:20:28.566685+00	d8df3e11-b619-47ba-847b-34ae8b29c9f5	i-Scan	1	[{"added": {}}, {"added": {"name": "product image", "object": "i-Scan - product/i-Scan/i-Scan_5.png"}}, {"added": {"name": "product image", "object": "i-Scan - product/i-Scan/i-Scan_2.jpeg"}}, {"added": {"name": "product image", "object": "i-Scan - product/i-Scan/i-Scan_4.jpeg"}}, {"added": {"name": "product item", "object": "i-Scan radiology"}}]	14	43
1227	2023-05-22 16:29:10.15098+00	f14db6d8-06c0-4306-9920-23cb02d6ba4d	Free Scan	1	[{"added": {}}, {"added": {"name": "product image", "object": "Free Scan - product/Free Scan/Free_Scan_6.png"}}, {"added": {"name": "product image", "object": "Free Scan - product/Free Scan/Free_Scan_7.png"}}, {"added": {"name": "product image", "object": "Free Scan - product/Free Scan/Free_Scan_19.png"}}, {"added": {"name": "product item", "object": "Free Scan radiology"}}]	14	43
1228	2023-05-22 16:33:20.394111+00	16d48b04-9eaf-41f3-9744-c3d914c54647	Ai-Ray	1	[{"added": {}}, {"added": {"name": "product image", "object": "Ai-Ray - product/Ai-Ray/Ai_ray_13.png"}}, {"added": {"name": "product image", "object": "Ai-Ray - product/Ai-Ray/Ai_ray_1.jpeg"}}, {"added": {"name": "product image", "object": "Ai-Ray - product/Ai-Ray/Ai_ray_19.jpeg"}}, {"added": {"name": "product item", "object": "Ai-Ray radiology"}}]	14	43
1258	2023-05-24 08:52:55.467756+00	472ab4d1-3cb0-4918-8910-dd38d8e9a83d	I-Led Max	1	[{"added": {}}, {"added": {"name": "product image", "object": "I-Led Max - product/I-Led Max/i-Led_MAX_6.png"}}, {"added": {"name": "product image", "object": "I-Led Max - product/I-Led Max/i-Led_MAX_2.jpeg"}}, {"added": {"name": "product image", "object": "I-Led Max - product/I-Led Max/i-Led_MAX_1.jpeg"}}]	14	43
1229	2023-05-22 16:38:07.990112+00	7fa6d156-b18c-4504-8b81-ee856bc3ce85	King Kong	1	[{"added": {}}, {"added": {"name": "product image", "object": "King Kong - product/King Kong/King_Kong_contra-angle_2.png"}}, {"added": {"name": "product image", "object": "King Kong - product/King Kong/King_Kong_contra-angle_5.png"}}, {"added": {"name": "product image", "object": "King Kong - product/King Kong/King_Kong_contra-angle_6.png"}}, {"added": {"name": "product item", "object": "King Kong operative"}}]	14	43
1230	2023-05-22 16:39:32.488904+00	7fa6d156-b18c-4504-8b81-ee856bc3ce85	King Kong	2	[]	14	43
1231	2023-05-22 16:40:51.559951+00	8e712346-8c8b-4b20-bcb1-03ccfc0e00ea	King Kong	1	[{"added": {}}, {"added": {"name": "product image", "object": "King Kong - product/King Kong/King_Kong_contra-angle_6_rLmduHJ.png"}}, {"added": {"name": "product image", "object": "King Kong - product/King Kong/King_Kong_contra-angle_2_nxOSf7y.png"}}, {"added": {"name": "product item", "object": "King Kong operative"}}]	14	43
1232	2023-05-22 16:42:56.828476+00	9d8c389c-2813-4dd5-9116-1ea2697fbf34	Anteaus	1	[{"added": {}}, {"added": {"name": "product image", "object": "Anteaus - product/Anteaus/Antaeus_contra-angle_5.png"}}, {"added": {"name": "product image", "object": "Anteaus - product/Anteaus/Antaeus_contra-angle_3.png"}}, {"added": {"name": "product image", "object": "Anteaus - product/Anteaus/Antaeus_contra-angle_4.png"}}, {"added": {"name": "product item", "object": "Anteaus operative"}}]	14	43
1233	2023-05-23 08:12:13.267896+00	6d73e7f0-b65f-4db3-8c5b-b24ca1a4291e	Fi-pen	2	[{"deleted": {"name": "product item", "object": "Fi-pen Obturation system"}}]	14	31
1234	2023-05-23 08:12:38.732703+00	042d2ad5-c4db-4dda-9b20-c9edd306b227	Endo 1	2	[{"deleted": {"name": "product item", "object": "Endo 1 Activator"}}]	14	31
1235	2023-05-23 08:15:16.672251+00	0156529b-593c-4576-89e2-182b0e917839	i-Sensor size 1	2	[{"changed": {"fields": ["Title"]}}]	14	31
1236	2023-05-23 08:15:48.94943+00	e0335233-1dce-48e0-85a6-0bfe2dc25026	i-Sensor size 2	2	[{"changed": {"fields": ["Title"]}}, {"deleted": {"name": "product item", "object": "i-Sensor size 2 radiology"}}]	14	31
1237	2023-05-23 08:18:59.730944+00	7fa6d156-b18c-4504-8b81-ee856bc3ce85	King Kong (Japanese Bearings)	2	[{"changed": {"fields": ["Title"]}}, {"deleted": {"name": "product item", "object": "King Kong (Japanese Bearings) operative"}}]	14	31
1238	2023-05-23 08:20:23.393862+00	8e712346-8c8b-4b20-bcb1-03ccfc0e00ea	King Kong	2	[{"deleted": {"name": "product item", "object": "King Kong operative"}}]	14	31
1239	2023-05-23 08:20:56.800349+00	8e712346-8c8b-4b20-bcb1-03ccfc0e00ea	King Kong (German Bearings)	2	[{"changed": {"fields": ["Title"]}}]	14	31
1240	2023-05-23 08:22:05.173293+00	26	Portable X-ray	1	[{"added": {}}]	18	31
1241	2023-05-23 08:22:56.681555+00	16d48b04-9eaf-41f3-9744-c3d914c54647	Ai-Ray	2	[{"changed": {"fields": ["Sub branch"]}}]	14	31
1242	2023-05-23 08:24:27.170626+00	27	Imaging Plate Scanner	1	[{"added": {}}]	18	31
1243	2023-05-23 08:32:10.035029+00	f14db6d8-06c0-4306-9920-23cb02d6ba4d	Free Scan	2	[{"changed": {"fields": ["Description", "Point price"]}}, {"deleted": {"name": "product item", "object": "Free Scan radiology"}}]	14	31
1244	2023-05-23 08:36:20.310815+00	16d48b04-9eaf-41f3-9744-c3d914c54647	Ai-Ray	2	[{"deleted": {"name": "product item", "object": "Ai-Ray radiology"}}]	14	31
1245	2023-05-23 08:43:57.983559+00	f14db6d8-06c0-4306-9920-23cb02d6ba4d	Free Scan	2	[{"added": {"name": "product image", "object": "Free Scan - product/Free Scan/Ai_ray_26.jpeg"}}, {"changed": {"name": "product image", "object": "Free Scan - product/Free Scan/Ai_ray_15.png", "fields": ["Image", "Is main"]}}, {"changed": {"name": "product image", "object": "Free Scan - product/Free Scan/Ai_ray_24.png", "fields": ["Image", "Is main"]}}, {"deleted": {"name": "product image", "object": "Free Scan - Ai ray 26.jpg"}}, {"added": {"name": "product item", "object": "Free Scan radiology"}}]	14	43
1246	2023-05-23 08:53:02.838761+00	1f3d19ef-f11c-4711-950d-75856208f9b6	Fi-Gun	3		14	31
1247	2023-05-23 08:58:49.235437+00	f14db6d8-06c0-4306-9920-23cb02d6ba4d	Free Scan	2	[{"changed": {"name": "product image", "object": "Free Scan - product/Free Scan/Free_Scan_7_O3uwsOf.png", "fields": ["Image", "Is main"]}}, {"changed": {"name": "product image", "object": "Free Scan - product/Free Scan/Free_Scan_6_JuDG0uG.png", "fields": ["Image", "Is main"]}}, {"changed": {"name": "product image", "object": "Free Scan - product/Free Scan/Free_Scan_19_DXSyTkL.png", "fields": ["Image"]}}]	14	43
1248	2023-05-23 09:00:13.489852+00	16d48b04-9eaf-41f3-9744-c3d914c54647	Ai-Ray	2	[{"changed": {"name": "product image", "object": "Ai-Ray - product/Ai-Ray/Ai_ray_24.png", "fields": ["Image"]}}, {"changed": {"name": "product image", "object": "Ai-Ray - product/Ai-Ray/Ai_ray_15.png", "fields": ["Image"]}}, {"changed": {"name": "product image", "object": "Ai-Ray - product/Ai-Ray/Ai_ray_25.jpeg", "fields": ["Image"]}}]	14	43
1249	2023-05-23 09:07:37.609359+00	6d73e7f0-b65f-4db3-8c5b-b24ca1a4291e	Fi-pen	3		14	43
1250	2023-05-23 09:09:44.907249+00	0156529b-593c-4576-89e2-182b0e917839	i-Sensor size 1	2	[{"changed": {"name": "product image", "object": "i-Sensor size 1 - product/I-Sensor size 1/4.jpeg", "fields": ["Is main"]}}, {"changed": {"name": "product image", "object": "i-Sensor size 1 - product/I-Sensor size 1/1.png", "fields": ["Is main"]}}]	14	43
1251	2023-05-23 09:10:16.488047+00	e0335233-1dce-48e0-85a6-0bfe2dc25026	i-Sensor size 2	2	[{"changed": {"name": "product image", "object": "i-Sensor size 2 - product/I-Sensor size 2/4.jpeg", "fields": ["Is main"]}}, {"changed": {"name": "product image", "object": "i-Sensor size 2 - product/I-Sensor size 2/1.png", "fields": ["Is main"]}}]	14	43
1252	2023-05-23 09:12:12.842772+00	fb94bb02-a98a-4726-838a-8b3be1ef585d	E-Com +	2	[{"changed": {"name": "product image", "object": "E-Com + - product/E-Com +/4.jpeg", "fields": ["Is main"]}}, {"changed": {"name": "product image", "object": "E-Com + - product/E-Com +/12.png", "fields": ["Is main"]}}]	14	43
1253	2023-05-23 12:29:18.575722+00	40f43a51-d312-43f0-acb9-731ca9ccde4b	Fi-G & Fi-P obturation system	1	[{"added": {}}, {"added": {"name": "product image", "object": "Fi-G & Fi-P obturation system - product/Fi-G & Fi-P obturation system/Fi-G__Fi-P.jpeg"}}, {"added": {"name": "product image", "object": "Fi-G & Fi-P obturation system - product/Fi-G & Fi-P obturation system/Fi-G__Fi-P_1.jpeg"}}, {"added": {"name": "product image", "object": "Fi-G & Fi-P obturation system - product/Fi-G & Fi-P obturation system/Fi-G.jpeg"}}]	14	31
1254	2023-05-24 08:25:32.609582+00	18	Light cure	1	[{"added": {}}]	12	43
1255	2023-05-24 08:32:56.145195+00	46175377-94ab-45b1-9d1e-dcd33514bc7f	RTA	1	[{"added": {}}, {"added": {"name": "product image", "object": "RTA - product/RTA/Minis_RTA.png"}}]	14	43
1256	2023-05-24 08:38:12.627247+00	f756e422-c8a6-4b5e-ac54-74f822af8f36	Led-D	1	[{"added": {}}, {"added": {"name": "product image", "object": "Led-D - product/Led-D/9.png"}}, {"added": {"name": "product image", "object": "Led-D - product/Led-D/8.png"}}, {"added": {"name": "product image", "object": "Led-D - product/Led-D/5.png"}}]	14	43
1257	2023-05-24 08:45:20.694985+00	8d09ee77-577e-445c-bdaf-205034854b0c	I-Led	1	[{"added": {}}, {"added": {"name": "product image", "object": "I-Led - product/I-Led/10.png"}}, {"added": {"name": "product image", "object": "I-Led - product/I-Led/9.png"}}, {"added": {"name": "product image", "object": "I-Led - product/I-Led/12.png"}}]	14	43
1286	2023-05-25 10:50:45.044038+00	21	Tissue management	1	[{"added": {}}]	12	43
1259	2023-05-24 09:00:35.869905+00	2ecbc5d4-8662-451a-9b25-f876f545b3fe	B-Cure	1	[{"added": {}}, {"added": {"name": "product image", "object": "B-Cure - product/B-Cure/8.png"}}, {"added": {"name": "product image", "object": "B-Cure - product/B-Cure/7.png"}}, {"added": {"name": "product image", "object": "B-Cure - product/B-Cure/1.png"}}]	14	43
1260	2023-05-24 09:08:28.541234+00	11c0f010-f06f-48b4-b362-b76df68bd61b	X-Cure	1	[{"added": {}}, {"added": {"name": "product image", "object": "X-Cure - product/X-Cure/X_cure_5.png"}}, {"added": {"name": "product image", "object": "X-Cure - product/X-Cure/X_cure_6.png"}}, {"added": {"name": "product image", "object": "X-Cure - product/X-Cure/X_cure_7.png"}}]	14	43
1261	2023-05-24 09:12:25.062851+00	1f87cfd8-94a2-459b-8b0c-7f2e89853117	Led-F	1	[{"added": {}}, {"added": {"name": "product image", "object": "Led-F - product/Led-F/1.png"}}, {"added": {"name": "product image", "object": "Led-F - product/Led-F/3.png"}}, {"added": {"name": "product image", "object": "Led-F - product/Led-F/7.png"}}]	14	43
1262	2023-05-24 11:23:31.837123+00	75524dad-fd4a-48f5-b248-c7e50c722679	E-Led	1	[{"added": {}}, {"added": {"name": "product image", "object": "E-Led - product/E-Led/E-Led_6.png"}}, {"added": {"name": "product image", "object": "E-Led - product/E-Led/E-Led_2.jpeg"}}]	14	43
1263	2023-05-24 11:29:17.709404+00	b41dfafc-d47a-40a5-998f-ebd9024b64c7	U6	1	[{"added": {}}, {"added": {"name": "product image", "object": "U6 - product/U6/1.png"}}, {"added": {"name": "product image", "object": "U6 - product/U6/2.png"}}, {"added": {"name": "product image", "object": "U6 - product/U6/4.png"}}]	14	43
1264	2023-05-24 11:30:10.199029+00	75524dad-fd4a-48f5-b248-c7e50c722679	E-Led	2	[{"changed": {"fields": ["Description"]}}]	14	43
1265	2023-05-24 11:40:26.699353+00	72b805d2-12f5-4606-887d-c97175e7abba	U600	1	[{"added": {}}, {"added": {"name": "product image", "object": "U600 - product/U600/U600_1.png"}}, {"added": {"name": "product image", "object": "U600 - product/U600/U600_6.png"}}, {"added": {"name": "product image", "object": "U600 - product/U600/U600_5.png"}}]	14	43
1266	2023-05-24 11:47:19.909594+00	02ffb0de-2d99-46a5-86ab-26493f8528bc	PT-A	1	[{"added": {}}, {"added": {"name": "product image", "object": "PT-A - product/PT-A/PT-A_3.png"}}, {"added": {"name": "product image", "object": "PT-A - product/PT-A/PT-A_1.jpeg"}}, {"added": {"name": "product image", "object": "PT-A - product/PT-A/PT-A_4.png"}}]	14	43
1267	2023-05-24 14:42:17.477867+00	c0ff71e4-ce4e-4e36-8f5f-a43606cbbd65	Gemini Laser	1	[{"added": {}}, {"added": {"name": "product image", "object": "Gemini Laser - product/Gemini Laser/Gemini_with_PBM_Facing_Right_3D_1.png"}}, {"added": {"name": "product image", "object": "Gemini Laser - product/Gemini Laser/Gemini_Laser_Kit.jpeg"}}, {"added": {"name": "product image", "object": "Gemini Laser - product/Gemini Laser/Gemini_Diode_laser_with_PBM_adaptor_1.jpeg"}}]	14	43
1268	2023-05-25 09:26:22.041308+00	28	ceramic finishing	1	[{"added": {}}]	18	43
1269	2023-05-25 09:29:13.879938+00	71ee3003-0bb0-4daa-b25b-a14480c6d316	Diamond Polish Mint	1	[{"added": {}}, {"added": {"name": "product image", "object": "Diamond Polish Mint - product/Diamond Polish Mint/Diamond_Polish_0.5_3D.png"}}, {"added": {"name": "product image", "object": "Diamond Polish Mint - product/Diamond Polish Mint/Ultradent_Diamond_Polish_Mint_.5_Single_Pack.png"}}, {"added": {"name": "product image", "object": "Diamond Polish Mint - product/Diamond Polish Mint/Ultradent_Diamond_Polish_Mint_.5.png"}}]	14	43
1270	2023-05-25 09:45:42.413388+00	19	preparing	1	[{"added": {}}]	12	43
1271	2023-05-25 09:46:09.522827+00	29	Matrix System	1	[{"added": {}}]	18	43
1272	2023-05-25 09:49:36.116145+00	96b49989-4417-41ef-b92c-56c3fb4ff5c8	Omni Matrix	1	[{"added": {}}, {"added": {"name": "product image", "object": "Omni Matrix - product/Omni Matrix/Omni-Matrix_Redesigned_Green_Winged_3D.png"}}, {"added": {"name": "product image", "object": "Omni Matrix - product/Omni Matrix/Omni-Matrix_Redesigned_Orange_Winged_3D.png"}}, {"added": {"name": "product image", "object": "Omni Matrix - product/Omni Matrix/Omni-Matrix_Redesigned_Winged_3D.png"}}]	14	43
1273	2023-05-25 09:52:16.361705+00	b0b8a4f7-2d77-4818-82d5-f62641287601	Omni Matrix kit/48	1	[{"added": {}}, {"added": {"name": "product image", "object": "Omni Matrix kit/48 - product/Omni Matrix kit/48/Omni-Matrix_Redesigned_Winged_3D.png"}}, {"added": {"name": "product image", "object": "Omni Matrix kit/48 - product/Omni Matrix kit/48/Omni-Matrix_Redesigned_Orange_Winged_3D.png"}}, {"added": {"name": "product image", "object": "Omni Matrix kit/48 - product/Omni Matrix kit/48/Omni-Matrix_Redesigned_Green_Winged_3D.png"}}]	14	43
1274	2023-05-25 09:54:39.770636+00	20	whitening	1	[{"added": {}}]	12	43
1275	2023-05-25 09:55:34.665362+00	30	whitening Material	1	[{"added": {}}]	18	43
1276	2023-05-25 09:56:12.409312+00	31	In office	1	[{"added": {}}]	18	43
1277	2023-05-25 09:58:12.993678+00	dd9bb348-8a3a-4537-93ad-d8dadfadea9d	Opalescence Endo	1	[{"added": {}}, {"added": {"name": "product image", "object": "Opalescence Endo - product/Opalescence Endo/Opalescence_Endo_Syringe_3D.png"}}, {"added": {"name": "product image", "object": "Opalescence Endo - product/Opalescence Endo/Opalescence_Endo_Syringe.png"}}, {"added": {"name": "product image", "object": "Opalescence Endo - product/Opalescence Endo/Opalescence_Endo.png"}}]	14	43
1278	2023-05-25 10:03:53.832037+00	ee138c5a-d287-44be-9b20-ba8bdc213dcd	Opalescence Boost Syr with tips	1	[{"added": {}}, {"added": {"name": "product image", "object": "Opalescence Boost Syr with tips - product/Opalescence Boost Syr with tips/Boost_Syringe_All_Parts_Front_3D.png"}}, {"added": {"name": "product image", "object": "Opalescence Boost Syr with tips - product/Opalescence Boost Syr with tips/Boost_Syringe_Side_View_3D.png"}}, {"added": {"name": "product image", "object": "Opalescence Boost Syr with tips - product/Opalescence Boost Syr with tips/Opalescence_Boost_Patient_Kit_Single_Syringe__Co_6IEZYsW.png"}}]	14	43
1279	2023-05-25 10:05:43.42142+00	dd9bb348-8a3a-4537-93ad-d8dadfadea9d	Opalescence Endo	2	[{"changed": {"fields": ["Sub branch"]}}]	14	43
1280	2023-05-25 10:24:20.666546+00	32	Caries indicators	1	[{"added": {}}]	18	43
1281	2023-05-25 10:26:17.297746+00	7a1bd1f9-e7f1-45c3-b98e-7f805379083d	Sable seek	1	[{"added": {}}, {"added": {"name": "product image", "object": "Sable seek - product/Sable seek/Sable_Seek_syringe_no_tip.jpeg"}}]	14	43
1282	2023-05-25 10:30:39.81483+00	79c34e7b-35e7-48ea-bf99-e50a83395a57	Seek caries indicator	1	[{"added": {}}, {"added": {"name": "product image", "object": "Seek caries indicator - product/Seek caries indicator/Seek_syringe_no_tip.png"}}]	14	43
1283	2023-05-25 10:33:58.033972+00	eba21433-2642-4f76-98c3-9288b7f8bd1a	UVeneer	1	[{"added": {}}, {"added": {"name": "product image", "object": "UVeneer - product/UVeneer/Uveneer_Single_Template_Large.jpeg"}}, {"added": {"name": "product image", "object": "UVeneer - product/UVeneer/Uveneer_Green_Tray.png"}}, {"added": {"name": "product image", "object": "UVeneer - product/UVeneer/Uveneer_Inside_Angle.jpeg"}}]	14	43
1284	2023-05-25 10:46:07.939207+00	33	Irrigants, Lubricants and Medicaments	1	[{"added": {}}]	18	43
1285	2023-05-25 10:48:13.282831+00	dfe5c687-7434-4aad-8b7d-7d292eb5d245	UltraCal XS	1	[{"added": {}}, {"added": {"name": "product image", "object": "UltraCal XS - product/UltraCal XS/UltraCal_XS_Syringe_with_Blue_NaviTip.png"}}, {"added": {"name": "product image", "object": "UltraCal XS - product/UltraCal XS/5117-1_UltraCal_XS_Calcium_Hydroxide_Paste_Single_Syringe_Kit.jpeg"}}]	14	43
1288	2023-05-25 10:53:33.81955+00	f118bce2-7f85-46cf-8f77-a24568b2069b	Viscostat Clear	1	[{"added": {}}, {"added": {"name": "product image", "object": "Viscostat Clear - product/Viscostat Clear/ViscoStat_Clear_Syringe_capped_3D_with_reflection_angled_pose.png"}}, {"added": {"name": "product image", "object": "Viscostat Clear - product/Viscostat Clear/6408-1_ViscoStat_Clear_Hemostatic_Gel_Single_Syringe_Kit_TM_highdef.jpeg"}}]	14	43
1289	2023-05-25 11:08:10.607937+00	58ca7c3c-7822-47ca-b73e-62fea5e6e07e	Viscostat Econo	1	[{"added": {}}, {"added": {"name": "product image", "object": "Viscostat Econo - product/Viscostat Econo/ViscoStat_Syringe_with_Tip.png"}}, {"added": {"name": "product image", "object": "Viscostat Econo - product/Viscostat Econo/ViscoStat_Indispense_Syringe_Open_1.jpeg"}}, {"added": {"name": "product image", "object": "Viscostat Econo - product/Viscostat Econo/ViscoStat_Single_Syringe_Kit.jpeg"}}]	14	43
1290	2023-05-25 12:22:24.300555+00	3a48b362-1765-408a-a61d-4ca37b0b840f	Permashade Translucent	1	[{"added": {}}, {"added": {"name": "product image", "object": "Permashade Translucent - product/Permashade Translucent/PermaShade_LC.png"}}]	14	43
1291	2023-05-25 12:23:43.021395+00	85d40206-104a-40b3-8e79-c42cb2e0ea29	Permashader OW	1	[{"added": {}}, {"added": {"name": "product image", "object": "Permashader OW - product/Permashader OW/PermaShade_LC_Opaque_White.png"}}]	14	43
1292	2023-05-25 12:37:40.234281+00	6f832621-49d6-4356-9dc7-20a19be6d746	Ultrapak E	1	[{"added": {}}, {"added": {"name": "product image", "object": "Ultrapak E - product/Ultrapak E/Ultrapak_E_Cord_Size_00_1.jpeg"}}, {"added": {"name": "product image", "object": "Ultrapak E - product/Ultrapak E/Ultrapak_E_Cord_Size_00.jpeg"}}]	14	43
1293	2023-05-25 12:39:07.082418+00	24362569-ede2-45c9-81c5-7507c246e1f7	Ultrapak	1	[{"added": {}}, {"added": {"name": "product image", "object": "Ultrapak - product/Ultrapak/Ultrapak_E_Cord_Size_0_1.jpeg"}}, {"added": {"name": "product image", "object": "Ultrapak - product/Ultrapak/Ultrapak_E_Cord_Size_0.jpeg"}}]	14	43
1294	2023-05-25 12:40:08.287865+00	72e7bf63-0d1e-451b-82c6-1cdb0f43aa8d	Ultrapack	1	[{"added": {}}, {"added": {"name": "product image", "object": "Ultrapack - product/Ultrapack/Ultrapak_E_Cord_Size_1_1.jpeg"}}, {"added": {"name": "product image", "object": "Ultrapack - product/Ultrapack/Ultrapak_E_Cord_Size_1.jpeg"}}]	14	43
1295	2023-05-25 12:41:27.205342+00	b6825977-243d-40c1-921d-43cb1e663617	Ultrapak E	1	[{"added": {}}, {"added": {"name": "product image", "object": "Ultrapak E - product/Ultrapak E/Ultrapak_E_Cord_Size_2_1.jpeg"}}, {"added": {"name": "product image", "object": "Ultrapak E - product/Ultrapak E/Ultrapak_E_Cord_Size_2.jpeg"}}]	14	43
1296	2023-05-25 12:41:55.479814+00	24362569-ede2-45c9-81c5-7507c246e1f7	Ultrapak E	2	[{"changed": {"fields": ["Title"]}}]	14	43
1297	2023-05-25 12:42:02.755458+00	72e7bf63-0d1e-451b-82c6-1cdb0f43aa8d	Ultrapack E	2	[{"changed": {"fields": ["Title"]}}]	14	43
1298	2023-05-25 12:45:14.07268+00	7f52722f-da06-4df7-82da-6395155b46a7	Ultrapack	1	[{"added": {}}, {"added": {"name": "product image", "object": "Ultrapack - product/Ultrapack/Ultrapak_Cord_Size_1.jpeg"}}]	14	43
1299	2023-05-25 12:51:41.429454+00	6466a406-d72d-40c5-a9a8-7aea01405951	Ultrapack	1	[{"added": {}}, {"added": {"name": "product image", "object": "Ultrapack - product/Ultrapack/Ultrapak_0.png"}}]	14	43
1300	2023-05-25 12:53:51.880711+00	1412b5c3-1b78-4ab3-9148-d8420143dc67	Ultrapack	1	[{"added": {}}, {"added": {"name": "product image", "object": "Ultrapack - product/Ultrapack/Ultrapak_2_1.png"}}]	14	43
1301	2023-05-25 12:56:38.597412+00	a63abf72-7bbf-426b-a47b-86d3d1d73e5d	Ultrapack	1	[{"added": {}}, {"added": {"name": "product image", "object": "Ultrapack - product/Ultrapack/Ultrapak_3_1.png"}}]	14	43
1302	2023-05-25 12:58:23.798719+00	a1566d91-f0c0-440a-a36f-fe61c3430154	Ultrapack	1	[{"added": {}}, {"added": {"name": "product image", "object": "Ultrapack - product/Ultrapack/Ultrapak_Cord_Size_00.jpeg"}}]	14	43
1303	2023-05-25 12:59:47.348946+00	957a8020-92a2-4fc5-9f55-44ebcf1e719b	Ultrapack	1	[{"added": {}}, {"added": {"name": "product image", "object": "Ultrapack - product/Ultrapack/Ultrapak_Cord_Size_000.jpeg"}}]	14	43
1304	2023-05-25 13:03:29.605441+00	1412b5c3-1b78-4ab3-9148-d8420143dc67	Ultrapack #2	2	[{"changed": {"fields": ["Title"]}}]	14	43
1305	2023-05-25 13:03:38.617019+00	24362569-ede2-45c9-81c5-7507c246e1f7	Ultrapak E #0	2	[{"changed": {"fields": ["Title"]}}]	14	43
1306	2023-05-25 13:03:45.715024+00	6466a406-d72d-40c5-a9a8-7aea01405951	Ultrapack #0	2	[{"changed": {"fields": ["Title"]}}]	14	43
1307	2023-05-25 13:03:53.1584+00	6f832621-49d6-4356-9dc7-20a19be6d746	Ultrapak E #00	2	[{"changed": {"fields": ["Title"]}}]	14	43
1308	2023-05-25 13:04:00.533913+00	72e7bf63-0d1e-451b-82c6-1cdb0f43aa8d	Ultrapack E #1	2	[{"changed": {"fields": ["Title"]}}]	14	43
1309	2023-05-25 13:04:07.243754+00	7f52722f-da06-4df7-82da-6395155b46a7	Ultrapack #1	2	[{"changed": {"fields": ["Title"]}}]	14	43
1310	2023-05-25 13:04:15.45857+00	957a8020-92a2-4fc5-9f55-44ebcf1e719b	Ultrapack #000	2	[{"changed": {"fields": ["Title"]}}]	14	43
1311	2023-05-25 13:04:24.172489+00	a1566d91-f0c0-440a-a36f-fe61c3430154	Ultrapack #00	2	[{"changed": {"fields": ["Title"]}}]	14	43
1312	2023-05-25 13:04:33.556648+00	a63abf72-7bbf-426b-a47b-86d3d1d73e5d	Ultrapack #3	2	[{"changed": {"fields": ["Title"]}}]	14	43
1313	2023-05-25 13:04:40.280294+00	b6825977-243d-40c1-921d-43cb1e663617	Ultrapak E #2	2	[{"changed": {"fields": ["Title"]}}]	14	43
1314	2023-05-27 09:23:07.76892+00	1412b5c3-1b78-4ab3-9148-d8420143dc67	Ultrapack #2	3		14	43
1315	2023-05-27 09:24:04.197039+00	24362569-ede2-45c9-81c5-7507c246e1f7	Ultrapak E #0	3		14	43
1316	2023-05-27 09:24:09.616033+00	6466a406-d72d-40c5-a9a8-7aea01405951	Ultrapack #0	3		14	43
1317	2023-05-27 09:24:14.841074+00	6f832621-49d6-4356-9dc7-20a19be6d746	Ultrapak E #00	3		14	43
1318	2023-05-27 09:24:21.882232+00	72e7bf63-0d1e-451b-82c6-1cdb0f43aa8d	Ultrapack E #1	3		14	43
1319	2023-05-27 09:24:26.645148+00	a1566d91-f0c0-440a-a36f-fe61c3430154	Ultrapack #00	3		14	43
1320	2023-05-27 09:24:31.58031+00	a63abf72-7bbf-426b-a47b-86d3d1d73e5d	Ultrapack #3	3		14	43
1321	2023-05-27 09:24:35.783592+00	b6825977-243d-40c1-921d-43cb1e663617	Ultrapak E #2	3		14	43
1322	2023-05-28 10:01:53.853235+00	07cd3f6a-514e-4d7e-80e5-3c2bcdbbe88b	Ultrapack E	1	[{"added": {}}, {"added": {"name": "product image", "object": "Ultrapack E - product/Ultrapack E/Ultrapak_E_Cord_Size_1_1.jpeg"}}, {"added": {"name": "product image", "object": "Ultrapack E - product/Ultrapack E/Ultrapak_E_Cord_Size_2_1.jpeg"}}, {"added": {"name": "product image", "object": "Ultrapack E - product/Ultrapack E/Ultrapak_Epinephrine_Family.png"}}, {"added": {"name": "product item", "object": "Ultrapack E #00"}}, {"added": {"name": "product item", "object": "Ultrapack E #0"}}, {"added": {"name": "product item", "object": "Ultrapack E #1"}}, {"added": {"name": "product item", "object": "Ultrapack E #2"}}]	14	43
1346	2023-06-04 10:44:31.534458+00	c7db66a0-5928-41fb-9ee4-05109395f38d	Q3	2	[{"changed": {"fields": ["Description"]}}]	14	43
1348	2023-06-04 10:50:22.940241+00	c33c46ec-7ddc-446d-863b-040a2569befc	Sof-Tray classic sheets 1 ml	1	[{"added": {}}, {"added": {"name": "product image", "object": "Sof-Tray classic sheets 1 ml - product/Sof-Tray classic sheets 1 ml/Sof-Tray_Classic_Sheets_5.png"}}]	14	43
2762	2024-05-14 11:48:26.79565+00	f7651615-6ff3-412c-b3c4-9659e17fcff9	B cure	2	[]	14	43
1323	2023-05-28 10:28:30.460518+00	7ed426e9-eec2-4034-8bc5-c81bfe12bf48	Ultrapack	1	[{"added": {}}, {"added": {"name": "product image", "object": "Ultrapack - product/Ultrapack/Ultrapak_3_1_jGcRGVo.png"}}, {"added": {"name": "product image", "object": "Ultrapack - product/Ultrapack/Ultrapak_2_1_2UM0eWg.png"}}, {"added": {"name": "product image", "object": "Ultrapack - product/Ultrapack/Ultrapak_Epinephrine_Family_1_1.png"}}, {"added": {"name": "product item", "object": "Ultrapack #000"}}, {"added": {"name": "product item", "object": "Ultrapack #00"}}, {"added": {"name": "product item", "object": "Ultrapack #0"}}, {"added": {"name": "product item", "object": "Ultrapack #1"}}, {"added": {"name": "product item", "object": "Ultrapack #2"}}, {"added": {"name": "product item", "object": "Ultrapack #3"}}]	14	43
1324	2023-05-28 11:07:13.137483+00	99d70557-4de3-4af0-8f05-706050bb2637	A-Led	1	[{"added": {}}, {"added": {"name": "product image", "object": "A-Led - product/A-Led/UDS-A_1.jpeg"}}, {"added": {"name": "product image", "object": "A-Led - product/A-Led/UDS-A_2.jpeg"}}, {"added": {"name": "product image", "object": "A-Led - product/A-Led/UDS-A_4.jpeg"}}]	14	43
1325	2023-05-28 11:11:38.780175+00	50a58335-0faa-4b1b-b69a-d9474a049041	P-led	1	[{"added": {}}, {"added": {"name": "product image", "object": "P-led - product/P-led/UDS-P_3.png"}}, {"added": {"name": "product image", "object": "P-led - product/P-led/UDS-P_5.jpeg"}}, {"added": {"name": "product image", "object": "P-led - product/P-led/UDS-P_1.jpeg"}}]	14	43
1326	2023-05-28 11:36:00.244466+00	ff132071-d6fd-461a-86ab-20efbc9e7e7e	Led Handpiece	1	[{"added": {}}, {"added": {"name": "product image", "object": "Led Handpiece - product/Led Handpiece/HW-5L_1.jpeg"}}, {"added": {"name": "product image", "object": "Led Handpiece - product/Led Handpiece/HW-5L_2.jpeg"}}, {"added": {"name": "product image", "object": "Led Handpiece - product/Led Handpiece/HW-5L_4.jpeg"}}]	14	43
1327	2023-05-28 11:37:21.946085+00	bbb315fa-ceae-49c2-bb7c-65a4b0520566	U6/U600 Handpiece	1	[{"added": {}}, {"added": {"name": "product image", "object": "U6/U600 Handpiece - product/U6/U600 Handpiece/HW-6L_1.png"}}]	14	43
1328	2023-05-28 13:02:05.345698+00	35	retraction cord packer	1	[{"added": {}}]	18	43
1329	2023-05-28 13:08:21.426255+00	12a5c096-dc52-4ecd-8620-159f8cb4aa5c	Fischer's Ultrapak Packers (Small)	1	[{"added": {}}, {"added": {"name": "product image", "object": "Fischer's Ultrapak Packers (Small) - product/Fischer's Ultrapak Packers (Small)/Fischers_Ultrapak_Packer_TissueManagment_1.png"}}, {"added": {"name": "product image", "object": "Fischer's Ultrapak Packers (Small) - product/Fischer's Ultrapak Packers (Small)/Fischers_Ultrapak_Packer_TissueManagment.png"}}, {"added": {"name": "product image", "object": "Fischer's Ultrapak Packers (Small) - product/Fischer's Ultrapak Packers (Small)/Fischers_Ultrapak_Packers_Serrated_Regular_45.jpeg"}}, {"added": {"name": "product item", "object": "Fischer's Ultrapak Packers (Small) 45\\u00b0"}}, {"added": {"name": "product item", "object": "Fischer's Ultrapak Packers (Small) 90\\u00b0"}}]	14	43
1330	2023-05-28 13:10:28.715738+00	6627b142-84c1-44be-9e29-e75847261117	Fischer's Ultrapak Packers (Regular)	1	[{"added": {}}, {"added": {"name": "product image", "object": "Fischer's Ultrapak Packers (Regular) - product/Fischer's Ultrapak Packers (Regular)/Fischers_Ultrapak_Packer_TissueManagment.png"}}, {"added": {"name": "product image", "object": "Fischer's Ultrapak Packers (Regular) - product/Fischer's Ultrapak Packers (Regular)/Fischers_Ultrapak_Packer_TissueManagment_1.png"}}, {"added": {"name": "product image", "object": "Fischer's Ultrapak Packers (Regular) - product/Fischer's Ultrapak Packers (Regular)/Fischers_Ultrapak_Packers_Serrated_Regular_45.jpeg"}}, {"added": {"name": "product item", "object": "Fischer's Ultrapak Packers (Regular) 45\\u00b0"}}, {"added": {"name": "product item", "object": "Fischer's Ultrapak Packers (Regular) 90\\u00b0"}}]	14	43
1331	2023-05-29 09:03:16.106355+00	36	burs	1	[{"added": {}}]	18	43
1332	2023-05-29 09:06:22.877117+00	b517116b-f0a7-4f16-a6eb-ab4dbb1b65b0	Opal cup finishing	1	[{"added": {}}, {"added": {"name": "product image", "object": "Opal cup finishing - product/Opal cup finishing/OpalCups_Finishing_cup.png"}}]	14	43
1333	2023-05-29 09:06:35.176856+00	b517116b-f0a7-4f16-a6eb-ab4dbb1b65b0	Opal cup finishing	2	[{"changed": {"fields": ["Point price"]}}]	14	43
1334	2023-05-29 09:07:40.193318+00	ccb4ee02-42fa-409f-baf4-1f41890934c5	Opal cup bristle	1	[{"added": {}}, {"added": {"name": "product image", "object": "Opal cup bristle - product/Opal cup bristle/OpalCups_Bristle_cup_1.png"}}]	14	43
1335	2023-05-29 09:13:50.677936+00	70575b1c-21d9-43d6-bd1d-f1ee00159f1e	Opal Dam	1	[{"added": {}}, {"added": {"name": "product image", "object": "Opal Dam - product/Opal Dam/OpalDam_Syringe_3D.png"}}, {"added": {"name": "product image", "object": "Opal Dam - product/Opal Dam/OpalDam_Syringe_No_Tip.png"}}]	14	43
1336	2023-06-04 08:57:40.704823+00	37	Imaging plates	1	[{"added": {}}]	18	43
1337	2023-06-04 08:58:20.663794+00	38	accessories	1	[{"added": {}}]	18	43
1338	2023-06-04 09:08:38.073212+00	078f8bb3-f4f2-4366-aa51-53cae0c9b49c	i-Scan imaging plate (size 1)	1	[{"added": {}}, {"added": {"name": "product image", "object": "i-Scan imaging plate (size 1) - product/i-Scan imaging plate (size 1)/imaging_plates_for_iScan_and_Free_Scan.jpeg"}}]	14	43
1339	2023-06-04 09:10:32.566787+00	fe087a36-5f72-4ccc-9cdc-8b56b6ccb7d2	i-Scan imaging plates (Size 2)	1	[{"added": {}}, {"added": {"name": "product image", "object": "i-Scan imaging plates (Size 2) - product/i-Scan imaging plates (Size 2)/imaging_plates_for_iScan_and_Free_Scan.jpeg"}}]	14	43
1340	2023-06-04 09:23:07.142748+00	e4893263-5574-472b-a061-07c182be01d2	i-scan barrier cover	1	[{"added": {}}, {"added": {"name": "product image", "object": "i-scan barrier cover - product/i-scan barrier cover/Barrier_Cover_1.jpeg"}}, {"added": {"name": "product image", "object": "i-scan barrier cover - product/i-scan barrier cover/Barrier_Cover_2.jpeg"}}, {"added": {"name": "product image", "object": "i-scan barrier cover - product/i-scan barrier cover/Barrier_Cover_3.jpeg"}}, {"added": {"name": "product item", "object": "i-scan barrier cover size 1"}}, {"added": {"name": "product item", "object": "i-scan barrier cover size 2"}}]	14	43
1341	2023-06-04 09:25:31.269543+00	374ccb87-97cc-4742-81ee-2ad2e3d74c25	i-Scan cardboard	1	[{"added": {}}, {"added": {"name": "product image", "object": "i-Scan cardboard - product/i-Scan cardboard/White_protective_board_1.jpeg"}}, {"added": {"name": "product image", "object": "i-Scan cardboard - product/i-Scan cardboard/White_protective_board_2.jpeg"}}, {"added": {"name": "product image", "object": "i-Scan cardboard - product/i-Scan cardboard/White_protective_board_3.jpeg"}}, {"added": {"name": "product item", "object": "i-Scan cardboard size 1"}}, {"added": {"name": "product item", "object": "i-Scan cardboard size 2"}}]	14	43
1342	2023-06-04 10:25:39.45624+00	22	purifiers	1	[{"added": {}}]	12	43
1343	2023-06-04 10:25:58.678491+00	39	Air purifiers	1	[{"added": {}}]	18	43
1344	2023-06-04 10:41:12.02597+00	c7db66a0-5928-41fb-9ee4-05109395f38d	Q3	1	[{"added": {}}, {"added": {"name": "product image", "object": "Q3 - product/Q3/q3.png"}}, {"added": {"name": "product image", "object": "Q3 - product/Q3/q3a.png"}}]	14	43
1345	2023-06-04 10:43:23.861801+00	bc5e478f-44b3-473a-a4d0-b8e0e11e0518	Q7	1	[{"added": {}}, {"added": {"name": "product image", "object": "Q7 - product/Q7/q7.png"}}, {"added": {"name": "product image", "object": "Q7 - product/Q7/q7a.png"}}]	14	43
1347	2023-06-04 10:47:56.050309+00	40	Tray Fabrication	1	[{"added": {}}]	18	43
1349	2023-06-04 10:52:07.601903+00	50556a75-a48a-42fa-9027-a9ae100e6e0c	Sof-Tray classic sheets 1.5 ml	1	[{"added": {}}, {"added": {"name": "product image", "object": "Sof-Tray classic sheets 1.5 ml - product/Sof-Tray classic sheets 1.5 ml/Sof-Tray_Classic_Sheets_5.png"}}]	14	43
1350	2023-06-04 10:52:30.093763+00	c33c46ec-7ddc-446d-863b-040a2569befc	Sof-Tray classic sheets 1 ml	2	[{"changed": {"fields": ["Description"]}}]	14	43
1351	2023-06-04 10:53:51.612146+00	08e0a9ea-7a5a-47fc-9bc9-836db8dcf639	Sof-Tray Classic sheets 2ml	1	[{"added": {}}, {"added": {"name": "product image", "object": "Sof-Tray Classic sheets 2ml - product/Sof-Tray Classic sheets 2ml/Sof-Tray_Classic_Sheets_5.png"}}]	14	43
1352	2023-06-04 11:16:54.75164+00	4	Endo pace	2	[]	46	43
1353	2023-06-04 11:17:26.577136+00	5	order now	1	[{"added": {}}]	46	43
1354	2023-06-04 11:20:44.940775+00	5	KMC...Beyond the bound of dental supplies	2	[{"changed": {"fields": ["Title", "Quote"]}}]	46	43
1355	2023-06-05 14:16:27.21515+00	b46b63c5-96c7-4493-90b7-59ea14077264	K-Led	1	[{"added": {}}, {"added": {"name": "product image", "object": "K-Led - product/K-Led/k_led.jpeg"}}, {"added": {"name": "product image", "object": "K-Led - product/K-Led/kled_2.jpeg"}}, {"added": {"name": "product image", "object": "K-Led - product/K-Led/kled_4.png"}}]	14	43
1356	2023-06-06 12:03:23.057214+00	d8df3e11-b619-47ba-847b-34ae8b29c9f5	i-Scan	2	[{"changed": {"fields": ["Sub branch"]}}]	14	31
1357	2023-06-06 12:04:12.066252+00	f14db6d8-06c0-4306-9920-23cb02d6ba4d	Free Scan	2	[{"changed": {"fields": ["Sub branch"]}}]	14	31
1358	2023-06-06 12:07:06.84944+00	18	Light cure	3		12	31
1359	2023-06-06 18:37:19.508482+00	cc28815e-7b14-44d4-b000-dacc6cf3b933	RTA	1	[{"added": {}}, {"added": {"name": "product image", "object": "RTA - product/RTA/Minis_RTA_2dEi4UW.png"}}]	14	43
1360	2023-06-06 18:42:36.874436+00	7ef30076-4b44-47ec-8609-28d7adfc0a6f	Led-D	1	[{"added": {}}, {"added": {"name": "product image", "object": "Led-D - product/Led-D/8_WMa96LL.png"}}, {"added": {"name": "product image", "object": "Led-D - product/Led-D/2.png"}}, {"added": {"name": "product image", "object": "Led-D - product/Led-D/9_awWvFkf.png"}}]	14	43
1361	2023-06-06 18:47:00.780432+00	0d2091b5-aecc-4346-9230-8692fb4a6258	Led-F	1	[{"added": {}}, {"added": {"name": "product image", "object": "Led-F - product/Led-F/1_XIpge6k.png"}}, {"added": {"name": "product image", "object": "Led-F - product/Led-F/7_oeZXwHk.png"}}, {"added": {"name": "product image", "object": "Led-F - product/Led-F/2.png"}}]	14	43
1362	2023-06-06 18:50:34.177239+00	a1c4f9f3-72af-4b94-b110-b57f743bba20	I-Led	1	[{"added": {}}, {"added": {"name": "product image", "object": "I-Led - product/I-Led/15.png"}}, {"added": {"name": "product image", "object": "I-Led - product/I-Led/21.png"}}, {"added": {"name": "product image", "object": "I-Led - product/I-Led/16.png"}}]	14	43
1363	2023-06-06 18:54:44.511717+00	09803e02-7108-4e70-8937-860d25b7ddbb	I-Led Max	1	[{"added": {}}, {"added": {"name": "product image", "object": "I-Led Max - product/I-Led Max/i-Led_MAX_6_uIoPd5N.png"}}, {"added": {"name": "product image", "object": "I-Led Max - product/I-Led Max/i-Led_MAX_2_llxu0jh.jpeg"}}, {"added": {"name": "product image", "object": "I-Led Max - product/I-Led Max/i-Led_MAX_1_xdun1Ny.jpeg"}}]	14	43
1364	2023-06-06 18:59:54.750744+00	f7651615-6ff3-412c-b3c4-9659e17fcff9	B cure	1	[{"added": {}}, {"added": {"name": "product image", "object": "B cure - product/B cure/8.png"}}, {"added": {"name": "product image", "object": "B cure - product/B cure/7.png"}}, {"added": {"name": "product image", "object": "B cure - product/B cure/1.png"}}]	14	43
1365	2023-06-06 19:04:05.96007+00	56c5891f-a8bb-4458-a273-046414edacd3	X Cure	1	[{"added": {}}, {"added": {"name": "product image", "object": "X Cure - product/X Cure/X_cure_7.png"}}, {"added": {"name": "product image", "object": "X Cure - product/X Cure/X_cure_6.png"}}, {"added": {"name": "product image", "object": "X Cure - product/X Cure/X_cure_5.png"}}]	14	43
1366	2023-06-07 10:05:40.786226+00	16e91f84-28c5-4520-8f97-4bcb856c6d66	Ultra-Etch	1	[{"added": {}}, {"added": {"name": "product image", "object": "Ultra-Etch - product/Ultra-Etch/Ultra_Etch_1.jpeg"}}, {"added": {"name": "product image", "object": "Ultra-Etch - product/Ultra-Etch/Ultra_Etch_2.png"}}]	14	43
1367	2023-06-07 10:06:38.794121+00	41	Shade guides	1	[{"added": {}}]	18	43
1368	2023-06-07 10:08:29.287297+00	fcabd953-b618-4dd2-b0dc-06c2a55e2af5	Shade guide cards	1	[{"added": {}}, {"added": {"name": "product image", "object": "Shade guide cards - product/Shade guide cards/Opalescence_Shade_Guide.jpeg"}}]	14	43
1369	2023-06-07 10:10:00.700068+00	42	others	1	[{"added": {}}]	18	43
1370	2023-06-07 10:12:27.44513+00	b16afcec-f233-43a0-a14e-426d0246f9c7	Enamelast 5% Sodium Fluoride Varnish	1	[{"added": {}}, {"added": {"name": "product image", "object": "Enamelast 5% Sodium Fluoride Varnish - product/Enamelast 5% Sodium Fluoride Varnish/Enamelast_unit_dose_open.png"}}]	14	43
1371	2023-06-07 10:14:15.757886+00	43	Tips	1	[{"added": {}}]	18	43
1372	2023-06-07 10:15:39.030196+00	141f2ff2-d24b-4722-b023-7ed84a1211ca	EndoEze Irrigator tips	1	[{"added": {}}, {"added": {"name": "product image", "object": "EndoEze Irrigator tips - product/EndoEze Irrigator tips/Endo-Eze_Irrigator_Tip.png"}}]	14	43
1373	2023-06-07 10:17:28.974992+00	50556a75-a48a-42fa-9027-a9ae100e6e0c	Sof-Tray classic sheets 1.5 ml pack	2	[{"changed": {"fields": ["Title"]}}]	14	43
1374	2023-06-07 10:17:39.954469+00	08e0a9ea-7a5a-47fc-9bc9-836db8dcf639	Sof-Tray Classic sheets 2ml pack	2	[{"changed": {"fields": ["Title"]}}]	14	43
1375	2023-06-07 10:18:07.717577+00	c33c46ec-7ddc-446d-863b-040a2569befc	Sof-Tray classic sheets 1 ml pack	2	[{"changed": {"fields": ["Title"]}}]	14	43
1376	2023-06-07 10:21:20.363212+00	3126a831-cbd9-4fdd-9c53-610f02ce3eb1	Piece Sof-Tray classic sheet 1ml	1	[{"added": {}}, {"added": {"name": "product image", "object": "Piece Sof-Tray classic sheet 1ml - product/Piece Sof-Tray classic sheet 1ml/Soft_tray_classic_sheets.png"}}]	14	43
1377	2023-06-07 10:22:45.496351+00	d417b31c-93f5-4fd7-a643-8e6e1ca6034f	Piece Sof-Tray Classic sheet 1.5 ml	1	[{"added": {}}, {"added": {"name": "product image", "object": "Piece Sof-Tray Classic sheet 1.5 ml - product/Piece Sof-Tray Classic sheet 1.5 ml/Soft_tray_classic_sheets.png"}}]	14	43
1378	2023-06-07 10:23:40.678423+00	ef3769de-6041-4822-ba60-64c006113c7a	Piece Sof-Tray 2ml	1	[{"added": {}}, {"added": {"name": "product image", "object": "Piece Sof-Tray 2ml - product/Piece Sof-Tray 2ml/Soft_tray_classic_sheets.png"}}]	14	43
1379	2023-06-07 10:26:27.311824+00	76db694f-653d-4707-b4ba-644d368d8750	Luer Vacuum Adapter	1	[{"added": {}}, {"added": {"name": "product image", "object": "Luer Vacuum Adapter - product/Luer Vacuum Adapter/Luer_Vacuum_Adapter.png"}}]	14	43
1380	2023-06-07 10:29:26.664174+00	5ccb6ae9-608e-4753-9396-771e53bf5d84	Permaflo A1	1	[{"added": {}}, {"added": {"name": "product image", "object": "Permaflo A1 - product/Permaflo A1/PermaFlo_A1_Syringe.png"}}, {"added": {"name": "product image", "object": "Permaflo A1 - product/Permaflo A1/PermaFlo_A1_Kit.png"}}]	14	43
1381	2023-06-07 10:31:41.543426+00	f3ca3322-edfb-4097-b6a1-8cfb5134e87f	NaviTips 29gg 27mm	1	[{"added": {}}, {"added": {"name": "product image", "object": "NaviTips 29gg 27mm - product/NaviTips 29gg 27mm/Green_NaviTip_29_ga_27_mm_tip_50_pk.jpeg"}}, {"added": {"name": "product image", "object": "NaviTips 29gg 27mm - product/NaviTips 29gg 27mm/NaviTip_29_ga-27mm_green_3D.png"}}]	14	43
1383	2023-06-07 10:40:15.788439+00	c381faaa-2d04-4727-9ff7-aa50315f6b8e	Ultradent L.C Block Out Resin	1	[{"added": {}}, {"added": {"name": "product image", "object": "Ultradent L.C Block Out Resin - product/Ultradent L.C Block Out Resin/LC_Block-Out_syringe_with_tip.png"}}, {"added": {"name": "product image", "object": "Ultradent L.C Block Out Resin - product/Ultradent L.C Block Out Resin/LC_Block-Out_placement_on_tooth_model.jpeg"}}, {"added": {"name": "product image", "object": "Ultradent L.C Block Out Resin - product/Ultradent L.C Block Out Resin/LC_Block-Out_placement_on_arch_model.jpeg"}}]	14	43
1384	2023-06-07 10:53:11.40563+00	45	isolation	1	[{"added": {}}]	18	43
1385	2023-06-07 10:53:45.429655+00	45	Isolation	2	[{"changed": {"fields": ["Name"]}}]	18	43
1386	2023-06-07 10:56:13.406775+00	877bab2d-716a-458d-9f98-1b36a738223d	Iso Block	1	[{"added": {}}, {"added": {"name": "product image", "object": "Iso Block - product/Iso Block/IsoBlock.png"}}]	14	43
1387	2023-06-07 11:01:11.726076+00	79b5c943-441a-4074-a96b-644702352d36	Porcelain Etch	1	[{"added": {}}, {"added": {"name": "product image", "object": "Porcelain Etch - product/Porcelain Etch/Porcelain_Etch_Syringe_No_Tip.png"}}]	14	43
1388	2023-06-07 11:04:09.451103+00	e1699a31-8ba1-4ebc-87df-cc471b5fb1a0	Silane	1	[{"added": {}}, {"added": {"name": "product image", "object": "Silane - product/Silane/Silane_Syringe_No_Tip_Reflection.jpeg"}}]	14	43
1389	2023-06-07 11:04:27.426317+00	79b5c943-441a-4074-a96b-644702352d36	Porcelain Etch	2	[{"changed": {"fields": ["Description"]}}]	14	43
1390	2023-06-07 11:08:38.41754+00	6a1c7ec4-1a7f-4593-b60f-6e965ee119d3	Opalustre	1	[{"added": {}}, {"added": {"name": "product image", "object": "Opalustre - product/Opalustre/Opalustre_Syringe_with_tip.png"}}]	14	43
1391	2023-06-07 11:11:21.098595+00	bbacf9b0-9f84-4680-b2c5-830feda86cfe	Permaseal	1	[{"added": {}}, {"added": {"name": "product image", "object": "Permaseal - product/Permaseal/PermaSeal_syringe_with_tip_3D.png"}}]	14	43
1392	2023-06-07 11:14:08.31642+00	c65297ad-8096-4a04-81ac-90a5f7c5c9d1	Opalescence Pocket Tray	1	[{"added": {}}, {"added": {"name": "product image", "object": "Opalescence Pocket Tray - product/Opalescence Pocket Tray/melon_green_blue_case.png"}}, {"added": {"name": "product image", "object": "Opalescence Pocket Tray - product/Opalescence Pocket Tray/Opalescence_Pocket_Tray_Green_1.png"}}, {"added": {"name": "product image", "object": "Opalescence Pocket Tray - product/Opalescence Pocket Tray/Opalescence_Pocket_Tray.png"}}, {"added": {"name": "product item", "object": "Opalescence Pocket Tray Green"}}, {"added": {"name": "product item", "object": "Opalescence Pocket Tray Blue"}}]	14	43
1393	2023-06-07 11:16:37.082105+00	d525a638-ee7d-41ad-a2f3-4757dfce9dd2	UltraSeal XT Plus Opaque	1	[{"added": {}}, {"added": {"name": "product image", "object": "UltraSeal XT Plus Opaque - product/UltraSeal XT Plus Opaque/UltraSeal_XT_plus_syringe_opaque_white.png"}}]	14	43
1394	2023-06-07 11:29:55.353001+00	ef8ed366-4704-490a-9231-bbca77053143	PermaFlo A2	1	[{"added": {}}, {"added": {"name": "product image", "object": "PermaFlo A2 - product/PermaFlo A2/PermaFlo_A2_Pose_4_3D.png"}}]	14	43
1395	2023-06-07 11:31:06.821481+00	1e37104c-c6e6-43b6-97ee-30ad39ca33ad	Permaflo A3	1	[{"added": {}}, {"added": {"name": "product image", "object": "Permaflo A3 - product/Permaflo A3/PermaFlo_A3_Syringe.jpeg"}}]	14	43
1396	2023-06-07 11:31:59.7488+00	6e245c31-f351-4a36-b45f-6cbbba8177e2	PermaFlo B1	1	[{"added": {}}, {"added": {"name": "product image", "object": "PermaFlo B1 - product/PermaFlo B1/PermaFlo_B1_Syringe.jpeg"}}]	14	43
1397	2023-06-07 11:32:17.408529+00	5ccb6ae9-608e-4753-9396-771e53bf5d84	PermaFlo A1	2	[{"changed": {"fields": ["Title"]}}]	14	43
1398	2023-06-07 11:34:34.130238+00	c3f223f2-923d-41fd-aad8-a7edd3ce1e35	PermaFlo Pink	1	[{"added": {}}, {"added": {"name": "product image", "object": "PermaFlo Pink - product/PermaFlo Pink/PermaFlo_Pink_PermaFlo_A2_Pose_1_3D.png"}}]	14	43
1399	2023-06-07 11:37:55.470446+00	5cb76719-aabd-4056-bccd-4d2dc49352a7	UltraEz	1	[{"added": {}}, {"added": {"name": "product image", "object": "UltraEz - product/UltraEz/UltraEZ_group_product_image.png"}}, {"added": {"name": "product image", "object": "UltraEz - product/UltraEz/UltraEZ_syringe.png"}}]	14	43
1400	2023-06-08 10:36:09.618774+00	a2257d03-395c-4261-9224-9f91ddf7c77d	Consepsis	1	[{"added": {}}, {"added": {"name": "product image", "object": "Consepsis - product/Consepsis/Consepsis_Scrub_Syringe_No_Tip.png"}}, {"added": {"name": "product image", "object": "Consepsis - product/Consepsis/Consepsis_Scrub_Syringe.png"}}]	14	43
1401	2023-06-08 10:39:53.919695+00	cc7f704f-3fca-4268-9acc-28d1c328b942	Ultrablend Plus	1	[{"added": {}}, {"added": {"name": "product image", "object": "Ultrablend Plus - product/Ultrablend Plus/Ultra-Blend_Plus_Dentin_Refill_Box.jpeg"}}, {"added": {"name": "product image", "object": "Ultrablend Plus - product/Ultrablend Plus/Ultra-Blend_Plus_Dentin_Syringe.png"}}]	14	43
1402	2023-06-08 10:46:58.355757+00	7faa53b5-945e-403c-a25d-077e7df0626f	Jiffy Polisher cups 20pk	1	[{"added": {}}, {"added": {"name": "product image", "object": "Jiffy Polisher cups 20pk - product/Jiffy Polisher cups 20pk/20pk_Jiffy_Polishing_Variety.png"}}, {"added": {"name": "product image", "object": "Jiffy Polisher cups 20pk - product/Jiffy Polisher cups 20pk/Jiffy_20_Pack.png"}}]	14	43
1403	2023-06-08 11:06:08.063805+00	58ca7c3c-7822-47ca-b73e-62fea5e6e07e	Viscostat	2	[{"changed": {"fields": ["Title"]}}, {"deleted": {"name": "product image", "object": "Viscostat - product/Viscostat Econo/ViscoStat_Indispense_Syringe_Open_1.jpeg"}}]	14	43
1404	2023-06-08 11:07:22.12782+00	58ca7c3c-7822-47ca-b73e-62fea5e6e07e	Viscostat	2	[{"changed": {"fields": ["Description"]}}]	14	43
1405	2023-06-08 11:09:17.777626+00	6f09d675-f51a-4296-afb6-246c73d2d871	Viscostat indispense	1	[{"added": {}}, {"added": {"name": "product image", "object": "Viscostat indispense - product/Viscostat indispense/ViscoStat_Indispense_Syringe_Open_1.jpeg"}}, {"added": {"name": "product image", "object": "Viscostat indispense - product/Viscostat indispense/ViscoStat_Indispense_Syringe_Open.jpeg"}}]	14	43
1406	2023-06-08 11:13:31.580403+00	f4ebe4bc-c559-4aa4-b6cc-48fd7fa8bc66	Viscostat Clear Dento Kit	1	[{"added": {}}, {"added": {"name": "product image", "object": "Viscostat Clear Dento Kit - product/Viscostat Clear Dento Kit/ViscoStat_Clear_IndiSpense_Syringe_3.png"}}, {"added": {"name": "product image", "object": "Viscostat Clear Dento Kit - product/Viscostat Clear Dento Kit/ViscoStat_Clear_IndiSpense_Syringe_1.jpeg"}}]	14	43
1407	2023-06-08 11:16:33.807336+00	2a18e671-def8-444e-8f90-c24eda870b41	Ultra dent File-Eze	1	[{"added": {}}, {"added": {"name": "product image", "object": "Ultra dent File-Eze - product/Ultra dent File-Eze/File-Eze_syringe_no_tip.png"}}, {"added": {"name": "product image", "object": "Ultra dent File-Eze - product/Ultra dent File-Eze/File-Eze_syringe.png"}}]	14	43
1408	2023-06-08 12:56:38.917667+00	beceef0a-bdfc-4cb2-a0af-3cc4cc8911b8	Ultradent Universal Dentin Sealant	1	[{"added": {}}, {"added": {"name": "product image", "object": "Ultradent Universal Dentin Sealant - product/Ultradent Universal Dentin Sealant/Ultradent-Universal-Dentin-Sealant-syrnge-wi_YvKw1B9.jpeg"}}]	14	43
1409	2023-06-10 18:18:30.31815+00	e2de746a-d381-43d5-8c5d-4e158156777a	Opalescence PF 20% Mint	1	[{"added": {}}, {"added": {"name": "product image", "object": "Opalescence PF 20% Mint - product/Opalescence PF 20% Mint/5402-US_Opalescence-PF-20-percent-Regular-Refill-Kit-op_NLXdVSF.jpeg"}}]	14	43
1410	2023-06-10 18:20:51.11117+00	f15092bf-fc31-446d-9822-d843a9d684b5	Black Micro Tip	1	[{"added": {}}, {"added": {"name": "product image", "object": "Black Micro Tip - product/Black Micro Tip/Black-Micro-Tip_TIPS-highdef.jpeg"}}]	14	43
1411	2023-06-10 18:22:41.858407+00	91a103f0-ac9f-46fc-9512-10fdb6b92fc4	Black Micro Fx Tip	1	[{"added": {}}, {"added": {"name": "product image", "object": "Black Micro Fx Tip - product/Black Micro Fx Tip/Black-Micro-FX-Tip_TIPS-highdef_1.jpeg"}}]	14	43
1412	2023-06-10 18:25:30.83343+00	a2ebe84b-5cb1-4b4d-95f7-50d195bd3ab3	Ultra Etch Ref.	1	[{"added": {}}, {"added": {"name": "product image", "object": "Ultra Etch Ref. - product/Ultra Etch Ref./Ultra-Etch-Etchant-IndiSpense-Syringe-and-1.2ml-syringe-2023-BOND-ETCH.jpeg"}}]	14	43
1413	2023-06-10 18:28:33.671587+00	bc06f090-897b-43d1-93d1-57a8399352bb	Skini Syringe	1	[{"added": {}}, {"added": {"name": "product image", "object": "Skini Syringe - product/Skini Syringe/Skini-Syringe_SYRINGES-highdef.jpeg"}}]	14	43
1414	2023-06-10 18:31:14.811126+00	46	Cheek retractors and mouth props	1	[{"added": {}}]	18	43
1415	2023-06-10 18:33:10.441366+00	3e47d619-a402-437f-88c4-6a6a21543682	Prop Gard Ref	1	[{"added": {}}, {"added": {"name": "product image", "object": "Prop Gard Ref - product/Prop Gard Ref/PropGard-with-Tongue-Guard_PREPARE-highdef.jpeg"}}]	14	43
1416	2023-06-10 18:37:48.563399+00	84402861-2c99-4c5b-8847-0e7d9c58f510	Peak Universal Bond	1	[{"added": {}}, {"added": {"name": "product image", "object": "Peak Universal Bond - product/Peak Universal Bond/Peak-Universal-Bond-syringe_BOND-ETCH-highdef.jpeg"}}]	14	43
1417	2023-06-10 18:40:16.680047+00	208a75a2-1241-4c2b-af2a-c86af08789ec	Navi Tip White	1	[{"added": {}}, {"added": {"name": "product image", "object": "Navi Tip White - product/Navi Tip White/NaviTip-Tip-30ga-17mm-white-single_TIPS-SYRINGES-highdef.jpeg"}}]	14	43
1418	2023-06-10 18:43:59.299235+00	13913c18-fc7b-4e93-982c-cc55446f4b83	PermaShade LC Light Cure Veneer Cement A2	1	[{"added": {}}, {"added": {"name": "product image", "object": "PermaShade LC Light Cure Veneer Cement A2 - product/PermaShade LC Light Cure Veneer Cement A2/PermaShade-LC-A2-syringe_CROWN-BRIDGE-highdef.jpeg"}}]	14	43
1419	2023-06-10 18:46:24.445237+00	701d34ca-e395-4512-a5da-e1396c4cd558	Mixing Tip	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mixing Tip - product/Mixing Tip/Ultradent-Mixing-Tip_TIPS-highdef.jpeg"}}]	14	43
1420	2023-06-10 18:49:27.710751+00	04869af6-805c-4af5-8326-e5f577ec2500	Gemini Pre Initiated Tip 5mm	1	[{"added": {}}, {"added": {"name": "product image", "object": "Gemini Pre Initiated Tip 5mm - product/Gemini Pre Initiated Tip 5mm/8983_Gemini-5mm-Tip-single_EQUIPMENT-highdef.jpeg"}}]	14	43
1421	2023-06-10 18:51:34.372353+00	a74c0f43-2e65-455a-ad26-cdcd5ecbd9e5	Gemini Uninitiated Tip 7mm	1	[{"added": {}}, {"added": {"name": "product image", "object": "Gemini Uninitiated Tip 7mm - product/Gemini Uninitiated Tip 7mm/8984_Gemini-7mm-Tip-single_EQUIPMENT-highdef.jpeg"}}]	14	43
1422	2023-06-10 18:53:49.120319+00	46652c49-2555-49fa-934a-71a600ed2303	Gemini Hand Piece Shell	1	[{"added": {}}, {"added": {"name": "product image", "object": "Gemini Hand Piece Shell - product/Gemini Hand Piece Shell/8986_Gemini-Handpiece-Shell-single_EQUIPMENT-highdef.jpeg"}}]	14	43
1423	2023-06-10 18:56:24.041958+00	a7a323c4-2400-4bd8-86d3-bae557ea5bae	UltraSeal XT Hydro	1	[{"added": {}}, {"added": {"name": "product image", "object": "UltraSeal XT Hydro - product/UltraSeal XT Hydro/UltraSeal-XT-hydro-Sealant-syringe-with-Inspiral-Brush-tip-3_rGiu9bY.jpeg"}}]	14	43
1424	2023-06-10 19:01:59.693346+00	ef970c44-eb5f-4e48-ae1a-53542df551df	Astringedent Indispense	1	[{"added": {}}, {"added": {"name": "product image", "object": "Astringedent Indispense - product/Astringedent Indispense/Astringedent-Bottle-and-IndiSpense-syringe-highdef.jpeg"}}]	14	43
1425	2023-06-10 19:04:32.569866+00	630aed6f-ecb6-49e4-8450-0f993720c5cc	U Veneer Template Ref.	1	[{"added": {}}, {"added": {"name": "product image", "object": "U Veneer Template Ref. - product/U Veneer Template Ref./Uveneer_Single_Template_Large.jpeg"}}]	14	43
1426	2023-06-10 19:09:02.415731+00	3f109677-dbe7-419a-8538-e7b7eda4b4f5	U Veneer Extra Kit	1	[{"added": {}}, {"added": {"name": "product image", "object": "U Veneer Extra Kit - product/U Veneer Extra Kit/Uveneer_Extra_Kit_Inside_Left.png"}}, {"added": {"name": "product image", "object": "U Veneer Extra Kit - product/U Veneer Extra Kit/Uveneer_Extra_Extra_Large_and_Square_Box_Left.png"}}, {"added": {"name": "product image", "object": "U Veneer Extra Kit - product/U Veneer Extra Kit/Uveneer_Extra_Kit_Side_by_Side_3D.png"}}]	14	43
1427	2023-06-10 19:12:41.222706+00	cc3e2e5e-9442-472a-9aa2-74ad27476c41	Umbrella	1	[{"added": {}}, {"added": {"name": "product image", "object": "Umbrella - product/Umbrella/Umbrella-single-right-facing-3D_PREPARE.jpeg"}}]	14	43
1428	2023-06-10 19:15:44.99801+00	ad9b339a-e027-4147-a386-9eab02ba6550	UltraSeal XT Plus A1 Ref.	1	[{"added": {}}, {"added": {"name": "product image", "object": "UltraSeal XT Plus A1 Ref. - product/UltraSeal XT Plus A1 Ref./UltraSeal-XT-plus-Sealant-A1-syringe-capped-PREVENT-HYGIENE.jpeg"}}]	14	43
1429	2023-06-11 12:26:05.929763+00	07cd3f6a-514e-4d7e-80e5-3c2bcdbbe88b	Ultrapack E	3		14	43
1430	2023-06-11 12:26:25.246652+00	7ed426e9-eec2-4034-8bc5-c81bfe12bf48	Ultrapack	3		14	43
1431	2023-06-11 12:26:43.3761+00	7f52722f-da06-4df7-82da-6395155b46a7	Ultrapack #1	3		14	43
1432	2023-06-11 12:27:03.432067+00	957a8020-92a2-4fc5-9f55-44ebcf1e719b	Ultrapack #000	3		14	43
1433	2023-06-11 12:28:04.779175+00	47	Impregnated Retraction Cords	1	[{"added": {}}]	18	43
1434	2023-06-11 12:28:36.197122+00	21	unimpregnated Retraction cords	2	[{"changed": {"fields": ["Name"]}}]	18	43
1435	2023-06-11 12:30:03.052682+00	21	Unimpregnated Retraction cords	2	[{"changed": {"fields": ["Name"]}}]	18	43
1436	2023-06-11 12:42:09.4113+00	10c5f969-8707-4049-a1c8-6c02bd0b08c0	UltraPack cord	1	[{"added": {}}, {"added": {"name": "product image", "object": "UltraPack cord - product/UltraPack cord/Ultrapak-cord-group_TM-highdef.jpeg"}}, {"added": {"name": "product image", "object": "UltraPack cord - product/UltraPack cord/Ultrapak_Cord_Size_1.jpeg"}}, {"added": {"name": "product image", "object": "UltraPack cord - product/UltraPack cord/Ultrapak_2_1.png"}}, {"added": {"name": "product image", "object": "UltraPack cord - product/UltraPack cord/Ultrapak_3_1.png"}}, {"added": {"name": "product image", "object": "UltraPack cord - product/UltraPack cord/Ultrapak_0.png"}}, {"added": {"name": "product image", "object": "UltraPack cord - product/UltraPack cord/Ultrapak_Cord_Size_00.jpeg"}}, {"added": {"name": "product image", "object": "UltraPack cord - product/UltraPack cord/Ultrapak_Cord_Size_000.jpeg"}}, {"added": {"name": "product item", "object": "UltraPack cord #0"}}, {"added": {"name": "product item", "object": "UltraPack cord #00"}}, {"added": {"name": "product item", "object": "UltraPack cord #000"}}, {"added": {"name": "product item", "object": "UltraPack cord #1"}}, {"added": {"name": "product item", "object": "UltraPack cord #2"}}, {"added": {"name": "product item", "object": "UltraPack cord #3"}}]	14	43
1437	2023-06-11 12:43:55.001854+00	10c5f969-8707-4049-a1c8-6c02bd0b08c0	UltraPack cord	2	[{"changed": {"fields": ["Branch"]}}]	14	43
1438	2023-06-11 12:45:07.139512+00	10c5f969-8707-4049-a1c8-6c02bd0b08c0	UltraPack cord	2	[{"changed": {"fields": ["Branch"]}}]	14	43
2763	2024-05-14 11:52:35.632923+00	13	Tools	2	[{"changed": {"fields": ["Image"]}}]	19	43
1439	2023-06-11 12:56:21.74963+00	b28a8793-e9d0-4347-b694-07ad41f51069	UltraPack E Cord	1	[{"added": {}}, {"added": {"name": "product image", "object": "UltraPack E Cord - product/UltraPack E Cord/Ultrapak_Epinephrine_Family.png"}}, {"added": {"name": "product image", "object": "UltraPack E Cord - product/UltraPack E Cord/Ultrapak_E_Cord_Size_00.jpeg"}}, {"added": {"name": "product image", "object": "UltraPack E Cord - product/UltraPack E Cord/Ultrapak_E_Cord_Size_1.jpeg"}}, {"added": {"name": "product image", "object": "UltraPack E Cord - product/UltraPack E Cord/Ultrapak_E_Cord_Size_2_1.jpeg"}}, {"added": {"name": "product item", "object": "UltraPack E Cord #0"}}, {"added": {"name": "product item", "object": "UltraPack E Cord #00"}}, {"added": {"name": "product item", "object": "UltraPack E Cord #1"}}, {"added": {"name": "product item", "object": "UltraPack E Cord #2"}}]	14	43
1440	2023-06-11 12:58:18.861748+00	1	KMC Got Your Back	2	[{"changed": {"fields": ["Media"]}}]	46	43
1441	2023-06-11 12:58:40.712718+00	4	test	2	[{"changed": {"fields": ["Title", "Media"]}}]	46	43
1442	2023-06-12 09:59:39.175108+00	4	home/home-swiper/resize-01.jpg	2	[{"changed": {"fields": ["Link"]}}]	46	31
1443	2023-06-12 10:00:15.198814+00	5	home/home-swiper/Untitled-1_1.mp4	3		46	31
1444	2023-06-12 10:22:46.854266+00	21	Unimpregnated Retraction cords	2	[{"changed": {"fields": ["Branch"]}}]	18	43
1445	2023-06-12 10:24:19.249497+00	1	PT-A	1	[{"added": {}}]	54	43
1446	2023-06-12 10:43:51.848874+00	43	Tips	2	[{"changed": {"fields": ["Branch"]}}]	18	43
1447	2023-06-12 10:43:59.702646+00	43	Tips	2	[{"changed": {"fields": ["Branch"]}}]	18	43
1448	2023-06-12 10:45:44.98563+00	807fd9ca-1c85-4f23-941f-29035abf6251	Black Mini Brush Tips	1	[{"added": {}}, {"added": {"name": "product image", "object": "Black Mini Brush Tips - product/Black Mini Brush Tips/Black-Mini-Brush-Tip_Large-highdef.jpeg"}}]	14	43
1449	2023-06-14 09:22:54.445045+00	19	preparation	2	[{"changed": {"fields": ["Name"]}}]	12	43
1450	2023-06-14 09:23:07.112086+00	19	preparation	2	[{"changed": {"fields": ["Type"]}}]	12	43
1451	2023-06-14 09:23:11.651602+00	877bab2d-716a-458d-9f98-1b36a738223d	Iso Block	2	[{"changed": {"fields": ["Branch", "Sub branch"]}}]	14	43
1452	2023-06-14 09:30:18.221583+00	cc7f704f-3fca-4268-9acc-28d1c328b942	Ultrablend Plus	2	[{"changed": {"fields": ["Branch", "Sub branch"]}}]	14	43
1453	2023-06-14 09:34:45.065782+00	f4ebe4bc-c559-4aa4-b6cc-48fd7fa8bc66	Viscostat Clear indispense	2	[{"changed": {"fields": ["Title"]}}]	14	43
1454	2023-06-14 09:37:30.581126+00	28	Polishers	2	[{"changed": {"fields": ["Name"]}}]	18	43
1455	2023-06-14 09:39:14.193636+00	48	accessories	1	[{"added": {}}]	18	43
1456	2023-06-14 09:39:35.009447+00	04869af6-805c-4af5-8326-e5f577ec2500	Gemini Pre Initiated Tip 5mm	2	[{"changed": {"fields": ["Sub branch"]}}]	14	43
1457	2023-06-14 09:40:40.533919+00	a74c0f43-2e65-455a-ad26-cdcd5ecbd9e5	Gemini Uninitiated Tip 7mm	2	[{"changed": {"fields": ["Sub branch"]}}]	14	43
1458	2023-06-14 09:41:54.538106+00	46652c49-2555-49fa-934a-71a600ed2303	Gemini Hand Piece Shell	2	[]	14	43
1459	2023-06-14 09:42:46.297859+00	46652c49-2555-49fa-934a-71a600ed2303	Gemini Hand Piece Shell	2	[{"changed": {"fields": ["Sub branch"]}}]	14	43
1460	2023-06-14 09:44:22.786137+00	bbacf9b0-9f84-4680-b2c5-830feda86cfe	Permaseal	2	[{"changed": {"fields": ["Sub branch"]}}]	14	43
1461	2023-06-14 09:46:20.240759+00	20	whitening	2	[{"changed": {"name": "sub branch", "object": "Home Bleaching", "fields": ["Name"]}}, {"changed": {"name": "sub branch", "object": "In Office Bleaching", "fields": ["Name"]}}]	12	43
1462	2023-06-14 09:48:32.81053+00	8	Operative	2	[{"changed": {"name": "sub branch", "object": "Composite Template", "fields": ["Name"]}}]	12	43
1463	2023-06-14 09:51:19.348391+00	eba21433-2642-4f76-98c3-9288b7f8bd1a	UVeneer	2	[{"changed": {"fields": ["Branch"]}}]	14	43
1464	2023-06-14 09:52:17.013541+00	eba21433-2642-4f76-98c3-9288b7f8bd1a	UVeneer	2	[{"changed": {"fields": ["Type"]}}]	14	43
1465	2023-06-14 09:55:00.835082+00	b28a8793-e9d0-4347-b694-07ad41f51069	UltraPak E Cord	2	[{"changed": {"fields": ["Title"]}}]	14	43
1466	2023-06-14 09:56:10.995704+00	10c5f969-8707-4049-a1c8-6c02bd0b08c0	UltraPak cord	2	[{"changed": {"fields": ["Title"]}}]	14	43
1467	2023-06-14 10:06:28.055025+00	e2de746a-d381-43d5-8c5d-4e158156777a	Opalescence PF 20%	2	[{"changed": {"fields": ["Title", "Description"]}}]	14	43
1468	2023-06-14 10:15:32.292119+00	20	whitening	2	[{"added": {"name": "sub branch", "object": "Mechanical Abrasion"}}]	12	43
1469	2023-06-14 10:15:41.286429+00	6a1c7ec4-1a7f-4593-b60f-6e965ee119d3	Opalustre	2	[{"changed": {"fields": ["Sub branch"]}}]	14	43
1470	2023-06-14 10:20:24.712183+00	5cf260e6-192f-4774-a6c5-575a8d85c752	Opalescence 35%	1	[{"added": {}}, {"added": {"name": "product image", "object": "Opalescence 35% - product/Opalescence 35%/5373-US_Opalescence-PF-35-percent-Mint-Patient-Kit-open-2020_WHITEN.jpeg"}}]	14	43
1471	2023-06-14 10:26:17.114789+00	ee138c5a-d287-44be-9b20-ba8bdc213dcd	Opalescence Boost	2	[{"changed": {"fields": ["Title"]}}]	14	43
1472	2023-06-14 10:28:28.176628+00	ee138c5a-d287-44be-9b20-ba8bdc213dcd	Opalescence Boost	2	[{"changed": {"fields": ["Sub branch"]}}]	14	43
1473	2023-06-14 10:30:10.922811+00	70575b1c-21d9-43d6-bd1d-f1ee00159f1e	Opal Dam	2	[{"changed": {"fields": ["Branch", "Sub branch"]}}]	14	43
1474	2023-06-14 10:32:56.89703+00	b28a8793-e9d0-4347-b694-07ad41f51069	UltraPak E Cord	2	[{"added": {"name": "product image", "object": "UltraPak E Cord - product/UltraPak E Cord/Ultrapak_E_Cord_Size_0_1.jpeg"}}]	14	43
1475	2023-06-14 10:39:00.080667+00	078f8bb3-f4f2-4366-aa51-53cae0c9b49c	i-Scan Imaging Plate (size 1)	2	[{"changed": {"fields": ["Title"]}}]	14	43
1476	2023-06-14 10:39:08.951821+00	10c5f969-8707-4049-a1c8-6c02bd0b08c0	UltraPak Cord	2	[{"changed": {"fields": ["Title"]}}]	14	43
1477	2023-06-14 10:39:20.611831+00	2a18e671-def8-444e-8f90-c24eda870b41	UltraDent File-Eze	2	[{"changed": {"fields": ["Title"]}}]	14	43
1478	2023-06-14 10:39:31.87193+00	3126a831-cbd9-4fdd-9c53-610f02ce3eb1	Piece Sof-Tray Classic Sheet 1ml	2	[{"changed": {"fields": ["Title"]}}]	14	43
1479	2023-06-14 10:39:40.072533+00	374ccb87-97cc-4742-81ee-2ad2e3d74c25	i-Scan Cardboard	2	[{"changed": {"fields": ["Title"]}}]	14	43
1480	2023-06-14 10:39:52.272069+00	40f43a51-d312-43f0-acb9-731ca9ccde4b	Fi-G & Fi-P Obturation System	2	[{"changed": {"fields": ["Title"]}}]	14	43
1481	2023-06-14 10:40:07.865508+00	50556a75-a48a-42fa-9027-a9ae100e6e0c	Sof-Tray Classic Sheets 1.5 ml Pack	2	[{"changed": {"fields": ["Title"]}}]	14	43
1482	2023-06-14 10:40:16.149423+00	6f09d675-f51a-4296-afb6-246c73d2d871	Viscostat Indispense	2	[{"changed": {"fields": ["Title"]}}]	14	43
1483	2023-06-18 11:16:21.840384+00	5cf260e6-192f-4774-a6c5-575a8d85c752	Opalescence 35%	2	[]	14	43
1484	2023-06-18 11:17:18.790762+00	5cf260e6-192f-4774-a6c5-575a8d85c752	Opalescence 35%	2	[{"changed": {"fields": ["Sub branch"]}}]	14	43
1485	2023-06-25 08:36:02.789535+00	9	Dream	1	[{"added": {}}]	13	43
1486	2023-06-25 08:41:06.697885+00	23	Surgical	1	[{"added": {}}, {"added": {"name": "sub branch", "object": "Forceps"}}]	12	43
1657	2023-10-29 12:21:46.533139+00	f7651615-6ff3-412c-b3c4-9659e17fcff9	B cure	2	[{"changed": {"fields": ["Weight"]}}]	14	43
1487	2023-06-25 08:42:51.780151+00	e093e5f8-4513-49cc-b4f4-bb2996ec72e3	Curved Root Fragment Forceps	1	[{"added": {}}, {"added": {"name": "product image", "object": "Curved Root Fragment Forceps - product/Curved Root Fragment Forceps/Dream_curved_root_fragment_forceps.jpeg"}}]	14	43
1488	2023-06-25 08:43:48.166436+00	34f0e5cd-de60-40e0-87d9-8e96f4a8856a	Root Fragment Forceps	1	[{"added": {}}, {"added": {"name": "product image", "object": "Root Fragment Forceps - product/Root Fragment Forceps/Dream_root_fragment_forceps.jpeg"}}]	14	43
1489	2023-06-25 08:44:09.683245+00	51	Elevators	1	[{"added": {}}]	18	43
1490	2023-06-25 08:45:31.338795+00	f6033476-e780-4579-849e-79249898c646	Dream Elevator EPXO	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Elevator EPXO - product/Dream Elevator EPXO/Dream_elevator_epxo.jpeg"}}]	14	43
1491	2023-06-25 08:45:51.632251+00	e093e5f8-4513-49cc-b4f4-bb2996ec72e3	Dream Curved Root Fragment Forceps	2	[{"changed": {"fields": ["Title"]}}]	14	43
1492	2023-06-25 08:47:10.003444+00	34f0e5cd-de60-40e0-87d9-8e96f4a8856a	Dream Root Fragment Forceps	2	[{"changed": {"fields": ["Title"]}}]	14	43
1493	2023-06-25 08:48:21.101082+00	b3516012-b5b7-4ef9-a4ba-caea0c80d2a1	Dream Elevator kit 8 Pcs	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Elevator kit 8 Pcs - product/Dream Elevator kit 8 Pcs/Dream_elevator_kit_8_pcs_1.jpeg"}}, {"added": {"name": "product image", "object": "Dream Elevator kit 8 Pcs - product/Dream Elevator kit 8 Pcs/Dream_elevator_kit_8_pcs_2.jpeg"}}]	14	43
1494	2023-06-25 08:49:26.143035+00	448cacdb-fd57-434f-89e0-35b8de702edf	Dream Luxator	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Luxator - product/Dream Luxator/Dream_luxator.jpeg"}}]	14	43
1495	2023-06-25 08:50:37.665852+00	f1d7d82f-e9d2-4125-b89e-24d85310ed66	Dream Serrated Straight Elevator	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Serrated Straight Elevator - product/Dream Serrated Straight Elevator/Dream_serrated_straight_elevator.jpeg"}}]	14	43
1496	2023-06-25 08:52:16.474957+00	5fae3560-899c-425a-a3b5-7a99f5882325	Dream Straight Elevator	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Straight Elevator - product/Dream Straight Elevator/Dream_straight_elevator_1.jpeg"}}, {"added": {"name": "product image", "object": "Dream Straight Elevator - product/Dream Straight Elevator/Dream_straight_elevator_4.jpeg"}}, {"added": {"name": "product image", "object": "Dream Straight Elevator - product/Dream Straight Elevator/Dream_straight_elevator_7.jpeg"}}]	14	43
1497	2023-06-25 09:00:31.524791+00	52	Filling Instruments	1	[{"added": {}}]	18	43
1498	2023-06-25 09:01:31.390258+00	baedc9b4-d471-4195-8772-af0e7afd36ff	Dream Amalgam Carrier	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Amalgam Carrier - product/Dream Amalgam Carrier/Dream_amalgam_carrier.jpeg"}}]	14	43
1499	2023-06-25 09:03:30.939939+00	2fce73dc-c0f5-4d1b-865d-d601602a422e	Dream Ball Burnisher	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Ball Burnisher - product/Dream Ball Burnisher/Dream_ball_burnisher.jpeg"}}]	14	43
1500	2023-06-25 09:23:58.197904+00	d836fe46-0be4-4832-834b-e2577ab2b67b	Dream Carver Hollen Back	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Carver Hollen Back - product/Dream Carver Hollen Back/Dream_carver_hollen_back.jpeg"}}]	14	43
1501	2023-06-25 09:26:41.644377+00	b4d4a5a0-3bb9-4155-9372-e442e2622f80	Dream Condenser	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Condenser - product/Dream Condenser/Dream_condenser.jpeg"}}]	14	43
1502	2023-06-25 09:27:37.810991+00	d7c4a204-eb6b-4503-ac77-002f67200f9d	Dream conical Burnisher	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream conical Burnisher - product/Dream conical Burnisher/Dream_conical_burnisher.jpeg"}}]	14	43
1503	2023-06-25 09:29:43.850991+00	43aed322-ae25-430f-b2ab-5ee9313ea10f	Dream Conical Carver	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Conical Carver - product/Dream Conical Carver/Dream_conical_carver.jpeg"}}]	14	43
1504	2023-06-25 09:30:58.003804+00	2fb8b9d9-68bf-4036-884e-6c7be7e4ae8e	Dream Plastic Filling Instrument	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Plastic Filling Instrument - product/Dream Plastic Filling Instrument/Dream_plastic_filling.jpeg"}}]	14	43
1505	2023-06-25 09:34:48.566616+00	8c84019c-2d5a-45f9-8453-9bd75c545ef3	Dream Curette	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Curette - product/Dream Curette/Dream_curette.jpeg"}}]	14	43
1506	2023-06-25 09:35:55.865424+00	65e40683-fb89-4b6d-b0b7-fffa068fe0c7	Dream Hand Blade	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Hand Blade - product/Dream Hand Blade/Dream_hand_blade.jpeg"}}]	14	43
1507	2023-06-25 09:37:19.072707+00	8c84019c-2d5a-45f9-8453-9bd75c545ef3	Dream Curette	2	[{"changed": {"fields": ["Sub branch"]}}]	14	43
1508	2023-06-25 09:40:04.430094+00	53	Others	1	[{"added": {}}]	18	43
1509	2023-06-25 09:40:17.265648+00	65e40683-fb89-4b6d-b0b7-fffa068fe0c7	Dream Hand Blade	2	[{"changed": {"fields": ["Sub branch"]}}]	14	43
1510	2023-06-25 09:40:51.496683+00	8c84019c-2d5a-45f9-8453-9bd75c545ef3	Dream Curette	2	[{"changed": {"fields": ["Sub branch"]}}]	14	43
1511	2023-06-25 09:42:48.505582+00	65e40683-fb89-4b6d-b0b7-fffa068fe0c7	Dream Hand Blade	2	[{"changed": {"fields": ["Sub branch"]}}]	14	43
1512	2023-06-25 09:44:05.824142+00	54	Diagnostic	1	[{"added": {}}]	18	43
1513	2023-06-25 09:54:45.14188+00	c0e2f3d9-71df-4a35-9503-b63a86b34cae	Dream Mirror Hand	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Mirror Hand - product/Dream Mirror Hand/Dream_mirror_hand.jpeg"}}]	14	43
1514	2023-06-25 09:55:57.787756+00	b65b3293-8434-4a66-9333-0775b074d432	Dream Probe	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Probe - product/Dream Probe/Dream_probe.jpeg"}}]	14	43
1515	2023-06-25 09:56:46.89573+00	fc8a0b53-e04e-425b-b937-15f9da139fb5	Dream Tweezer	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Tweezer - product/Dream Tweezer/Dream_tweezer_with_lock_1.jpeg"}}]	14	43
1516	2023-06-25 10:23:16.803114+00	55	Probes & Scalers	1	[{"added": {}}]	18	43
1517	2023-06-25 10:24:45.451959+00	7f5f16e9-e518-4c3a-8e2f-7f2dc5853ce9	Dream Sickle Scaler	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Sickle Scaler - product/Dream Sickle Scaler/Dream_sickle_scaler.jpeg"}}]	14	43
1518	2023-06-25 10:25:29.06657+00	b472d3e4-e905-4d03-86d7-42670297e79f	Dream Periodontal Probe	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Periodontal Probe - product/Dream Periodontal Probe/Dream_periodontal_probe.jpeg"}}]	14	43
1519	2023-06-25 10:26:21.281427+00	35	Retraction Cord Packer	2	[{"changed": {"fields": ["Name"]}}]	18	43
1520	2023-06-25 10:31:38.302717+00	56	Wax Instruments	1	[{"added": {}}]	18	43
1521	2023-06-25 10:32:53.223103+00	b64830f0-41b4-4ef7-9d16-52d207ecb6cd	Dream Wax Carver large	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Wax Carver large - product/Dream Wax Carver large/Dream_wax_carver_larger.jpeg"}}]	14	43
1658	2023-10-29 12:23:42.249235+00	b46b63c5-96c7-4493-90b7-59ea14077264	K-Led	2	[{"changed": {"fields": ["Weight"]}}]	14	43
1660	2023-10-29 12:24:55.78945+00	75524dad-fd4a-48f5-b248-c7e50c722679	E-Led	2	[{"changed": {"fields": ["Weight"]}}]	14	43
1522	2023-06-25 10:34:05.074433+00	6b8aef76-2a19-4766-80ed-479505270d75	Dream Wax Carver Small	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Wax Carver Small - product/Dream Wax Carver Small/Dream_wax_carver_small.jpeg"}}, {"added": {"name": "product image", "object": "Dream Wax Carver Small - product/Dream Wax Carver Small/Dream_wax_carver_small_2.jpeg"}}]	14	43
1523	2023-06-25 10:35:23.275835+00	80cf4b5a-0393-426a-a597-9aa6712e8e5a	Dream Wax Dropper	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Wax Dropper - product/Dream Wax Dropper/Dream_wax_dropper.jpeg"}}]	14	43
1524	2023-06-25 10:36:17.079515+00	4d8ec8e0-4091-417f-81a3-b9c0b87228cb	Dream Wax Knife Small	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Wax Knife Small - product/Dream Wax Knife Small/Dream_wax_knife_small.jpeg"}}]	14	43
1525	2023-06-25 10:36:19.69942+00	36b6f8e1-1968-4d38-9055-5ae5d3eb9a64	Dream Wax Knife Small	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Wax Knife Small - product/Dream Wax Knife Small/Dream_wax_knife_small_BtmdTV6.jpeg"}}]	14	43
1526	2023-06-25 10:37:19.565005+00	937d4a67-0216-491f-a094-ce814a9e1d98	Dream Wax Knife	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Wax Knife - product/Dream Wax Knife/Dream_wax_knife.jpeg"}}]	14	43
1527	2023-06-25 10:38:24.714855+00	57	Spatula	1	[{"added": {}}]	18	43
1528	2023-06-25 10:41:02.53991+00	f36f4386-7779-4a9b-9144-bba493af9478	Dream Cement Spatula	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Cement Spatula - product/Dream Cement Spatula/Dream_cement_spatula.jpeg"}}]	14	43
1529	2023-06-25 10:42:05.718227+00	8d4799c9-5254-4c43-9166-9289733397e1	Dream Spatula	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Spatula - product/Dream Spatula/Dream_spatula.jpeg"}}]	14	43
1530	2023-06-25 12:21:43.358148+00	f4c8a3a7-1a45-41f2-8d95-61564a685232	Dream Tofflemire	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Tofflemire - product/Dream Tofflemire/Dream_tofflemire_8.jpeg"}}]	14	43
1531	2023-06-25 12:22:30.86612+00	37549217-7118-48bb-8365-178c19a61e68	Dream Tofflemire Retainer	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Tofflemire Retainer - product/Dream Tofflemire Retainer/Dream_tofflemire_retainer_1.jpeg"}}]	14	43
1532	2023-06-25 12:24:46.580966+00	58	Caliber	1	[{"added": {}}]	18	43
1533	2023-06-25 12:25:28.07451+00	d97387f5-c4ce-4dda-a7c5-b9496c63e0e6	Dream Bone Caliber	1	[{"added": {}}, {"added": {"name": "product image", "object": "Dream Bone Caliber - product/Dream Bone Caliber/Dream_Caliber.jpeg"}}]	14	43
1534	2023-06-25 12:26:48.533163+00	52c58aab-8ef0-41eb-801b-a9a8bc6bbf89	CAOH Applicator Double End	1	[{"added": {}}, {"added": {"name": "product image", "object": "CAOH Applicator Double End - product/CAOH Applicator Double End/Dream_CAOH_applicator_double_end.jpeg"}}]	14	43
1535	2023-07-05 13:36:19.687458+00	10	Mitex	1	[{"added": {}}]	13	43
1536	2023-07-05 13:38:07.123108+00	799585f3-2e30-4f6c-9d3f-9f3fe914d8e6	Mitex Bone Caliber	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Bone Caliber - product/Mitex Bone Caliber/Mitex_Caliber.jpeg"}}]	14	43
1537	2023-07-05 13:47:24.882962+00	bc79c542-c968-44dd-a49e-c1ffe0717022	Mitex CAOH Applicator	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex CAOH Applicator - product/Mitex CAOH Applicator/Mitex_CAOH_applicator_1.jpeg"}}, {"added": {"name": "product image", "object": "Mitex CAOH Applicator - product/Mitex CAOH Applicator/Mitex_CAOH_applicator_2.jpeg"}}]	14	43
1538	2023-07-05 13:48:22.143439+00	59	Crown Remover	1	[{"added": {}}]	18	43
1539	2023-07-05 13:49:24.95425+00	0cfc9b1f-c44d-4e61-8e94-c40007f3016a	Mitex Crown Removal Automatic	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Crown Removal Automatic - product/Mitex Crown Removal Automatic/Mitex_crown_removal_automatic.jpeg"}}]	14	43
1540	2023-07-05 13:50:40.916158+00	cfcbfd80-8b58-4933-ad5e-e88af2037ce0	Mitex Mirror Hand	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Mirror Hand - product/Mitex Mirror Hand/Mitex_mirror_hand.jpeg"}}]	14	43
1541	2023-07-05 13:51:57.552014+00	91d14421-9142-4eab-a60c-ee247e91a152	Mitex Probe Straight Tip	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Probe Straight Tip - product/Mitex Probe Straight Tip/Mitex_probe_straight_tip.jpeg"}}]	14	43
1542	2023-07-05 13:56:24.962143+00	60	Excavators	1	[{"added": {}}]	18	43
1543	2023-07-05 13:57:15.646045+00	be79edd2-7a90-4f91-9a4e-e77a34cbcebb	Mitex Excavator Spoon	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Excavator Spoon - product/Mitex Excavator Spoon/Mitex_excavator_spoon.jpeg"}}]	14	43
1544	2023-07-05 13:58:33.841002+00	d1200e85-1411-4f0d-b9a1-7a8351464449	Mitex Periodontal Probe	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Periodontal Probe - product/Mitex Periodontal Probe/Mitex_periodontal_probe.jpeg"}}]	14	43
1545	2023-07-05 13:59:30.640113+00	52448f20-d6c7-4281-b1c2-831055256820	Mitex Probe	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Probe - product/Mitex Probe/Mitex_probe.jpeg"}}]	14	43
1546	2023-07-05 14:01:14.927522+00	201ca028-e09e-43c7-927a-50c664a1febc	Mitex Sickle Scaler	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Sickle Scaler - product/Mitex Sickle Scaler/Mitex_sickle_scaler.jpeg"}}]	14	43
1547	2023-07-05 14:02:41.300524+00	27fc5ba6-9f46-45e7-8d69-7f44265d089c	Mitex Tray	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Tray - product/Mitex Tray/Mitex_tray.jpeg"}}]	14	43
1548	2023-07-05 14:04:01.240032+00	6db57dfd-0e24-4b46-a3b0-2a24d4c54c0e	Mitex Tweezer With Lock	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Tweezer With Lock - product/Mitex Tweezer With Lock/Mitex_tweezer_with_lock.jpeg"}}, {"added": {"name": "product image", "object": "Mitex Tweezer With Lock - product/Mitex Tweezer With Lock/Mitex_tweezer_without_lock_2.jpeg"}}]	14	43
1549	2023-07-05 14:04:46.863693+00	08100b85-8b18-4e30-9a0b-f82d9941f3a2	Mitex Tweezer Without Lock	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Tweezer Without Lock - product/Mitex Tweezer Without Lock/Mitex_tweezer_without_lock_1.jpeg"}}]	14	43
1550	2023-07-05 14:06:01.41886+00	09865735-20dd-4dac-8b4c-bca2db20ee22	Mitex Egg Burnisher	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Egg Burnisher - product/Mitex Egg Burnisher/Mitex_egg_burnisher.jpeg"}}]	14	43
1551	2023-07-05 14:10:30.293744+00	cf494fe0-5968-48e3-85ea-72cde3f17953	Mitex Cryer Elevator	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Cryer Elevator - product/Mitex Cryer Elevator/Mitex_cryer_elevator.jpeg"}}]	14	43
1552	2023-07-05 14:11:25.460095+00	6cd62507-9d16-4ecd-a49e-2cb1760ce9c7	Mitex Epxo Elevator	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Epxo Elevator - product/Mitex Epxo Elevator/Mitex_elevator_epxo.jpeg"}}]	14	43
1553	2023-07-05 14:12:42.447272+00	c9750cc0-021b-42f5-915c-147747c93ce4	Mitex Elevator kit 3 Pcs	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Elevator kit 3 Pcs - product/Mitex Elevator kit 3 Pcs/Mitex_elevator_kit_3_pcs_1.jpeg"}}, {"added": {"name": "product image", "object": "Mitex Elevator kit 3 Pcs - product/Mitex Elevator kit 3 Pcs/Mitex_elevator_kit_3_pcs_2.jpeg"}}]	14	43
1554	2023-07-05 14:13:36.164478+00	b2dd1b55-ea05-44f7-be9f-f718c935aaf2	Mitex Elevator Kit 8 Pcs	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Elevator Kit 8 Pcs - product/Mitex Elevator Kit 8 Pcs/Mitex_elvator_kit_8_pcs_1.jpeg"}}, {"added": {"name": "product image", "object": "Mitex Elevator Kit 8 Pcs - product/Mitex Elevator Kit 8 Pcs/Mitex_elvator_kit_8_pcs_2.jpeg"}}]	14	43
1555	2023-07-05 14:15:16.686216+00	0c204162-1302-4b04-a189-517f1ad78561	Mitex Serrated Straight Elevator	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Serrated Straight Elevator - product/Mitex Serrated Straight Elevator/Mitex_serrated_straight_elevator.jpeg"}}]	14	43
1556	2023-07-05 14:16:03.245099+00	836f1a60-1ecf-4ae1-91a0-2b804c7962ec	Mitex Straight elevator	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Straight elevator - product/Mitex Straight elevator/Mitex_straight_elevator_1.jpeg"}}, {"added": {"name": "product image", "object": "Mitex Straight elevator - product/Mitex Straight elevator/Mitex_straight_elevator_2.jpeg"}}, {"added": {"name": "product image", "object": "Mitex Straight elevator - product/Mitex Straight elevator/Mitex_straight_elevator_3.jpeg"}}]	14	43
1557	2023-07-05 14:17:08.72507+00	6958730d-712b-48de-b4eb-4c3276783913	Mitex Straight Elevator Flat Tip	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Straight Elevator Flat Tip - product/Mitex Straight Elevator Flat Tip/Mitex_straight_elevator_flat_tip.jpeg"}}]	14	43
1558	2023-07-05 14:18:19.671736+00	94333fdf-5206-449f-8073-de1cb8a510c0	Mitex Ball Burnisher	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Ball Burnisher - product/Mitex Ball Burnisher/Mitex_ball_burnisher_1.jpeg"}}, {"added": {"name": "product image", "object": "Mitex Ball Burnisher - product/Mitex Ball Burnisher/Mitex_ball_burnisher_2.jpeg"}}]	14	43
1559	2023-07-05 14:19:13.729806+00	a0175062-7d89-4b03-afec-19114a6fc351	Mitex Carver Hollen Back	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Carver Hollen Back - product/Mitex Carver Hollen Back/Mitex_carver_hollen_back.jpeg"}}]	14	43
1560	2023-07-05 14:19:59.298035+00	d75eb98c-7eb4-4415-ad1d-8db45f61046e	Mitex Conical Burnisher	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Conical Burnisher - product/Mitex Conical Burnisher/Mitex_conical_burnisher.jpeg"}}]	14	43
1561	2023-07-05 14:20:43.011629+00	ca4d268e-fae8-4b0b-8af0-267f57676729	Mitex Plastic Instrument	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Plastic Instrument - product/Mitex Plastic Instrument/Mitex_plastic_filling.jpeg"}}]	14	43
1562	2023-07-05 14:22:17.631531+00	0f1ed33e-bd0b-4cc3-974c-965f31b6ed7f	Mitex Hand Blade	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Hand Blade - product/Mitex Hand Blade/Mitex_hand_blade_1.jpeg"}}, {"added": {"name": "product image", "object": "Mitex Hand Blade - product/Mitex Hand Blade/Mitex_hand_blade_2.jpeg"}}]	14	43
1563	2023-07-05 14:22:56.281771+00	61	Pluggers	1	[{"added": {}}]	18	43
1564	2023-07-05 14:23:36.311331+00	7e5c9b22-e4a0-40e2-9b3e-f7cf95c66f19	Mitex Plugger	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Plugger - product/Mitex Plugger/Mitex_plugger.jpeg"}}]	14	43
1565	2023-07-05 14:24:47.098806+00	62	Putty Cut	1	[{"added": {}}]	18	43
1566	2023-07-05 14:25:37.781341+00	b905c42e-ccb3-43ef-83d3-dd13e8e9e7c5	Mitex Putty Cut	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Putty Cut - product/Mitex Putty Cut/Mitex_putty_cut_impression.jpeg"}}]	14	43
1567	2023-07-05 14:26:35.105857+00	88983a7c-3802-40bf-b4d4-3ba94ae9a8a0	Mitex Cement Spatula	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Cement Spatula - product/Mitex Cement Spatula/Mitex_cement_spatula.jpeg"}}]	14	43
1568	2023-07-05 14:27:48.943422+00	fd9f4617-8630-4094-9d99-66eaaf7f60c9	Mitex Curette	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Curette - product/Mitex Curette/Mitex_curette.jpeg"}}]	14	43
1569	2023-07-05 14:28:58.914978+00	d0c3db45-e5c0-4b98-aebe-4761ae6806da	Mitex Bone File	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Bone File - product/Mitex Bone File/Mitex_bone_file.jpeg"}}]	14	43
1570	2023-07-05 14:29:30.916205+00	63	Trays	1	[{"added": {}}]	18	43
1571	2023-07-05 14:30:23.124371+00	aee5b759-7d6d-4d5c-82c7-0c50c2bc522e	Mitex Tray Kit 6 Pcs	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Tray Kit 6 Pcs - product/Mitex Tray Kit 6 Pcs/Mitex_tray_kit_6_pcs_1.jpeg"}}, {"added": {"name": "product image", "object": "Mitex Tray Kit 6 Pcs - product/Mitex Tray Kit 6 Pcs/Mitex_tray_kit_6_pcs_2.jpeg"}}]	14	43
1572	2023-07-05 15:03:13.355721+00	1b452c9f-26cc-4345-955a-21db1a6728b3	Mitex Wax Carver Large	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Wax Carver Large - product/Mitex Wax Carver Large/Mitex_wax_carver_large.jpeg"}}]	14	43
1573	2023-07-05 15:04:48.965959+00	abce7c74-c4c0-4cf6-b031-369bb38b2b0c	Mitex Wax Knife	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex Wax Knife - product/Mitex Wax Knife/Mitex_wax_knife_colored_1.jpeg"}}, {"added": {"name": "product image", "object": "Mitex Wax Knife - product/Mitex Wax Knife/Mitex_wax_knife_colored_2.jpeg"}}, {"added": {"name": "product image", "object": "Mitex Wax Knife - product/Mitex Wax Knife/Mitex_wax_knife.jpeg"}}, {"added": {"name": "product item", "object": "Mitex Wax Knife Dark Brown"}}, {"added": {"name": "product item", "object": "Mitex Wax Knife Light Brown"}}, {"added": {"name": "product item", "object": "Mitex Wax Knife red"}}]	14	43
1574	2023-07-06 13:59:57.893605+00	11	Mitex High Quality	1	[{"added": {}}]	13	43
1575	2023-07-06 14:02:13.240514+00	9e5d7dfd-ff33-48ca-aa97-a993fb3ad17c	Mitex High Quality Cow Horn Forceps	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex High Quality Cow Horn Forceps - product/Mitex High Quality Cow Horn Forceps/Mitex_HQ_cow_horn_forceps_1.jpeg"}}]	14	43
1576	2023-07-06 14:03:49.850884+00	4bacc283-de45-4523-95d4-9720939abf8b	Mitex High Quality Cow Horn Gold Plated Forceps	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex High Quality Cow Horn Gold Plated Forceps - product/Mitex High Quality Cow Horn Gold Plated Forceps/Mitex_HQ_cow_horn_forceps_gold_plated_1.jpeg"}}]	14	43
1577	2023-07-06 14:05:32.762129+00	4bacc283-de45-4523-95d4-9720939abf8b	Mitex High Quality Cow Horn Gold Plated Forceps	2	[{"added": {"name": "product image", "object": "Mitex High Quality Cow Horn Gold Plated Forceps - product/Mitex High Quality Cow Horn Gold Plated Forceps/Mitex_HQ_cow_horn_forceps_gold_plated_2.jpeg"}}, {"added": {"name": "product image", "object": "Mitex High Quality Cow Horn Gold Plated Forceps - product/Mitex High Quality Cow Horn Gold Plated Forceps/Mitex_HQ_cow_horn_forceps_gold_plated_3.jpeg"}}, {"added": {"name": "product image", "object": "Mitex High Quality Cow Horn Gold Plated Forceps - product/Mitex High Quality Cow Horn Gold Plated Forceps/Mitex_HQ_cow_horn_foreceps_designs.jpeg"}}]	14	43
1578	2023-07-06 14:06:55.458926+00	6d746af6-cb08-4c52-9e58-32e1416eadb9	Mitex High Quality Lower 8 Gold Forceps	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex High Quality Lower 8 Gold Forceps - product/Mitex High Quality Lower 8 Gold Forceps/Mitex_HQ_lower_8_forceps_gold_plated_kit.jpeg"}}]	14	43
1659	2023-10-29 12:24:12.98704+00	99d70557-4de3-4af0-8f05-706050bb2637	A-Led	2	[{"changed": {"fields": ["Weight"]}}]	14	43
1579	2023-07-06 14:08:55.945314+00	c043e60e-06f7-40ec-9cda-e102b3e006aa	Mitex High Quality Remaining  Roots Gold plated Forceps	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex High Quality Remaining  Roots Gold plated Forceps - product/Mitex High Quality Remaining  Roots Gold plated Forceps/Mitex_HQ_remaining_root_YgywyeU.jpeg"}}, {"added": {"name": "product image", "object": "Mitex High Quality Remaining  Roots Gold plated Forceps - product/Mitex High Quality Remaining  Roots Gold plated Forceps/Mitex_HQ_remaining_root_dl5ieGZ.jpeg"}}, {"added": {"name": "product image", "object": "Mitex High Quality Remaining  Roots Gold plated Forceps - product/Mitex High Quality Remaining  Roots Gold plated Forceps/Mitex_HQ_remaining_root_48PF8iT.jpeg"}}]	14	43
1580	2023-07-06 14:11:21.215133+00	895cae1e-a3ff-4666-b966-57f54236b93c	Mitex High Quality Gold Composite Kit	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex High Quality Gold Composite Kit - product/Mitex High Quality Gold Composite Kit/Mitex_HQ_Gold_Composite_kit__1.jpeg"}}, {"added": {"name": "product image", "object": "Mitex High Quality Gold Composite Kit - product/Mitex High Quality Gold Composite Kit/Mitex_HQ_Gold_Composite_kit__2.jpeg"}}, {"added": {"name": "product image", "object": "Mitex High Quality Gold Composite Kit - product/Mitex High Quality Gold Composite Kit/Mitex_HQ_Gold_Composite_kit__3.jpeg"}}]	14	43
1581	2023-07-06 14:12:30.077376+00	95b6e6a4-432c-4095-ac81-96d3ae64cbee	Mitex High Quality LM Composite kit	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex High Quality LM Composite kit - product/Mitex High Quality LM Composite kit/Mitex_HQ_LM_Composite_kit__1.jpeg"}}, {"added": {"name": "product image", "object": "Mitex High Quality LM Composite kit - product/Mitex High Quality LM Composite kit/Mitex_HQ_LM_Composite_kit__2.jpeg"}}, {"added": {"name": "product image", "object": "Mitex High Quality LM Composite kit - product/Mitex High Quality LM Composite kit/Mitex_HQ_LM_Composite_kit__3.jpeg"}}]	14	43
1582	2023-07-06 14:14:29.256187+00	6b325af2-2631-4b57-9c04-939d79f9f5d4	Mitex High Quality Plastic Filling Applicator	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex High Quality Plastic Filling Applicator - product/Mitex High Quality Plastic Filling Applicator/Mitex_HQ_Plastic_filling_applicator.jpeg"}}]	14	43
1583	2023-07-06 14:15:56.658192+00	30e1fd1c-877e-48f3-8f88-dc4b6d947faf	Mitex High Quality Tiflon Plastic Applicator	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex High Quality Tiflon Plastic Applicator - product/Mitex High Quality Tiflon Plastic Applicator/Mitex_HQ_plastic_filling_applicato_29nZZ7E.jpeg"}}, {"added": {"name": "product image", "object": "Mitex High Quality Tiflon Plastic Applicator - product/Mitex High Quality Tiflon Plastic Applicator/Mitex_HQ_plastic_filling_applicato_tME8BNd.jpeg"}}, {"added": {"name": "product image", "object": "Mitex High Quality Tiflon Plastic Applicator - product/Mitex High Quality Tiflon Plastic Applicator/Mitex_HQ_plastic_filling_applicato_CEyU0iV.jpeg"}}]	14	43
1584	2023-07-06 14:18:00.941943+00	74ba3489-c669-4867-9935-672db7a3fcfa	Mitex High Quality Titanium Composite Kit	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex High Quality Titanium Composite Kit - product/Mitex High Quality Titanium Composite Kit/Mitex_HQ_Titanium_Composite_kit__1.jpeg"}}, {"added": {"name": "product image", "object": "Mitex High Quality Titanium Composite Kit - product/Mitex High Quality Titanium Composite Kit/Mitex_HQ_Titanium_Composite_kit__2.jpeg"}}, {"added": {"name": "product image", "object": "Mitex High Quality Titanium Composite Kit - product/Mitex High Quality Titanium Composite Kit/Mitex_HQ_Titanium_Composite_kit__3.jpeg"}}]	14	43
1585	2023-07-06 14:21:16.200014+00	4d4b566a-7f2f-4cb4-9f4b-0efe78711b37	Mitex High Quality Tofflemire Elliot	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex High Quality Tofflemire Elliot - product/Mitex High Quality Tofflemire Elliot/Mitex_HQ_tofflemire_elliot.jpeg"}}]	14	43
1586	2023-07-06 14:23:23.523984+00	575378cf-827d-4cc9-b6f9-4a26a0f047a1	Mitex High Quality Excavator Spoon	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex High Quality Excavator Spoon - product/Mitex High Quality Excavator Spoon/Mitex_HQ_excavator_spoon.jpeg"}}]	14	43
1587	2023-07-06 14:24:46.008768+00	7b5d9ddc-62da-4f60-8ed9-bf24bfbb70ad	Mitex High Quality Mirror	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex High Quality Mirror - product/Mitex High Quality Mirror/Mitex_HQ_mirror.jpeg"}}]	14	43
1588	2023-07-06 14:25:38.358525+00	a03d6be6-7279-451e-b8b9-c0e5c61c23d2	Mitex High Quality Gold Plated Probe	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex High Quality Gold Plated Probe - product/Mitex High Quality Gold Plated Probe/Mitex_HQ_probe_gold_plated.jpeg"}}]	14	43
1589	2023-07-06 14:26:26.52147+00	19f82948-49f5-4b6d-9def-d4b9fc472569	Mitex High Quality Probe	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex High Quality Probe - product/Mitex High Quality Probe/Mitex_HQ_probe.jpeg"}}]	14	43
1590	2023-07-06 14:28:11.936012+00	64	Root Tweezer	1	[{"added": {}}]	18	43
1591	2023-07-06 14:29:35.311405+00	4d6abc91-2140-4b4a-b8d6-4ae81916981e	Mitex High Quality Root Tweezer Diamond Tip	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex High Quality Root Tweezer Diamond Tip - product/Mitex High Quality Root Tweezer Diamond Tip/Mitex_HQ_root_tweezer_diamond_tip.jpeg"}}]	14	43
1592	2023-07-11 08:17:10.620249+00	078f8bb3-f4f2-4366-aa51-53cae0c9b49c	i-Scan Imaging Plate (size 1)	2	[{"changed": {"fields": ["Description"]}}]	14	43
1593	2023-07-11 08:41:59.57324+00	0156529b-593c-4576-89e2-182b0e917839	i-Sensor size 1	2	[{"changed": {"fields": ["Stock"]}}]	14	43
1594	2023-07-11 08:42:46.400356+00	02ffb0de-2d99-46a5-86ab-26493f8528bc	PT-A	2	[{"changed": {"fields": ["Stock"]}}]	14	43
1595	2023-07-12 08:39:57.025682+00	1	About Us	2	[{"changed": {"fields": ["About image"]}}]	9	43
1596	2023-07-13 08:29:37.115199+00	2	home/home-swiper/engin-akyurt-WQ5fGfFHGZ0-unsplash_1_1.jpeg	2	[{"changed": {"fields": ["Mobile view media"]}}]	46	43
1597	2023-07-13 08:30:06.20226+00	4	home/home-swiper/resize-01.jpg	2	[{"changed": {"fields": ["Mobile view media"]}}]	46	43
1598	2023-07-13 08:30:43.846415+00	1	home/home-swiper/kmc_mobile.jpeg	2	[{"changed": {"fields": ["Media"]}}]	46	43
1599	2023-07-13 08:31:23.616329+00	1	home/home-swiper/resize-01_TCUvyq9.jpg	2	[{"changed": {"fields": ["Media", "Mobile view media"]}}]	46	43
1600	2023-07-14 17:24:41.850636+00	042d2ad5-c4db-4dda-9b20-c9edd306b227	Endo 1	2	[{"changed": {"fields": ["Description"]}}]	14	43
1601	2023-07-14 17:27:13.805534+00	1	home/home-swiper/Untitled-1_1_NsAF6Hi.mp4	2	[{"changed": {"fields": ["Media"]}}]	46	43
1602	2023-07-14 17:27:39.832493+00	1	home/home-swiper/Untitled-1_1_XqJZIWY.mp4	2	[{"changed": {"fields": ["Media"]}}]	46	43
1603	2023-07-14 17:27:57.851628+00	4	home/home-swiper/v951-wan-bb-10-e_Converted_Recovered-03.jpg	2	[{"changed": {"fields": ["Media"]}}]	46	43
1604	2023-07-14 17:28:32.83748+00	1	home/home-swiper/Untitled-1_1_AEhldxI.mp4	2	[{"changed": {"fields": ["Media"]}}]	46	43
1605	2023-08-05 08:26:38.879713+00	65	Advanced Surgery	1	[{"added": {}}]	18	43
1606	2023-08-05 08:28:33.38392+00	3d121bc6-7c33-4c65-bc72-7c04955c2054	Bone Rongeur	1	[{"added": {}}, {"added": {"name": "product image", "object": "Bone Rongeur - product/Bone Rongeur/Mitex_HQ_bone_rongeur_forceps.jpeg"}}]	14	43
1607	2023-08-05 08:30:39.713131+00	b30d23ba-e3e1-4200-83e7-ef28cc6d4396	Mitex High Quality Bone Curette	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex High Quality Bone Curette - product/Mitex High Quality Bone Curette/Mitex_HQ_bone_curette_.jpeg"}}]	14	43
1608	2023-08-05 08:31:50.692083+00	3d121bc6-7c33-4c65-bc72-7c04955c2054	Mitex High Quality Bone Rongeur Forceps	2	[{"changed": {"fields": ["Title", "Description"]}}]	14	43
1609	2023-08-05 08:33:41.078232+00	c7d518c1-4eeb-4f27-b5f7-363e99b6b4e1	Mitex High Quality Minnesota Retractor	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex High Quality Minnesota Retractor - product/Mitex High Quality Minnesota Retractor/Mitex_HQ_minnesota_retractor.jpeg"}}]	14	43
1610	2023-08-05 08:35:43.979128+00	1bac82fa-09fc-4380-bb67-c1bf1527b2de	Mitex High Quality Osteotome Kit 6 Pcs	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex High Quality Osteotome Kit 6 Pcs - product/Mitex High Quality Osteotome Kit 6 Pcs/Mitex_HQ_osteotome_kit_6_pcs.jpeg"}}]	14	43
1611	2023-08-05 08:38:10.883202+00	3e5d56a9-bebe-49db-8260-b34c40fc00dd	Mitex High Quality Sugar Man	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex High Quality Sugar Man - product/Mitex High Quality Sugar Man/Mitex_HQ_sugar_man_1.jpeg"}}, {"added": {"name": "product image", "object": "Mitex High Quality Sugar Man - product/Mitex High Quality Sugar Man/Mitex_HQ_sugar_man_2.jpeg"}}]	14	43
1612	2023-08-05 08:39:33.826996+00	00a43ab5-5193-4327-9503-52fcd5e42fd4	Mitex High Quality Bone Caliber Type 1	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex High Quality Bone Caliber Type 1 - product/Mitex High Quality Bone Caliber Type 1/Mitex_high_quality_bone_caliber_1.jpeg"}}]	14	43
1613	2023-08-05 08:40:47.778474+00	5a78157b-e53c-4bf8-bd39-53a1a7e0afab	Mitex High Quality Bone Caliber Type 2	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex High Quality Bone Caliber Type 2 - product/Mitex High Quality Bone Caliber Type 2/Mitex_high_quality_bone_caliber_2.jpeg"}}]	14	43
1614	2023-08-05 08:42:12.474566+00	2db70914-086f-41d7-8479-395e950b2c4a	Mitex High Quality Bone Caliber Type 3	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex High Quality Bone Caliber Type 3 - product/Mitex High Quality Bone Caliber Type 3/Mitex_high_quality_bone_caliber_3.jpeg"}}]	14	43
1615	2023-08-05 08:45:41.735733+00	dc0c5748-79b0-4ccd-a887-17992973ec44	Mitex High Quality Bone Caliber Type 4	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex High Quality Bone Caliber Type 4 - product/Mitex High Quality Bone Caliber Type 4/Mitex_high_quality_bone_caliber_4.jpeg"}}]	14	43
1616	2023-08-21 09:57:41.505653+00	2	Mitex High Quality Bone Caliber Type 1	1	[{"added": {}}]	54	1
1617	2023-08-21 09:57:47.997143+00	3	i-Sensor size 1	1	[{"added": {}}]	54	1
1618	2023-08-21 09:59:35.065999+00	4	Endo 1	1	[{"added": {}}]	54	1
1619	2023-08-21 09:59:41.838351+00	5	Led-F	1	[{"added": {}}]	54	1
1620	2023-08-21 11:07:41.160893+00	11	Devices	2	[{"changed": {"fields": ["Image", "Category image"]}}]	19	1
1621	2023-08-21 11:08:43.694673+00	11	Devices	2	[{"changed": {"fields": ["Display ordering"]}}]	19	1
1622	2023-08-21 11:10:18.620205+00	13	Tools	2	[{"changed": {"fields": ["Image", "Category image", "Display ordering"]}}]	19	1
1623	2023-08-21 11:12:44.990608+00	13	Tools	2	[{"changed": {"fields": ["Category image"]}}]	19	1
1624	2023-08-22 09:06:37.1065+00	00a43ab5-5193-4327-9503-52fcd5e42fd4	Mitex High Quality Bone Caliber Type 1	2	[{"changed": {"fields": ["Sale price"]}}]	14	31
1625	2023-09-11 11:33:04.577618+00	4	KMC30C	2	[{"changed": {"fields": ["Expire date"]}}]	40	43
1626	2023-09-11 11:33:48.691308+00	244	User: Ahmed Khattab - Order Code: f8fd1b892023 - Date: 2023-09-11 - Register ID: None	2	[{"changed": {"fields": ["Order status"]}}]	43	43
1627	2023-09-16 12:31:37.944955+00	1abfdaf7-1236-40ec-b357-38b5560024e5	Innovations in Dental Materials and Equipment: Revolutionizing Oral Care  Introduction	1	[{"added": {}}]	37	31
1628	2023-09-16 12:36:45.351779+00	1abfdaf7-1236-40ec-b357-38b5560024e5	Innovations in Dental Materials and Equipment: Revolutionizing Oral Care  Introduction	2	[{"changed": {"fields": ["Article image"]}}]	37	31
1629	2023-09-16 12:52:06.932485+00	3	Devserver 2 - NueroEsptalia El sheikh zayed	3		10	31
1630	2023-09-16 12:52:06.939629+00	2	Devserver 1 - NueroEsptalia El motamyz	3		10	31
1631	2023-09-19 09:47:20.998547+00	4	Points Terms & Conditions	3		51	43
1632	2023-09-19 09:55:18.055241+00	1	Happy Customers - 50000	2	[{"changed": {"fields": ["Number"]}}]	11	43
1633	2023-09-23 08:58:22.354113+00	1	About Us	2	[{"changed": {"fields": ["About image"]}}]	9	43
1634	2023-09-23 09:44:02.225165+00	1	About Us	2	[{"changed": {"fields": ["About image"]}}]	9	43
1635	2023-10-03 07:16:30.400293+00	1	home/home-swiper/Untitled-1_1_AEhldxI.mp4	2	[{"changed": {"fields": ["Mobile view media"]}}]	46	43
1636	2023-10-03 07:16:37.539875+00	1	HomeDetails object (1)	2	[{"changed": {"fields": ["About us title"]}}]	49	43
1637	2023-10-03 07:20:45.426142+00	1	HomeDetails object (1)	2	[{"changed": {"fields": ["About us 2 image"]}}]	49	43
1638	2023-10-14 09:17:11.185138+00	3	Cilincs & Centers - 70	2	[]	11	43
1639	2023-10-14 09:17:50.383507+00	3	Cilincs & Centers - 100	2	[{"changed": {"fields": ["Number"]}}]	11	43
1640	2023-10-14 09:18:48.87092+00	2	Brands - 7	2	[{"changed": {"fields": ["Number"]}}]	11	43
1641	2023-10-14 09:18:58.649737+00	2	Brands - 8	2	[{"changed": {"fields": ["Number"]}}]	11	43
1642	2023-10-14 09:59:33.244967+00	10	Diode Laser Application in Dentistry	1	[{"added": {}}]	36	31
1643	2023-10-16 11:09:00.452487+00	11	Master the advanced skills in dentistry — Piezo Surgery	1	[{"added": {}}]	36	43
1644	2023-10-16 11:17:03.176199+00	12	Diode Laser Application in Dentistry	1	[{"added": {}}]	36	43
1645	2023-10-16 11:19:09.697557+00	13	Diode Laser Application in Dentistry	1	[{"added": {}}]	36	43
1646	2023-10-16 11:21:35.077397+00	14	Diode Laser Application in Dentistry	1	[{"added": {}}]	36	43
1647	2023-10-16 11:32:29.982303+00	15	Master the advanced skills in dentistry — Piezo Surgery	1	[{"added": {}}]	36	43
1648	2023-10-16 11:36:25.497401+00	16	Master the Scaler and Ultra Sonic in Endodontics	1	[{"added": {}}]	36	43
1649	2023-10-16 11:39:01.756373+00	17	Activation systems in Root canal irrigation	1	[{"added": {}}]	36	43
1650	2023-10-16 12:01:28.917493+00	8	𝐖𝐨𝐨𝐝𝐩𝐞𝐜𝐤𝐞𝐫 𝐎𝐧𝐥𝐢𝐧𝐞 𝐂𝐨𝐮𝐫𝐬𝐞𝐬 𝐍𝐨.202	3		36	43
1651	2023-10-17 09:51:12.455244+00	1	Zone1	1	[{"added": {}}]	55	43
1652	2023-10-17 09:51:17.406136+00	1	Cairo	1	[{"added": {}}]	56	43
1653	2023-10-29 12:13:17.584506+00	7fa6d156-b18c-4504-8b81-ee856bc3ce85	King Kong (Japanese Bearings)	2	[{"changed": {"fields": ["Weight"]}}]	14	43
1654	2023-10-29 12:13:30.440367+00	8e712346-8c8b-4b20-bcb1-03ccfc0e00ea	King Kong (German Bearings)	2	[{"changed": {"fields": ["Weight"]}}]	14	43
1655	2023-10-29 12:14:22.800909+00	9d8c389c-2813-4dd5-9116-1ea2697fbf34	Anteaus	2	[{"changed": {"fields": ["Weight"]}}]	14	43
1656	2023-10-29 12:21:07.746356+00	cc28815e-7b14-44d4-b000-dacc6cf3b933	RTA	2	[{"changed": {"fields": ["Weight"]}}]	14	43
1661	2023-10-29 12:25:22.789623+00	72b805d2-12f5-4606-887d-c97175e7abba	U600	2	[{"changed": {"fields": ["Weight"]}}]	14	43
1662	2023-10-29 12:25:53.276124+00	02ffb0de-2d99-46a5-86ab-26493f8528bc	PT-A	2	[{"changed": {"fields": ["Weight"]}}]	14	43
1663	2023-10-29 12:26:37.892053+00	bbb315fa-ceae-49c2-bb7c-65a4b0520566	U6/U600 Handpiece	2	[{"changed": {"fields": ["Weight"]}}]	14	43
1664	2023-10-29 12:27:26.133171+00	07368b73-d58c-4720-8933-f8429a60da3d	Apex Blue	2	[{"changed": {"fields": ["Weight"]}}]	14	43
1665	2023-10-29 12:27:54.38681+00	ebf165fd-f821-4212-83b2-d9497392c468	Apex Gold Plus III	2	[{"changed": {"fields": ["Weight"]}}]	14	43
1666	2023-10-29 12:28:25.608191+00	f20d3aff-3d7a-4a65-8b57-ad141a13b32b	Endo Gold	2	[{"changed": {"fields": ["Weight"]}}]	14	43
1667	2023-10-29 12:28:57.124562+00	b2333832-738a-453c-9127-b81699bb7d81	Endo Pace	2	[{"changed": {"fields": ["Weight"]}}]	14	43
1668	2023-10-29 12:29:28.577674+00	e2bfb134-5da4-452a-a70d-d55cccb82bd0	MotoPex	2	[{"changed": {"fields": ["Weight"]}}]	14	43
1669	2023-10-29 12:29:56.77343+00	683de5a1-7d57-4438-b63f-aedf8e03d376	Ai-Motor	2	[{"changed": {"fields": ["Weight"]}}]	14	43
1670	2023-10-29 12:30:22.15098+00	f6e5b415-7430-4be7-85d8-440efb9f63cd	LX16 Plus	2	[{"changed": {"fields": ["Weight"]}}]	14	43
1671	2023-10-29 12:32:16.754431+00	0156529b-593c-4576-89e2-182b0e917839	i-Sensor size 1	2	[{"changed": {"fields": ["Weight"]}}]	14	43
1672	2023-10-29 12:33:08.925716+00	e0335233-1dce-48e0-85a6-0bfe2dc25026	i-Sensor size 2	2	[{"changed": {"fields": ["Weight"]}}]	14	43
1673	2023-10-29 12:33:46.369536+00	d8df3e11-b619-47ba-847b-34ae8b29c9f5	i-Scan	2	[{"changed": {"fields": ["Weight"]}}]	14	43
1674	2023-10-29 12:34:17.925987+00	f14db6d8-06c0-4306-9920-23cb02d6ba4d	Free Scan	2	[{"changed": {"fields": ["Weight"]}}]	14	43
1675	2023-10-29 12:34:57.962932+00	c7db66a0-5928-41fb-9ee4-05109395f38d	Q3	2	[{"changed": {"fields": ["Weight"]}}]	14	43
1676	2023-10-29 12:35:14.774585+00	bc5e478f-44b3-473a-a4d0-b8e0e11e0518	Q7	2	[{"changed": {"fields": ["Weight"]}}]	14	43
1677	2023-10-29 12:36:04.773844+00	fb94bb02-a98a-4726-838a-8b3be1ef585d	E-Com +	3		14	43
1678	2023-10-30 11:21:06.407271+00	1	Zone1	2	[{"changed": {"fields": ["Cod above cod limit"]}}]	55	43
1679	2023-10-31 08:26:06.33236+00	18	test	1	[{"added": {}}]	36	31
1680	2023-10-31 10:33:35.246434+00	1	HomeDetails object (1)	2	[{"changed": {"fields": ["About us 1 image"]}}]	49	43
1681	2023-11-01 10:12:55.955538+00	0156529b-593c-4576-89e2-182b0e917839	i-Sensor size 1	2	[{"changed": {"fields": ["Price"]}}]	14	43
1682	2023-11-01 10:13:06.926806+00	042d2ad5-c4db-4dda-9b20-c9edd306b227	Endo 1	2	[{"changed": {"fields": ["Price"]}}]	14	43
1683	2023-11-01 10:13:17.710818+00	07368b73-d58c-4720-8933-f8429a60da3d	Apex Blue	2	[{"changed": {"fields": ["Price"]}}]	14	43
1684	2023-11-01 10:13:35.924764+00	683de5a1-7d57-4438-b63f-aedf8e03d376	Ai-Motor	2	[{"changed": {"fields": ["Price"]}}]	14	43
1685	2023-11-01 10:13:56.633202+00	0156529b-593c-4576-89e2-182b0e917839	i-Sensor size 1	2	[{"changed": {"fields": ["Stock"]}}]	14	43
1686	2023-11-01 10:14:13.355358+00	07368b73-d58c-4720-8933-f8429a60da3d	Apex Blue	2	[]	14	43
1687	2023-11-01 10:14:28.130873+00	042d2ad5-c4db-4dda-9b20-c9edd306b227	Endo 1	2	[{"changed": {"fields": ["Stock"]}}]	14	43
1688	2023-11-01 10:35:00.695603+00	1	Zone1	2	[{"added": {"name": "zone city", "object": "new cairo"}}, {"added": {"name": "zone city", "object": "El Rehab"}}, {"added": {"name": "zone city", "object": "Madinty"}}, {"added": {"name": "zone city", "object": "Giza"}}, {"added": {"name": "zone city", "object": "6th of october"}}, {"added": {"name": "zone city", "object": "el shiekh zayed"}}, {"added": {"name": "zone city", "object": "El Obour"}}]	55	43
1689	2023-11-01 10:38:38.824995+00	2	Zone 2	1	[{"added": {}}, {"added": {"name": "zone city", "object": "Port Said"}}, {"added": {"name": "zone city", "object": "Isamailia"}}, {"added": {"name": "zone city", "object": "Suez"}}, {"added": {"name": "zone city", "object": "Sokhna"}}, {"added": {"name": "zone city", "object": "Helwan"}}, {"added": {"name": "zone city", "object": "El Saff"}}, {"added": {"name": "zone city", "object": "15th of May"}}, {"added": {"name": "zone city", "object": "10th of Ramadan"}}, {"added": {"name": "zone city", "object": "Sakkara"}}, {"added": {"name": "zone city", "object": "El Shrouk"}}, {"added": {"name": "zone city", "object": "Badr city"}}, {"added": {"name": "zone city", "object": "Alexandria"}}]	55	43
1690	2023-11-01 10:40:53.314378+00	3	Zone 3	1	[{"added": {}}, {"added": {"name": "zone city", "object": "Beheira"}}, {"added": {"name": "zone city", "object": "Damietta"}}, {"added": {"name": "zone city", "object": "Dakahlia"}}, {"added": {"name": "zone city", "object": "Kafr el Shiekh"}}, {"added": {"name": "zone city", "object": "Gharbia"}}, {"added": {"name": "zone city", "object": "Menoufia"}}, {"added": {"name": "zone city", "object": "Sharkia"}}, {"added": {"name": "zone city", "object": "Qalioubia"}}, {"added": {"name": "zone city", "object": "Damanhour"}}, {"added": {"name": "zone city", "object": "Mansoura"}}]	55	43
1691	2023-11-01 10:46:39.172969+00	4	Zone 4	1	[{"added": {}}, {"added": {"name": "zone city", "object": "Fayoum"}}, {"added": {"name": "zone city", "object": "Bani Sweif"}}, {"added": {"name": "zone city", "object": "Menia"}}, {"added": {"name": "zone city", "object": "Assiout"}}, {"added": {"name": "zone city", "object": "sohag"}}]	55	43
1692	2023-11-01 10:50:08.068631+00	5	Zone 5	1	[{"added": {}}, {"added": {"name": "zone city", "object": "El Wadi el Gedid"}}, {"added": {"name": "zone city", "object": "El Bahreya Oasis"}}, {"added": {"name": "zone city", "object": "El Salloum"}}, {"added": {"name": "zone city", "object": "Halayeb"}}, {"added": {"name": "zone city", "object": "Shalatin"}}, {"added": {"name": "zone city", "object": "Saint Katherin"}}, {"added": {"name": "zone city", "object": "Siwa Oasis"}}, {"added": {"name": "zone city", "object": "North Sinai"}}, {"added": {"name": "zone city", "object": "Marsa Alam"}}, {"added": {"name": "zone city", "object": "Arish"}}, {"added": {"name": "zone city", "object": "Abu Sembel"}}, {"added": {"name": "zone city", "object": "Gouna"}}, {"added": {"name": "zone city", "object": "Safaga"}}, {"added": {"name": "zone city", "object": "Red Sea"}}, {"added": {"name": "zone city", "object": "kosseir"}}, {"added": {"name": "zone city", "object": "Taba"}}, {"added": {"name": "zone city", "object": "Oyoun Moussa"}}, {"added": {"name": "zone city", "object": "Rass sedr"}}]	55	43
1693	2023-11-01 10:52:01.927187+00	5	Zone 6	2	[{"changed": {"fields": ["Name", "First 1 kg price", "Additional 1 kg price"]}}, {"added": {"name": "zone city", "object": "Sharm el sheikh"}}, {"added": {"name": "zone city", "object": "Hurghada"}}, {"added": {"name": "zone city", "object": "South sinai"}}, {"added": {"name": "zone city", "object": "North Coast"}}, {"added": {"name": "zone city", "object": "Marsa matrouh"}}, {"added": {"name": "zone city", "object": "Dahab"}}, {"added": {"name": "zone city", "object": "el Tour"}}, {"added": {"name": "zone city", "object": "Nweiba'a"}}]	55	43
1694	2023-11-01 10:52:38.925362+00	6	Zone 5	1	[{"added": {}}, {"added": {"name": "zone city", "object": "Qena"}}, {"added": {"name": "zone city", "object": "Luxor"}}, {"added": {"name": "zone city", "object": "Aswan"}}]	55	43
1695	2023-12-17 11:19:10.749086+00	1	Testimonial object (1)	2	[{"changed": {"fields": ["Image"]}}]	10	1
1836	2024-01-03 13:11:14.312182+00	0f1ed33e-bd0b-4cc3-974c-965f31b6ed7f	Mitex Hand Blade	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1696	2023-12-18 10:27:07.243916+00	1abfdaf7-1236-40ec-b357-38b5560024e5	Innovations in Dental Materials and Equipment: Revolutionizing Oral Care  Introduction	3		37	43
1697	2023-12-18 10:27:07.261368+00	3ce51006-6393-4fa8-8684-a4ce6520151c	A naturalistic study of brushing patterns using powered toothbrushes.	3		37	43
1698	2023-12-18 10:27:07.262466+00	1a1b66e9-d558-478d-8a6b-b0a9885a995f	How to brush your teeth properly	3		37	43
1699	2023-12-19 14:27:38.521312+00	1	Zone1	2	[{"changed": {"fields": ["Additional 1 kg price"]}}]	55	43
1700	2023-12-19 14:28:15.873373+00	1	Zone1	2	[{"changed": {"fields": ["Additional 1 kg price", "Cod up to cod limit"]}}]	55	43
1701	2023-12-20 10:40:13.655983+00	0156529b-593c-4576-89e2-182b0e917839	i-Sensor size 1	2	[]	14	43
1702	2023-12-20 10:40:32.888506+00	02ffb0de-2d99-46a5-86ab-26493f8528bc	PT-A	2	[{"changed": {"fields": ["Price"]}}]	14	43
1703	2023-12-20 10:40:58.184628+00	042d2ad5-c4db-4dda-9b20-c9edd306b227	Endo 1	2	[{"changed": {"fields": ["Price"]}}]	14	43
1704	2023-12-20 10:41:28.852185+00	07368b73-d58c-4720-8933-f8429a60da3d	Apex Blue	2	[{"changed": {"fields": ["Price"]}}]	14	43
1705	2023-12-20 10:41:55.604708+00	078f8bb3-f4f2-4366-aa51-53cae0c9b49c	i-Scan Imaging Plate (size 1)	2	[{"changed": {"fields": ["Price"]}}]	14	43
1706	2023-12-20 10:42:23.295345+00	09803e02-7108-4e70-8937-860d25b7ddbb	I-Led Max	2	[{"changed": {"fields": ["Price"]}}]	14	43
1707	2023-12-20 10:42:47.810548+00	0d2091b5-aecc-4346-9230-8692fb4a6258	Led-F	2	[{"changed": {"fields": ["Price"]}}]	14	43
1708	2023-12-20 10:43:29.829715+00	16d48b04-9eaf-41f3-9744-c3d914c54647	Ai-Ray	3		14	43
1709	2023-12-20 10:44:28.066135+00	40f43a51-d312-43f0-acb9-731ca9ccde4b	Fi-G & Fi-P Obturation System	2	[{"changed": {"fields": ["Price"]}}]	14	43
1710	2023-12-20 10:45:10.258585+00	50a58335-0faa-4b1b-b69a-d9474a049041	P-led	2	[{"changed": {"fields": ["Price"]}}]	14	43
1711	2023-12-20 10:45:42.797454+00	56c5891f-a8bb-4458-a273-046414edacd3	X Cure	3		14	43
1712	2023-12-20 10:46:23.752888+00	683de5a1-7d57-4438-b63f-aedf8e03d376	Ai-Motor	2	[{"changed": {"fields": ["Price"]}}]	14	43
1713	2023-12-20 10:47:05.424351+00	72b805d2-12f5-4606-887d-c97175e7abba	U600	2	[{"changed": {"fields": ["Price"]}}]	14	43
1714	2023-12-20 10:47:28.460243+00	75524dad-fd4a-48f5-b248-c7e50c722679	E-Led	2	[{"changed": {"fields": ["Price"]}}]	14	43
1715	2023-12-20 10:48:28.199573+00	7ef30076-4b44-47ec-8609-28d7adfc0a6f	Led-D	2	[{"changed": {"fields": ["Price"]}}]	14	43
1716	2023-12-20 10:49:03.42213+00	7fa6d156-b18c-4504-8b81-ee856bc3ce85	King Kong (Japanese Bearings)	2	[]	14	43
1717	2023-12-20 10:49:30.31129+00	fe087a36-5f72-4ccc-9cdc-8b56b6ccb7d2	i-Scan imaging plates (Size 2)	2	[{"changed": {"fields": ["Price"]}}]	14	43
1718	2023-12-20 10:49:56.333359+00	8e712346-8c8b-4b20-bcb1-03ccfc0e00ea	King Kong (German Bearings)	2	[]	14	43
1719	2023-12-20 10:50:20.157532+00	91b542e1-d2a7-404a-ae04-34316e9b4100	Ai-Motor-Yoshi	2	[{"changed": {"fields": ["Price"]}}]	14	43
1720	2023-12-20 10:51:16.938496+00	91b542e1-d2a7-404a-ae04-34316e9b4100	Ai-Motor-Yoshi	2	[{"changed": {"fields": ["Description"]}}]	14	43
1721	2023-12-20 10:52:00.854132+00	99d70557-4de3-4af0-8f05-706050bb2637	A-Led	2	[{"changed": {"fields": ["Price"]}}]	14	43
1722	2023-12-20 10:52:17.257157+00	9d8c389c-2813-4dd5-9116-1ea2697fbf34	Anteaus	2	[]	14	43
1723	2023-12-20 10:52:42.694034+00	a1c4f9f3-72af-4b94-b110-b57f743bba20	I-Led	2	[{"changed": {"fields": ["Price"]}}]	14	43
1724	2023-12-20 10:54:40.925068+00	b41dfafc-d47a-40a5-998f-ebd9024b64c7	U6	2	[{"changed": {"fields": ["Price"]}}]	14	43
1725	2023-12-20 10:55:01.397286+00	b46b63c5-96c7-4493-90b7-59ea14077264	K-Led	2	[{"changed": {"fields": ["Price"]}}]	14	43
1726	2023-12-20 10:55:28.843782+00	bbb315fa-ceae-49c2-bb7c-65a4b0520566	U6/U600 Handpiece	2	[{"changed": {"fields": ["Price"]}}]	14	43
1727	2023-12-20 10:55:49.217439+00	bc5e478f-44b3-473a-a4d0-b8e0e11e0518	Q7	2	[{"changed": {"fields": ["Price"]}}]	14	43
1728	2023-12-20 10:56:23.486763+00	c7db66a0-5928-41fb-9ee4-05109395f38d	Q3	2	[{"changed": {"fields": ["Price"]}}]	14	43
1729	2023-12-20 10:56:43.075656+00	cc28815e-7b14-44d4-b000-dacc6cf3b933	RTA	2	[{"changed": {"fields": ["Price"]}}]	14	43
1730	2023-12-20 10:57:13.943476+00	d8df3e11-b619-47ba-847b-34ae8b29c9f5	i-Scan	2	[{"changed": {"fields": ["Price"]}}]	14	43
1731	2023-12-20 10:57:44.693817+00	e0335233-1dce-48e0-85a6-0bfe2dc25026	i-Sensor size 2	2	[{"changed": {"fields": ["Price"]}}]	14	43
1732	2023-12-20 10:58:12.459164+00	e2bfb134-5da4-452a-a70d-d55cccb82bd0	MotoPex	2	[]	14	43
1733	2023-12-20 10:58:49.302843+00	ebf165fd-f821-4212-83b2-d9497392c468	Apex Gold Plus III	2	[{"changed": {"fields": ["Price"]}}]	14	43
1734	2023-12-20 10:59:23.748625+00	f14db6d8-06c0-4306-9920-23cb02d6ba4d	Free Scan	2	[{"changed": {"fields": ["Price"]}}]	14	43
1735	2023-12-20 10:59:44.759865+00	f7651615-6ff3-412c-b3c4-9659e17fcff9	B cure	2	[{"changed": {"fields": ["Price"]}}]	14	43
1736	2023-12-20 11:00:01.177031+00	f6e5b415-7430-4be7-85d8-440efb9f63cd	LX16 Plus	2	[{"changed": {"fields": ["Price"]}}]	14	43
1737	2023-12-20 11:00:29.913777+00	f20d3aff-3d7a-4a65-8b57-ad141a13b32b	Endo Gold	2	[{"changed": {"fields": ["Price"]}}]	14	43
1738	2023-12-20 11:01:03.179682+00	e4893263-5574-472b-a061-07c182be01d2	i-scan barrier cover	2	[{"changed": {"fields": ["Price"]}}]	14	43
1739	2023-12-20 11:02:13.738029+00	ff132071-d6fd-461a-86ab-20efbc9e7e7e	Led Handpiece	2	[{"changed": {"fields": ["Price"]}}]	14	43
1740	2023-12-20 11:02:28.173283+00	fe087a36-5f72-4ccc-9cdc-8b56b6ccb7d2	i-Scan imaging plates (Size 2)	2	[]	14	43
1741	2023-12-20 11:03:30.375524+00	b2333832-738a-453c-9127-b81699bb7d81	Endo Pace	2	[{"changed": {"fields": ["Price"]}}]	14	43
1742	2023-12-20 11:04:01.101208+00	c3777f9f-1619-4e62-a661-ab9bd614babf	Apex Gold Plus V	2	[{"changed": {"fields": ["Price"]}}]	14	43
1743	2023-12-20 11:06:09.99482+00	374ccb87-97cc-4742-81ee-2ad2e3d74c25	i-Scan Cardboard	2	[{"changed": {"fields": ["Price"]}}]	14	43
1744	2023-12-20 11:48:43.543559+00	149cda77-2911-400d-afb5-b5d534bcbcaf	Ai-Pex	1	[{"added": {}}, {"added": {"name": "product image", "object": "Ai-Pex - product/Ai-Pex/Ai-Pex_10.jpeg"}}, {"added": {"name": "product image", "object": "Ai-Pex - product/Ai-Pex/Ai-Pex_2.png"}}, {"added": {"name": "product image", "object": "Ai-Pex - product/Ai-Pex/Ai-Pex_11.png"}}]	14	43
1745	2023-12-20 12:03:56.421363+00	24f6776a-c780-417c-814e-0c670cb81dd0	Mini Ray	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mini Ray - product/Mini Ray/Mini_Ray_1.png"}}, {"added": {"name": "product image", "object": "Mini Ray - product/Mini Ray/Mini_Ray_3.png"}}, {"added": {"name": "product image", "object": "Mini Ray - product/Mini Ray/Mini_Ray_15.jpeg"}}]	14	43
1746	2023-12-20 12:08:05.515285+00	149cda77-2911-400d-afb5-b5d534bcbcaf	Ai-Pex	2	[{"changed": {"fields": ["Weight"]}}]	14	43
1747	2023-12-20 12:10:28.517165+00	0156529b-593c-4576-89e2-182b0e917839	i-Sensor size 1	2	[{"changed": {"fields": ["Stock"]}}]	14	43
1748	2023-12-20 12:10:57.437977+00	02ffb0de-2d99-46a5-86ab-26493f8528bc	PT-A	2	[{"changed": {"fields": ["Stock"]}}]	14	43
1749	2023-12-20 13:57:49.920839+00	0156529b-593c-4576-89e2-182b0e917839	i-Sensor size 1	2	[{"changed": {"fields": ["Price"]}}]	14	43
1750	2023-12-24 10:53:16.090414+00	04869af6-805c-4af5-8326-e5f577ec2500	Gemini Pre Initiated Tip 5mm	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1751	2023-12-24 10:55:30.656305+00	10c5f969-8707-4049-a1c8-6c02bd0b08c0	UltraPak Cord	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1752	2023-12-24 10:56:31.468515+00	12a5c096-dc52-4ecd-8620-159f8cb4aa5c	Fischer's Ultrapak Packers (Small)	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1753	2023-12-24 10:58:13.858791+00	13913c18-fc7b-4e93-982c-cc55446f4b83	PermaShade LC Light Cure Veneer Cement A2	2	[{"changed": {"fields": ["Weight"]}}]	14	43
1754	2023-12-24 10:59:15.05079+00	141f2ff2-d24b-4722-b023-7ed84a1211ca	EndoEze Irrigator tips	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1755	2023-12-24 11:01:37.758996+00	2a18e671-def8-444e-8f90-c24eda870b41	UltraDent File-Eze	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1756	2023-12-24 11:04:41.982364+00	3e47d619-a402-437f-88c4-6a6a21543682	Prop Gard Ref	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1757	2023-12-24 11:08:37.908169+00	630aed6f-ecb6-49e4-8450-0f993720c5cc	U Veneer Template Ref.	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1758	2023-12-24 11:09:28.155197+00	6627b142-84c1-44be-9e29-e75847261117	Fischer's Ultrapak Packers (Regular)	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1759	2023-12-24 11:10:30.898868+00	6a1c7ec4-1a7f-4593-b60f-6e965ee119d3	Opalustre	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1760	2023-12-24 11:11:13.141847+00	5ccb6ae9-608e-4753-9396-771e53bf5d84	PermaFlo A1	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1761	2023-12-24 11:13:44.842555+00	71ee3003-0bb0-4daa-b25b-a14480c6d316	Diamond Polish Mint	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1762	2023-12-24 11:14:20.927949+00	79b5c943-441a-4074-a96b-644702352d36	Porcelain Etch	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1763	2023-12-24 11:15:21.240091+00	7a1bd1f9-e7f1-45c3-b98e-7f805379083d	Sable seek	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1764	2023-12-24 11:17:02.050927+00	807fd9ca-1c85-4f23-941f-29035abf6251	Black Mini Brush Tips	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1765	2023-12-24 11:21:36.313664+00	a74c0f43-2e65-455a-ad26-cdcd5ecbd9e5	Gemini Uninitiated Tip 7mm	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1766	2023-12-24 11:23:41.404779+00	b28a8793-e9d0-4347-b694-07ad41f51069	UltraPak E Cord	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1767	2023-12-24 11:24:16.907852+00	b517116b-f0a7-4f16-a6eb-ab4dbb1b65b0	Opal cup finishing	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1768	2023-12-24 11:26:34.500244+00	bc06f090-897b-43d1-93d1-57a8399352bb	Skini Syringe	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1769	2023-12-24 11:33:15.756886+00	c3f223f2-923d-41fd-aad8-a7edd3ce1e35	PermaFlo Pink	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1770	2023-12-24 11:33:48.306667+00	c65297ad-8096-4a04-81ac-90a5f7c5c9d1	Opalescence Pocket Tray	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1771	2023-12-24 11:34:30.299161+00	cc3e2e5e-9442-472a-9aa2-74ad27476c41	Umbrella	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1772	2023-12-24 11:35:29.329493+00	ccb4ee02-42fa-409f-baf4-1f41890934c5	Opal cup bristle	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1773	2023-12-24 11:37:50.655227+00	ef8ed366-4704-490a-9231-bbca77053143	PermaFlo A2	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1774	2023-12-24 11:48:41.669713+00	b28a8793-e9d0-4347-b694-07ad41f51069	UltraPak E Cord	2	[{"changed": {"fields": ["Stock"]}}]	14	43
1775	2023-12-24 12:01:37.174855+00	e1699a31-8ba1-4ebc-87df-cc471b5fb1a0	Silane	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1776	2023-12-24 12:05:54.738616+00	08e0a9ea-7a5a-47fc-9bc9-836db8dcf639	Sof-Tray Classic sheets 2ml pack	2	[{"changed": {"fields": ["Price", "Stock"]}}]	14	43
1777	2023-12-24 12:06:34.812966+00	50556a75-a48a-42fa-9027-a9ae100e6e0c	Sof-Tray Classic Sheets 1.5 ml Pack	2	[{"changed": {"fields": ["Price"]}}]	14	43
1778	2023-12-24 12:07:04.945269+00	c33c46ec-7ddc-446d-863b-040a2569befc	Sof-Tray classic sheets 1 ml pack	2	[{"changed": {"fields": ["Price", "Stock"]}}]	14	43
1779	2023-12-24 12:08:57.70095+00	b0b8a4f7-2d77-4818-82d5-f62641287601	Omni Matrix kit/48	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1780	2023-12-24 12:09:45.056546+00	7faa53b5-945e-403c-a25d-077e7df0626f	Jiffy Polisher cups 20pk	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1781	2023-12-24 12:12:06.879086+00	a2257d03-395c-4261-9224-9f91ddf7c77d	Consepsis	2	[{"changed": {"fields": ["Stock"]}}]	14	43
1782	2023-12-24 12:14:57.182885+00	96b49989-4417-41ef-b92c-56c3fb4ff5c8	Omni Matrix	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1783	2023-12-24 12:15:57.730638+00	58ca7c3c-7822-47ca-b73e-62fea5e6e07e	Viscostat	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1784	2023-12-24 12:16:47.817294+00	dfe5c687-7434-4aad-8b7d-7d292eb5d245	UltraCal XS	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1785	2023-12-24 12:17:31.908856+00	701d34ca-e395-4512-a5da-e1396c4cd558	Mixing Tip	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1786	2023-12-24 12:18:11.197609+00	f118bce2-7f85-46cf-8f77-a24568b2069b	Viscostat Clear	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1787	2023-12-24 13:35:18.371909+00	ced2f1cb-bc7a-4c6f-840f-852a5eceab8a	Permaflo A3.5	1	[{"added": {}}, {"added": {"name": "product image", "object": "Permaflo A3.5 - product/Permaflo A3.5/PermaFlo_A3.5_Syringe.jpeg"}}]	14	43
1788	2023-12-24 13:39:58.056874+00	f4ced12d-f056-40a7-a21e-58eb17dfbc75	UltraEz	1	[{"added": {}}, {"added": {"name": "product image", "object": "UltraEz - product/UltraEz/UltraEZ_syringe_JHnIPAh.png"}}, {"added": {"name": "product image", "object": "UltraEz - product/UltraEz/UltraEZ_Single_Kit.jpeg"}}, {"added": {"name": "product image", "object": "UltraEz - product/UltraEz/UltraEZ_group_product_image_51fNru9.png"}}]	14	43
1789	2023-12-24 13:40:46.552701+00	f4ced12d-f056-40a7-a21e-58eb17dfbc75	UltraEz	2	[]	14	43
1790	2023-12-24 13:41:08.312944+00	f4ced12d-f056-40a7-a21e-58eb17dfbc75	UltraEz	2	[{"changed": {"fields": ["Sub branch"]}}]	14	43
1791	2023-12-24 13:44:41.025664+00	a2257d03-395c-4261-9224-9f91ddf7c77d	Consepsis	3		14	43
1792	2023-12-24 13:46:48.818376+00	78b3c4fe-4161-4202-86b5-036fb690bab6	Consepsis Scrub Syr	1	[{"added": {}}, {"added": {"name": "product image", "object": "Consepsis Scrub Syr - product/Consepsis Scrub Syr/Consepsis_Scrub_Syringe.png"}}, {"added": {"name": "product image", "object": "Consepsis Scrub Syr - product/Consepsis Scrub Syr/Consepsis_Scrub_Syringe_No_Tip.png"}}]	14	43
1837	2024-01-03 13:12:21.696126+00	1b452c9f-26cc-4345-955a-21db1a6728b3	Mitex Wax Carver Large	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1838	2024-01-03 13:12:51.218815+00	201ca028-e09e-43c7-927a-50c664a1febc	Mitex Sickle Scaler	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1839	2024-01-03 13:13:12.091757+00	27fc5ba6-9f46-45e7-8d69-7f44265d089c	Mitex Tray	2	[{"changed": {"fields": ["Stock"]}}]	14	43
1793	2023-12-26 12:42:11.581257+00	55f09b5a-8290-4c30-b853-8c3d656e9f29	Sectional matrix large band extended 40 pk	1	[{"added": {}}, {"added": {"name": "product image", "object": "Sectional matrix large band extended 40 pk - product/Sectional matrix large band extended 40 pk/Omni-Matrix_Sectional_Large_Extended_G9TUvLo.jpeg"}}, {"added": {"name": "product image", "object": "Sectional matrix large band extended 40 pk - product/Sectional matrix large band extended 40 pk/Omni-Matrix_Sectional_Large_Extended_FENjWVH.jpeg"}}, {"added": {"name": "product image", "object": "Sectional matrix large band extended 40 pk - product/Sectional matrix large band extended 40 pk/Omni-Matrix_Sectional_Large_Extended_Band_1.png"}}]	14	43
1794	2023-12-26 12:46:46.942202+00	1c1b7a27-3989-4a20-85af-8e2029445f16	Sectional Matrix regular extended refill 40 pk	1	[{"added": {}}, {"added": {"name": "product image", "object": "Sectional Matrix regular extended refill 40 pk - product/Sectional Matrix regular extended refill 40 pk/Omni-Matrix_Sectional_Regular_Ext_iFqyBIC.png"}}, {"added": {"name": "product image", "object": "Sectional Matrix regular extended refill 40 pk - product/Sectional Matrix regular extended refill 40 pk/Omni-Matrix_Sectional_Regular_Ex_FCzd15B.jpeg"}}, {"added": {"name": "product image", "object": "Sectional Matrix regular extended refill 40 pk - product/Sectional Matrix regular extended refill 40 pk/Omni-Matrix_Sectional_Regular_Ex_2L3XVJt.jpeg"}}]	14	43
1795	2023-12-26 12:51:38.786537+00	6602eb8d-4194-485b-ae81-734a2288289c	Inspiral brush tips	1	[{"added": {}}, {"added": {"name": "product image", "object": "Inspiral brush tips - product/Inspiral brush tips/Inspiral_Brush_Tip_3D_image_with_reflection.png"}}, {"added": {"name": "product image", "object": "Inspiral brush tips - product/Inspiral brush tips/Inspiral_Brush_Tip.png"}}]	14	43
1796	2023-12-26 12:54:54.626171+00	a1f38695-6cc3-4c9a-9a4b-e4a920077ca2	Consepsis scrub inispense refill	1	[{"added": {}}, {"added": {"name": "product image", "object": "Consepsis scrub inispense refill - product/Consepsis scrub inispense refill/Consepsis_IndiSpense_Syringe.jpeg"}}]	14	43
1797	2023-12-26 12:58:46.818237+00	7a3980bd-ea41-4dfa-8d88-abd78ed5e0c5	Omni Matrix anatomical sectional clamp	1	[{"added": {}}, {"added": {"name": "product image", "object": "Omni Matrix anatomical sectional clamp - product/Omni Matrix anatomical sectional clamp/Omni-Matrix_Sectional_Clamp.png"}}]	14	43
1798	2023-12-26 13:13:35.04338+00	6	home/home-swiper/NEW_Arrivals.png	1	[{"added": {}}]	46	43
1799	2023-12-26 13:14:03.763981+00	6	home/home-swiper/NEW_Arrivals.png	3		46	43
1800	2023-12-26 13:15:28.86442+00	7	home/home-swiper/Untitled_design.png	1	[{"added": {}}]	46	43
1801	2023-12-26 13:15:55.308701+00	7	home/home-swiper/Untitled_design.png	3		46	43
1802	2023-12-26 13:30:20.923084+00	8	home/home-swiper/NEW_ARRIVALS_1.png	1	[{"added": {}}]	46	43
1803	2023-12-26 13:30:54.977605+00	8	home/home-swiper/NEW_ARRIVALS_1.png	3		46	43
1804	2023-12-26 13:31:38.043099+00	9	home/home-swiper/NEW_ARRIVALS_2.png	1	[{"added": {}}]	46	43
1805	2023-12-27 10:45:57.534722+00	9	home/home-swiper/NEW_ARRIVALS_3.png	2	[{"changed": {"fields": ["Media"]}}]	46	43
1806	2023-12-27 10:53:36.489436+00	9	home/home-swiper/NEW_ARRIVALS_4.png	2	[{"changed": {"fields": ["Media"]}}]	46	43
1807	2023-12-27 11:20:24.878453+00	4	home/home-swiper/NEW_ARRIVALS_5.png	2	[{"changed": {"fields": ["Media"]}}]	46	43
1808	2023-12-28 11:09:05.352417+00	10	home/home-swiper/Untitled-2.png	1	[{"added": {}}]	46	43
1809	2023-12-28 11:10:42.955963+00	9	home/home-swiper/Untitled_design_1.png	2	[{"changed": {"fields": ["Media"]}}]	46	43
1810	2023-12-28 11:13:19.750572+00	4	home/home-swiper/Untitled_design_2.png	2	[{"changed": {"fields": ["Media"]}}]	46	43
1811	2023-12-28 11:14:41.483309+00	4	home/home-swiper/Untitled_design_3.png	2	[{"changed": {"fields": ["Media"]}}]	46	43
1812	2023-12-28 11:15:36.264976+00	4	home/home-swiper/Untitled_design_3.png	3		46	43
1813	2023-12-28 11:15:51.629175+00	2	home/home-swiper/engin-akyurt-WQ5fGfFHGZ0-unsplash_1_1.jpeg	3		46	43
1814	2023-12-28 11:16:11.306584+00	9	home/home-swiper/Untitled_design_1.png	3		46	43
1815	2023-12-28 11:16:24.813083+00	10	home/home-swiper/Untitled-2.png	3		46	43
1816	2023-12-28 11:16:36.677736+00	11	home/home-swiper/Untitled_design_3_RpXMJ5f.png	1	[{"added": {}}]	46	43
1817	2023-12-28 11:16:50.524106+00	12	home/home-swiper/Untitled_design_1_O4xGfeV.png	1	[{"added": {}}]	46	43
1818	2023-12-28 11:20:48.191616+00	12	home/home-swiper/Untitled_design_4.png	2	[{"changed": {"fields": ["Media"]}}]	46	43
1819	2023-12-28 11:21:39.611203+00	12	home/home-swiper/Untitled_design_5.png	2	[{"changed": {"fields": ["Media"]}}]	46	43
1820	2024-01-01 13:45:44.157978+00	12	home/home-swiper/NEW_ARRIVALS_6.png	2	[{"changed": {"fields": ["Media"]}}]	46	43
1821	2024-01-01 13:46:56.693035+00	12	home/home-swiper/NEW_ARRIVALS_7.png	2	[{"changed": {"fields": ["Media"]}}]	46	43
1822	2024-01-01 13:48:15.896571+00	12	home/home-swiper/NEW_ARRIVALS_8.png	2	[{"changed": {"fields": ["Media"]}}]	46	43
1823	2024-01-01 13:49:37.426299+00	12	home/home-swiper/NEW_ARRIVALS_9.png	2	[{"changed": {"fields": ["Media"]}}]	46	43
1824	2024-01-01 15:53:35.889379+00	49	01279935727	3		21	43
1825	2024-01-03 11:10:50.027919+00	48167df7-8048-4dfa-99f5-95a9be38eeb9	White mac tips	1	[{"added": {}}, {"added": {"name": "product image", "object": "White mac tips - product/White mac tips/White_Mac_Tip.jpeg"}}]	14	43
1826	2024-01-03 11:15:35.310279+00	2994a972-217a-4130-9668-2029dfc503cd	Ultraez Tray	1	[{"added": {}}, {"added": {"name": "product image", "object": "Ultraez Tray - product/Ultraez Tray/UltraEZ_UltraFit_tray.png"}}]	14	43
1827	2024-01-03 11:21:03.981309+00	c94223f2-e770-4bfb-80ce-f34dbddaa289	Navi Tip 29g 21mm	1	[{"added": {}}, {"added": {"name": "product image", "object": "Navi Tip 29g 21mm - product/Navi Tip 29g 21mm/NaviTip_29_ga-21mm_light_yellow_3D_1.png"}}]	14	43
1828	2024-01-03 11:22:04.864473+00	f3ca3322-edfb-4097-b6a1-8cfb5134e87f	NaviTips 29gg 27mm	2	[{"changed": {"fields": ["Branch"]}}]	14	43
1829	2024-01-03 11:23:51.575326+00	25ff79c4-b491-469d-a028-2f351cfef310	Navi Tip 31 ga 27mm	1	[{"added": {}}, {"added": {"name": "product image", "object": "Navi Tip 31 ga 27mm - product/Navi Tip 31 ga 27mm/NaviTip_31_ga_Double_Sideport_Irrigator_green_27mm_tip.png"}}]	14	43
1830	2024-01-03 11:27:27.823567+00	ca660de4-289b-4ae6-b223-715293fbe867	Navi Tip Fx 25 mm	1	[{"added": {}}, {"added": {"name": "product image", "object": "Navi Tip Fx 25 mm - product/Navi Tip Fx 25 mm/NaviTip_FX_30_ga_Tip_25_mm.jpeg"}}]	14	43
1831	2024-01-03 11:30:47.141972+00	59d5bad2-1713-45a2-ac3b-12d9396742da	Navi Tip 30 ga 25mm	1	[{"added": {}}, {"added": {"name": "product image", "object": "Navi Tip 30 ga 25mm - product/Navi Tip 30 ga 25mm/NaviTip_Tip_30_ga-25mm_3D_1.png"}}]	14	43
1832	2024-01-03 13:09:13.164948+00	6db57dfd-0e24-4b46-a3b0-2a24d4c54c0e	Mitex Tweezer With Lock	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1833	2024-01-03 13:09:48.554542+00	09865735-20dd-4dac-8b4c-bca2db20ee22	Mitex Egg Burnisher	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1834	2024-01-03 13:10:17.608965+00	0c204162-1302-4b04-a189-517f1ad78561	Mitex Serrated Straight Elevator	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1835	2024-01-03 13:10:47.817914+00	0cfc9b1f-c44d-4e61-8e94-c40007f3016a	Mitex Crown Removal Automatic	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1840	2024-01-03 13:13:42.978491+00	52448f20-d6c7-4281-b1c2-831055256820	Mitex Probe	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1841	2024-01-03 13:15:02.033842+00	6958730d-712b-48de-b4eb-4c3276783913	Mitex Straight Elevator Flat Tip	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1842	2024-01-03 13:15:32.9897+00	6cd62507-9d16-4ecd-a49e-2cb1760ce9c7	Mitex Epxo Elevator	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1843	2024-01-03 13:16:28.876334+00	08100b85-8b18-4e30-9a0b-f82d9941f3a2	Mitex Tweezer Without Lock	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1844	2024-01-03 13:17:26.619207+00	799585f3-2e30-4f6c-9d3f-9f3fe914d8e6	Mitex Bone Caliber	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1845	2024-01-03 13:17:53.34577+00	7e5c9b22-e4a0-40e2-9b3e-f7cf95c66f19	Mitex Plugger	2	[{"changed": {"fields": ["Stock"]}}]	14	43
1846	2024-01-03 13:18:37.658662+00	836f1a60-1ecf-4ae1-91a0-2b804c7962ec	Mitex Straight elevator	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1847	2024-01-03 13:19:24.155771+00	88983a7c-3802-40bf-b4d4-3ba94ae9a8a0	Mitex Cement Spatula	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1848	2024-01-03 13:20:02.521621+00	91d14421-9142-4eab-a60c-ee247e91a152	Mitex Probe Straight Tip	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1849	2024-01-03 13:20:35.204999+00	94333fdf-5206-449f-8073-de1cb8a510c0	Mitex Ball Burnisher	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1850	2024-01-03 13:21:48.655305+00	a0175062-7d89-4b03-afec-19114a6fc351	Mitex Carver Hollen Back	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1851	2024-01-03 13:24:41.543112+00	abce7c74-c4c0-4cf6-b031-369bb38b2b0c	Mitex Wax Knife	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1852	2024-01-03 13:27:04.688984+00	aee5b759-7d6d-4d5c-82c7-0c50c2bc522e	Mitex Tray Kit 6 Pcs	2	[{"changed": {"fields": ["Stock"]}}]	14	43
1853	2024-01-03 13:28:48.72482+00	b2dd1b55-ea05-44f7-be9f-f718c935aaf2	Mitex Elevator Kit 8 Pcs	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1854	2024-01-03 13:29:15.742963+00	b905c42e-ccb3-43ef-83d3-dd13e8e9e7c5	Mitex Putty Cut	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1855	2024-01-03 13:32:06.81113+00	bc79c542-c968-44dd-a49e-c1ffe0717022	Mitex CAOH Applicator	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1856	2024-01-03 13:36:18.692226+00	be79edd2-7a90-4f91-9a4e-e77a34cbcebb	Mitex Excavator Spoon	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1857	2024-01-03 13:37:09.892765+00	c9750cc0-021b-42f5-915c-147747c93ce4	Mitex Elevator kit 3 Pcs	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1858	2024-01-03 13:37:42.278681+00	ca4d268e-fae8-4b0b-8af0-267f57676729	Mitex Plastic Instrument	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1859	2024-01-03 13:38:17.911026+00	cf494fe0-5968-48e3-85ea-72cde3f17953	Mitex Cryer Elevator	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1860	2024-01-03 13:41:03.265016+00	d0c3db45-e5c0-4b98-aebe-4761ae6806da	Mitex Bone File	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1861	2024-01-03 13:41:31.209785+00	cfcbfd80-8b58-4933-ad5e-e88af2037ce0	Mitex Mirror Hand	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1862	2024-01-03 13:41:52.365571+00	d1200e85-1411-4f0d-b9a1-7a8351464449	Mitex Periodontal Probe	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1863	2024-01-03 13:42:31.325074+00	d75eb98c-7eb4-4415-ad1d-8db45f61046e	Mitex Conical Burnisher	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1864	2024-01-03 13:42:56.962289+00	fd9f4617-8630-4094-9d99-66eaaf7f60c9	Mitex Curette	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1865	2024-01-03 13:44:26.251146+00	00a43ab5-5193-4327-9503-52fcd5e42fd4	Mitex High Quality Bone Caliber Type 1	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1866	2024-01-03 13:44:54.865528+00	19f82948-49f5-4b6d-9def-d4b9fc472569	Mitex High Quality Probe	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1867	2024-01-03 13:45:25.426676+00	1bac82fa-09fc-4380-bb67-c1bf1527b2de	Mitex High Quality Osteotome Kit 6 Pcs	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1868	2024-01-03 13:45:54.702906+00	2db70914-086f-41d7-8479-395e950b2c4a	Mitex High Quality Bone Caliber Type 3	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1869	2024-01-03 13:46:22.878885+00	30e1fd1c-877e-48f3-8f88-dc4b6d947faf	Mitex High Quality Tiflon Plastic Applicator	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1870	2024-01-03 13:46:42.327513+00	30e1fd1c-877e-48f3-8f88-dc4b6d947faf	Mitex High Quality Tiflon Plastic Applicator	2	[{"changed": {"fields": ["Stock"]}}]	14	43
1871	2024-01-03 13:47:16.462518+00	3d121bc6-7c33-4c65-bc72-7c04955c2054	Mitex High Quality Bone Rongeur Forceps	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1872	2024-01-03 13:47:44.207497+00	3e5d56a9-bebe-49db-8260-b34c40fc00dd	Mitex High Quality Sugar Man	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1873	2024-01-03 13:50:22.127865+00	9e5d7dfd-ff33-48ca-aa97-a993fb3ad17c	Mitex High Quality Cow Horn Forceps	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1874	2024-01-03 13:50:48.496091+00	4d4b566a-7f2f-4cb4-9f4b-0efe78711b37	Mitex High Quality Tofflemire Elliot	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1875	2024-01-03 13:51:18.602808+00	4d6abc91-2140-4b4a-b8d6-4ae81916981e	Mitex High Quality Root Tweezer Diamond Tip	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1876	2024-01-03 13:51:42.099676+00	575378cf-827d-4cc9-b6f9-4a26a0f047a1	Mitex High Quality Excavator Spoon	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1877	2024-01-03 13:52:19.715782+00	5a78157b-e53c-4bf8-bd39-53a1a7e0afab	Mitex High Quality Bone Caliber Type 2	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1878	2024-01-03 13:53:08.07414+00	dc0c5748-79b0-4ccd-a887-17992973ec44	Mitex High Quality Bone Caliber Type 4	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1879	2024-01-03 13:54:13.621239+00	6b325af2-2631-4b57-9c04-939d79f9f5d4	Mitex High Quality Plastic Filling Applicator	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1880	2024-01-03 13:54:39.60331+00	6d746af6-cb08-4c52-9e58-32e1416eadb9	Mitex High Quality Lower 8 Gold Forceps	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1881	2024-01-03 13:55:06.737378+00	74ba3489-c669-4867-9935-672db7a3fcfa	Mitex High Quality Titanium Composite Kit	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1882	2024-01-03 13:55:31.758295+00	7b5d9ddc-62da-4f60-8ed9-bf24bfbb70ad	Mitex High Quality Mirror	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1883	2024-01-03 13:55:57.558166+00	895cae1e-a3ff-4666-b966-57f54236b93c	Mitex High Quality Gold Composite Kit	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1884	2024-01-03 13:56:31.841629+00	95b6e6a4-432c-4095-ac81-96d3ae64cbee	Mitex High Quality LM Composite kit	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1885	2024-01-03 13:57:04.763079+00	9e5d7dfd-ff33-48ca-aa97-a993fb3ad17c	Mitex High Quality Cow Horn Forceps	2	[]	14	43
1886	2024-01-03 13:57:34.854566+00	4bacc283-de45-4523-95d4-9720939abf8b	Mitex High Quality Cow Horn Gold Plated Forceps	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
2014	2024-04-15 10:04:09.931721+00	630aed6f-ecb6-49e4-8450-0f993720c5cc	U Veneer Template Ref.	2	[]	14	43
1887	2024-01-03 13:58:16.204146+00	a03d6be6-7279-451e-b8b9-c0e5c61c23d2	Mitex High Quality Gold Plated Probe	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1888	2024-01-03 13:58:50.519707+00	b30d23ba-e3e1-4200-83e7-ef28cc6d4396	Mitex High Quality Bone Curette	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1889	2024-01-03 13:59:31.100898+00	c043e60e-06f7-40ec-9cda-e102b3e006aa	Mitex High Quality Remaining  Roots Gold plated Forceps	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1890	2024-01-03 14:00:05.012367+00	c7d518c1-4eeb-4f27-b5f7-363e99b6b4e1	Mitex High Quality Minnesota Retractor	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1891	2024-01-03 14:00:44.796577+00	2fb8b9d9-68bf-4036-884e-6c7be7e4ae8e	Dream Plastic Filling Instrument	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1892	2024-01-03 14:01:00.945978+00	2fce73dc-c0f5-4d1b-865d-d601602a422e	Dream Ball Burnisher	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1893	2024-01-03 14:01:21.983662+00	34f0e5cd-de60-40e0-87d9-8e96f4a8856a	Dream Root Fragment Forceps	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1894	2024-01-03 14:01:38.452879+00	36b6f8e1-1968-4d38-9055-5ae5d3eb9a64	Dream Wax Knife Small	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1895	2024-01-03 14:01:55.082832+00	37549217-7118-48bb-8365-178c19a61e68	Dream Tofflemire Retainer	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1896	2024-01-03 14:02:11.566217+00	43aed322-ae25-430f-b2ab-5ee9313ea10f	Dream Conical Carver	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1897	2024-01-03 14:02:28.187537+00	448cacdb-fd57-434f-89e0-35b8de702edf	Dream Luxator	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1898	2024-01-03 14:02:54.726211+00	4d8ec8e0-4091-417f-81a3-b9c0b87228cb	Dream Wax Knife Small	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1899	2024-01-03 14:03:21.562738+00	5fae3560-899c-425a-a3b5-7a99f5882325	Dream Straight Elevator	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1900	2024-01-03 14:03:45.697718+00	65e40683-fb89-4b6d-b0b7-fffa068fe0c7	Dream Hand Blade	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1901	2024-01-03 14:04:05.065242+00	6b8aef76-2a19-4766-80ed-479505270d75	Dream Wax Carver Small	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1902	2024-01-03 14:04:21.212298+00	7f5f16e9-e518-4c3a-8e2f-7f2dc5853ce9	Dream Sickle Scaler	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1903	2024-01-03 14:04:43.121454+00	80cf4b5a-0393-426a-a597-9aa6712e8e5a	Dream Wax Dropper	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1904	2024-01-03 14:05:07.205989+00	8c84019c-2d5a-45f9-8453-9bd75c545ef3	Dream Curette	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1905	2024-01-03 14:05:25.044449+00	8d4799c9-5254-4c43-9166-9289733397e1	Dream Spatula	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1906	2024-01-03 14:05:43.317134+00	937d4a67-0216-491f-a094-ce814a9e1d98	Dream Wax Knife	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1907	2024-01-03 14:06:05.537654+00	b3516012-b5b7-4ef9-a4ba-caea0c80d2a1	Dream Elevator kit 8 Pcs	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1908	2024-01-03 14:06:28.487+00	b472d3e4-e905-4d03-86d7-42670297e79f	Dream Periodontal Probe	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1909	2024-01-03 14:06:49.777119+00	b4d4a5a0-3bb9-4155-9372-e442e2622f80	Dream Condenser	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1910	2024-01-03 14:07:12.578296+00	b64830f0-41b4-4ef7-9d16-52d207ecb6cd	Dream Wax Carver large	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1911	2024-01-03 14:07:31.215538+00	b65b3293-8434-4a66-9333-0775b074d432	Dream Probe	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1912	2024-01-03 14:07:47.585134+00	baedc9b4-d471-4195-8772-af0e7afd36ff	Dream Amalgam Carrier	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1913	2024-01-03 14:08:15.87716+00	c0e2f3d9-71df-4a35-9503-b63a86b34cae	Dream Mirror Hand	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1914	2024-01-03 14:08:31.426888+00	d7c4a204-eb6b-4503-ac77-002f67200f9d	Dream conical Burnisher	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1915	2024-01-03 14:08:51.900601+00	d836fe46-0be4-4832-834b-e2577ab2b67b	Dream Carver Hollen Back	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1916	2024-01-03 14:09:10.602408+00	d97387f5-c4ce-4dda-a7c5-b9496c63e0e6	Dream Bone Caliber	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1917	2024-01-03 14:09:37.73284+00	e093e5f8-4513-49cc-b4f4-bb2996ec72e3	Dream Curved Root Fragment Forceps	2	[{"changed": {"fields": ["Weight", "Price", "Stock"]}}]	14	43
1918	2024-01-03 14:10:01.284867+00	f1d7d82f-e9d2-4125-b89e-24d85310ed66	Dream Serrated Straight Elevator	3		14	43
1919	2024-01-03 14:10:29.406828+00	f36f4386-7779-4a9b-9144-bba493af9478	Dream Cement Spatula	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1920	2024-01-03 14:10:54.621287+00	f4c8a3a7-1a45-41f2-8d95-61564a685232	Dream Tofflemire	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1921	2024-01-03 14:11:13.109661+00	f6033476-e780-4579-849e-79249898c646	Dream Elevator EPXO	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1922	2024-01-03 14:11:30.296694+00	fc8a0b53-e04e-425b-b937-15f9da139fb5	Dream Tweezer	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
1923	2024-01-03 14:12:09.972473+00	52c58aab-8ef0-41eb-801b-a9a8bc6bbf89	Dream CAOH Applicator Double End	2	[{"changed": {"fields": ["Title", "Weight", "Price"]}}]	14	43
1924	2024-03-26 12:40:27.664565+00	42	01098872271	3		21	1
1925	2024-03-26 12:41:23.902314+00	42	01098872271	3		21	1
1926	2024-03-26 12:42:03.561889+00	42	01098872273	2	[{"changed": {"fields": ["Phone"]}}]	21	1
1927	2024-03-26 12:43:19.709609+00	42	01098872273	2	[{"changed": {"fields": ["Name", "Email", "Is active"]}}]	21	1
1928	2024-03-26 15:03:38.203942+00	52	01098872271	3		21	1
1929	2024-03-26 15:28:47.658845+00	53	01098872271	3		21	1
1930	2024-03-26 15:36:01.291646+00	54	01098872271	3		21	1
1931	2024-04-08 02:05:26.03505+00	12	home/home-swiper/NEW_ARRIVALS_9.png	2	[]	46	43
1932	2024-04-08 02:05:31.603465+00	12	home/home-swiper/NEW_ARRIVALS_9.png	2	[]	46	43
1933	2024-04-08 02:07:18.698872+00	1	About Us	2	[]	9	43
1934	2024-04-08 02:07:36.109029+00	1	About Us	2	[]	9	43
1935	2024-04-08 02:11:48.618417+00	1	About Us	2	[]	9	43
1936	2024-04-08 02:53:17.521513+00	1	About Us	2	[]	9	43
1937	2024-04-08 10:00:15.660198+00	55	01098872274	2	[{"changed": {"fields": ["Phone"]}}]	21	1
1938	2024-04-08 10:00:34.418488+00	42	01098872273	3		21	1
1939	2024-04-08 10:00:34.421616+00	55	01098872274	3		21	1
1940	2024-04-08 10:01:39.193373+00	42	01098872273	3		21	1
1941	2024-04-08 10:01:39.197097+00	55	01098872274	3		21	1
1942	2024-04-08 10:05:29.571551+00	42	01098872273	3		21	1
1943	2024-04-08 12:00:28.689177+00	55	01098872274	3		21	1
1944	2024-04-08 12:00:55.900181+00	42	01098872273	3		21	1
1945	2024-04-08 12:32:46.604941+00	46	01028505910	3		21	43
1946	2024-04-08 12:36:00.528122+00	132	Youssef Shaker(01098872271)	3		38	43
1947	2024-04-08 21:25:07.013037+00	02ffb0de-2d99-46a5-86ab-26493f8528bc	PT-A	2	[{"changed": {"fields": ["Description", "Price"]}}, {"added": {"name": "product video url", "object": "PT-A - https://www.youtube.com/embed/FAxh2avGsxA"}}, {"added": {"name": "product video url", "object": "PT-A - https://www.youtube.com/embed/UgDbdZk9lKM"}}, {"added": {"name": "product video url", "object": "PT-A - https://www.youtube.com/embed/pQcsGLCFhrY"}}]	14	43
1948	2024-04-08 21:32:12.812871+00	042d2ad5-c4db-4dda-9b20-c9edd306b227	Endo 1	2	[{"changed": {"fields": ["Description", "Price"]}}]	14	43
1949	2024-04-08 21:33:27.420467+00	07368b73-d58c-4720-8933-f8429a60da3d	Apex Blue	2	[{"changed": {"fields": ["Price"]}}]	14	43
1950	2024-04-08 21:34:05.712458+00	078f8bb3-f4f2-4366-aa51-53cae0c9b49c	i-Scan Imaging Plate (size 1)	2	[{"changed": {"fields": ["Price"]}}]	14	43
1951	2024-04-08 21:36:30.476371+00	09803e02-7108-4e70-8937-860d25b7ddbb	I-Led Max	2	[{"changed": {"fields": ["Price"]}}, {"added": {"name": "product video url", "object": "I-Led Max - https://www.youtube.com/embed/3JOdw4tYSLg"}}, {"added": {"name": "product video url", "object": "I-Led Max - https://www.youtube.com/embed/x-92PjbQQj4"}}, {"added": {"name": "product video url", "object": "I-Led Max - https://www.youtube.com/embed/yBCSA9aDgZs"}}]	14	43
1952	2024-04-08 21:38:33.366642+00	0d2091b5-aecc-4346-9230-8692fb4a6258	Led-F	2	[{"changed": {"fields": ["Description", "Price"]}}]	14	43
1953	2024-04-08 21:40:54.627921+00	149cda77-2911-400d-afb5-b5d534bcbcaf	Ai-Pex	2	[{"changed": {"fields": ["Description", "Price"]}}, {"added": {"name": "product video url", "object": "Ai-Pex - https://www.youtube.com/embed/JSQnLkHsErk"}}, {"added": {"name": "product video url", "object": "Ai-Pex - https://www.youtube.com/embed/-v26SQ8aY0U"}}, {"added": {"name": "product video url", "object": "Ai-Pex - https://www.youtube.com/embed/eau9enQRRno"}}]	14	43
1954	2024-04-08 21:43:23.922386+00	24f6776a-c780-417c-814e-0c670cb81dd0	Mini Ray	2	[{"changed": {"fields": ["Description", "Price"]}}, {"added": {"name": "product video url", "object": "Mini Ray - https://www.youtube.com/embed/MHUD-MQ7Sww"}}, {"added": {"name": "product video url", "object": "Mini Ray - https://www.youtube.com/embed/CLR5UAVNKAo"}}, {"added": {"name": "product video url", "object": "Mini Ray - https://www.youtube.com/embed/A5s7hZF--UA"}}]	14	43
1955	2024-04-08 21:43:48.234936+00	374ccb87-97cc-4742-81ee-2ad2e3d74c25	i-Scan Cardboard	2	[{"changed": {"fields": ["Price"]}}]	14	43
1956	2024-04-08 21:47:10.976376+00	40f43a51-d312-43f0-acb9-731ca9ccde4b	Fi-G & Fi-P Obturation System	2	[{"changed": {"fields": ["Description", "Price"]}}, {"added": {"name": "product video url", "object": "Fi-G & Fi-P Obturation System - https://www.youtube.com/embed/x9TEY-s1J5s"}}, {"added": {"name": "product video url", "object": "Fi-G & Fi-P Obturation System - https://www.youtube.com/embed/gr5jguPGhFk"}}, {"added": {"name": "product video url", "object": "Fi-G & Fi-P Obturation System - https://www.youtube.com/embed/NKmARFunK5U"}}]	14	43
1957	2024-04-08 21:48:20.328344+00	50a58335-0faa-4b1b-b69a-d9474a049041	P-led	2	[{"changed": {"fields": ["Price"]}}]	14	43
1958	2024-04-08 21:50:43.833137+00	683de5a1-7d57-4438-b63f-aedf8e03d376	Ai-Motor	2	[{"changed": {"fields": ["Description", "Price"]}}, {"added": {"name": "product video url", "object": "Ai-Motor - https://www.youtube.com/embed/S9wl-09gLuA"}}, {"added": {"name": "product video url", "object": "Ai-Motor - https://www.youtube.com/embed/auxhHTECaag"}}, {"added": {"name": "product video url", "object": "Ai-Motor - https://www.youtube.com/embed/9aK4kB17rAM"}}]	14	43
1959	2024-04-08 21:52:20.266956+00	72b805d2-12f5-4606-887d-c97175e7abba	U600	2	[{"changed": {"fields": ["Description", "Price"]}}, {"added": {"name": "product video url", "object": "U600 - https://www.youtube.com/embed/C_l9WZ1WeBo"}}]	14	43
1960	2024-04-08 21:54:07.909775+00	75524dad-fd4a-48f5-b248-c7e50c722679	E-Led	2	[{"changed": {"fields": ["Description", "Price"]}}]	14	43
1961	2024-04-08 21:56:01.814561+00	7ef30076-4b44-47ec-8609-28d7adfc0a6f	Led-D	2	[{"changed": {"fields": ["Description", "Price"]}}]	14	43
1962	2024-04-08 23:12:25.534394+00	7fa6d156-b18c-4504-8b81-ee856bc3ce85	King Kong (Japanese Bearings)	2	[{"changed": {"fields": ["Price"]}}]	14	43
1963	2024-04-08 23:12:43.870211+00	8e712346-8c8b-4b20-bcb1-03ccfc0e00ea	King Kong (German Bearings)	2	[{"changed": {"fields": ["Price"]}}]	14	43
1964	2024-04-08 23:15:48.132121+00	91b542e1-d2a7-404a-ae04-34316e9b4100	Ai-Motor-Yoshi	2	[{"changed": {"fields": ["Description", "Price"]}}, {"added": {"name": "product video url", "object": "Ai-Motor-Yoshi - https://www.youtube.com/embed/-1jtu5fkw_4"}}, {"added": {"name": "product video url", "object": "Ai-Motor-Yoshi - https://www.youtube.com/embed/FAGLfBOeMgI"}}, {"added": {"name": "product video url", "object": "Ai-Motor-Yoshi - https://www.youtube.com/embed/HnfCVC0dXZU"}}, {"added": {"name": "product video url", "object": "Ai-Motor-Yoshi - https://www.youtube.com/embed/7_khK1TdaFo"}}, {"added": {"name": "product video url", "object": "Ai-Motor-Yoshi - https://www.youtube.com/embed/WX0H4Lrd8u4"}}, {"added": {"name": "product video url", "object": "Ai-Motor-Yoshi - https://www.youtube.com/embed/CK6rc-LjFM4"}}, {"added": {"name": "product video url", "object": "Ai-Motor-Yoshi - https://www.youtube.com/embed/OiIwlOeob3Y"}}]	14	43
1965	2024-04-08 23:17:13.718113+00	99d70557-4de3-4af0-8f05-706050bb2637	A-Led	2	[{"changed": {"fields": ["Description", "Price"]}}]	14	43
1966	2024-04-08 23:17:28.382449+00	9d8c389c-2813-4dd5-9116-1ea2697fbf34	Anteaus	2	[{"changed": {"fields": ["Price"]}}]	14	43
1967	2024-04-08 23:19:33.384235+00	a1c4f9f3-72af-4b94-b110-b57f743bba20	I-Led	2	[{"changed": {"fields": ["Price"]}}]	14	43
1968	2024-04-08 23:21:07.143702+00	a1c4f9f3-72af-4b94-b110-b57f743bba20	I-Led	2	[{"changed": {"fields": ["Description"]}}, {"added": {"name": "product video url", "object": "I-Led - https://www.youtube.com/embed/6o6Z9IFu00s"}}, {"added": {"name": "product video url", "object": "I-Led - https://www.youtube.com/embed/cuX0KihsP6o"}}, {"added": {"name": "product video url", "object": "I-Led - https://www.youtube.com/embed/rxi_YjXit5w"}}]	14	43
1969	2024-04-08 23:21:36.853613+00	b2333832-738a-453c-9127-b81699bb7d81	Endo Pace	3		14	43
1970	2024-04-08 23:23:10.881338+00	b41dfafc-d47a-40a5-998f-ebd9024b64c7	U6	2	[{"changed": {"fields": ["Description", "Price"]}}, {"added": {"name": "product video url", "object": "U6 - https://www.youtube.com/embed/a8Ab1-OVlJY"}}]	14	43
1971	2024-04-08 23:24:12.854916+00	b46b63c5-96c7-4493-90b7-59ea14077264	K-Led	2	[{"changed": {"fields": ["Description", "Price"]}}]	14	43
1972	2024-04-08 23:24:37.04661+00	bbb315fa-ceae-49c2-bb7c-65a4b0520566	U6/U600 Handpiece	2	[{"changed": {"fields": ["Price"]}}]	14	43
1973	2024-04-08 23:25:18.478077+00	bc5e478f-44b3-473a-a4d0-b8e0e11e0518	Q7	2	[{"changed": {"fields": ["Price"]}}]	14	43
1974	2024-04-08 23:27:09.393134+00	c3777f9f-1619-4e62-a661-ab9bd614babf	Apex Gold Plus V	2	[{"changed": {"fields": ["Description", "Price"]}}, {"added": {"name": "product video url", "object": "Apex Gold Plus V - https://www.youtube.com/embed/esdJjhmshtw"}}, {"added": {"name": "product video url", "object": "Apex Gold Plus V - https://www.youtube.com/embed/_WFCqx1K99o"}}, {"added": {"name": "product video url", "object": "Apex Gold Plus V - https://www.youtube.com/embed/YvnNgZ68MYY"}}]	14	43
1975	2024-04-08 23:27:30.790841+00	c7db66a0-5928-41fb-9ee4-05109395f38d	Q3	2	[{"changed": {"fields": ["Price"]}}]	14	43
1976	2024-04-08 23:29:42.24709+00	cc28815e-7b14-44d4-b000-dacc6cf3b933	RTA	2	[{"changed": {"fields": ["Price"]}}]	14	43
1977	2024-04-08 23:31:46.456707+00	d8df3e11-b619-47ba-847b-34ae8b29c9f5	i-Scan	2	[{"changed": {"fields": ["Description", "Price"]}}, {"added": {"name": "product video url", "object": "i-Scan - https://www.youtube.com/embed/AFhpOMJH0nk"}}, {"added": {"name": "product video url", "object": "i-Scan - https://www.youtube.com/embed/AFhpOMJH0nk"}}]	14	43
1978	2024-04-08 23:32:50.137898+00	e0335233-1dce-48e0-85a6-0bfe2dc25026	i-Sensor size 2	2	[{"changed": {"fields": ["Description", "Price"]}}, {"added": {"name": "product video url", "object": "i-Sensor size 2 - https://www.youtube.com/embed/xSt05uUAp4s"}}]	14	43
1979	2024-04-08 23:33:15.870771+00	e0335233-1dce-48e0-85a6-0bfe2dc25026	i-Sensor size 2	2	[]	14	43
1980	2024-04-08 23:35:41.14678+00	e2bfb134-5da4-452a-a70d-d55cccb82bd0	MotoPex	2	[{"changed": {"fields": ["Description", "Price"]}}, {"added": {"name": "product video url", "object": "MotoPex - https://www.youtube.com/embed/L9ns5TLw6Yo"}}, {"added": {"name": "product video url", "object": "MotoPex - https://www.youtube.com/embed/tfoWyg9-8GE"}}, {"added": {"name": "product video url", "object": "MotoPex - https://www.youtube.com/embed/4hHTvZloSMI"}}, {"added": {"name": "product video url", "object": "MotoPex - https://www.youtube.com/embed/tLhl3C9zjkQ"}}, {"added": {"name": "product video url", "object": "MotoPex - https://www.youtube.com/embed/qVPsShDuyTo"}}, {"added": {"name": "product video url", "object": "MotoPex - https://www.youtube.com/embed/vTXOG-L7YZQ"}}]	14	43
1981	2024-04-08 23:36:11.691314+00	e4893263-5574-472b-a061-07c182be01d2	i-scan barrier cover	2	[{"changed": {"fields": ["Price"]}}]	14	43
1982	2024-04-08 23:37:40.629286+00	ebf165fd-f821-4212-83b2-d9497392c468	Apex Gold Plus III	2	[{"changed": {"fields": ["Description", "Price"]}}, {"added": {"name": "product video url", "object": "Apex Gold Plus III - https://www.youtube.com/embed/Dt_DkVwPkXc"}}, {"added": {"name": "product video url", "object": "Apex Gold Plus III - https://www.youtube.com/embed/yP2IZf6FRwA"}}]	14	43
1983	2024-04-08 23:39:52.790055+00	f14db6d8-06c0-4306-9920-23cb02d6ba4d	Free Scan	2	[{"changed": {"fields": ["Description", "Price"]}}, {"added": {"name": "product video url", "object": "Free Scan - https://www.youtube.com/embed/pQXi2gQsli8"}}, {"added": {"name": "product video url", "object": "Free Scan - https://www.youtube.com/embed/bE5BxfDV-MA"}}, {"added": {"name": "product video url", "object": "Free Scan - https://www.youtube.com/embed/bE5BxfDV-MA"}}]	14	43
1984	2024-04-08 23:41:01.980738+00	f20d3aff-3d7a-4a65-8b57-ad141a13b32b	Endo Gold	2	[{"changed": {"fields": ["Price"]}}]	14	43
1985	2024-04-08 23:44:34.620956+00	f6e5b415-7430-4be7-85d8-440efb9f63cd	LX16 Plus	2	[{"changed": {"fields": ["Description", "Price"]}}, {"added": {"name": "product video url", "object": "LX16 Plus - https://www.youtube.com/embed/Py-TBnM9ZrY"}}, {"added": {"name": "product video url", "object": "LX16 Plus - https://www.youtube.com/embed/JpKvisWh2bE"}}, {"added": {"name": "product video url", "object": "LX16 Plus - https://www.youtube.com/embed/1nCN_Mp_e04"}}, {"added": {"name": "product video url", "object": "LX16 Plus - https://www.youtube.com/embed/3QY6ApzXgag"}}, {"added": {"name": "product video url", "object": "LX16 Plus - https://www.youtube.com/embed/LBzFRBhkS5M"}}, {"added": {"name": "product video url", "object": "LX16 Plus - https://www.youtube.com/embed/ZyAsw7ayV-c"}}, {"added": {"name": "product video url", "object": "LX16 Plus - https://www.youtube.com/embed/zS0oz2X8poM"}}]	14	43
1986	2024-04-08 23:46:25.750614+00	f7651615-6ff3-412c-b3c4-9659e17fcff9	B cure	2	[{"changed": {"fields": ["Description", "Price"]}}, {"added": {"name": "product video url", "object": "B cure - https://www.youtube.com/embed/XRECDPgABFA"}}]	14	43
1987	2024-04-08 23:46:49.95071+00	fe087a36-5f72-4ccc-9cdc-8b56b6ccb7d2	i-Scan imaging plates (Size 2)	2	[{"changed": {"fields": ["Price"]}}]	14	43
1988	2024-04-08 23:47:06.759592+00	ff132071-d6fd-461a-86ab-20efbc9e7e7e	Led Handpiece	2	[{"changed": {"fields": ["Price"]}}]	14	43
1989	2024-04-08 23:47:23.572078+00	078f8bb3-f4f2-4366-aa51-53cae0c9b49c	i-Scan Imaging Plate (size 1)	2	[]	14	43
1990	2024-04-15 09:35:41.62916+00	04869af6-805c-4af5-8326-e5f577ec2500	Gemini Pre Initiated Tip 5mm	2	[{"changed": {"fields": ["Price"]}}]	14	43
1991	2024-04-15 09:39:54.696443+00	08e0a9ea-7a5a-47fc-9bc9-836db8dcf639	Sof-Tray Classic sheets 2ml pack	2	[{"changed": {"fields": ["Price"]}}]	14	43
1992	2024-04-15 09:40:51.473526+00	10c5f969-8707-4049-a1c8-6c02bd0b08c0	UltraPak Cord	2	[{"changed": {"fields": ["Price"]}}]	14	43
1993	2024-04-15 09:41:42.999131+00	12a5c096-dc52-4ecd-8620-159f8cb4aa5c	Fischer's Ultrapak Packers (Small)	2	[{"changed": {"fields": ["Price"]}}]	14	43
1994	2024-04-15 09:43:32.106812+00	13913c18-fc7b-4e93-982c-cc55446f4b83	PermaShade LC Light Cure Veneer Cement A2	2	[]	14	43
1995	2024-04-15 09:44:19.413821+00	141f2ff2-d24b-4722-b023-7ed84a1211ca	EndoEze Irrigator tips	2	[{"changed": {"fields": ["Price"]}}]	14	43
1996	2024-04-15 09:44:38.427809+00	16e91f84-28c5-4520-8f97-4bcb856c6d66	Ultra-Etch	2	[{"changed": {"fields": ["Price"]}}]	14	43
1997	2024-04-15 09:44:56.895987+00	1c1b7a27-3989-4a20-85af-8e2029445f16	Sectional Matrix regular extended refill 40 pk	2	[{"changed": {"fields": ["Price"]}}]	14	43
1998	2024-04-15 09:46:06.904265+00	1e37104c-c6e6-43b6-97ee-30ad39ca33ad	Permaflo A3	2	[]	14	43
1999	2024-04-15 09:46:57.405607+00	208a75a2-1241-4c2b-af2a-c86af08789ec	Navi Tip White	2	[]	14	43
2000	2024-04-15 09:47:23.387703+00	25ff79c4-b491-469d-a028-2f351cfef310	Navi Tip 31 ga 27mm	2	[{"changed": {"fields": ["Price"]}}]	14	43
2001	2024-04-15 09:47:50.099489+00	2994a972-217a-4130-9668-2029dfc503cd	Ultraez Tray	2	[{"changed": {"fields": ["Price"]}}]	14	43
2002	2024-04-15 09:48:28.510727+00	2a18e671-def8-444e-8f90-c24eda870b41	UltraDent File-Eze	2	[{"changed": {"fields": ["Price"]}}]	14	43
2003	2024-04-15 09:49:45.171807+00	3a48b362-1765-408a-a61d-4ca37b0b840f	Permashade Translucent	2	[{"changed": {"fields": ["Price"]}}]	14	43
2004	2024-04-15 09:50:11.480811+00	3e47d619-a402-437f-88c4-6a6a21543682	Prop Gard Ref	2	[{"changed": {"fields": ["Price"]}}]	14	43
2005	2024-04-15 09:50:34.099921+00	3f109677-dbe7-419a-8538-e7b7eda4b4f5	U Veneer Extra Kit	2	[{"changed": {"fields": ["Price"]}}]	14	43
2006	2024-04-15 09:52:33.107277+00	48167df7-8048-4dfa-99f5-95a9be38eeb9	White mac tips	2	[{"changed": {"fields": ["Price"]}}]	14	43
2007	2024-04-15 09:52:46.869167+00	50556a75-a48a-42fa-9027-a9ae100e6e0c	Sof-Tray Classic Sheets 1.5 ml Pack	2	[{"changed": {"fields": ["Price"]}}]	14	43
2008	2024-04-15 09:53:15.204606+00	55f09b5a-8290-4c30-b853-8c3d656e9f29	Sectional matrix large band extended 40 pk	2	[{"changed": {"fields": ["Price"]}}]	14	43
2009	2024-04-15 09:54:18.70995+00	58ca7c3c-7822-47ca-b73e-62fea5e6e07e	Viscostat	2	[{"changed": {"fields": ["Price"]}}]	14	43
2010	2024-04-15 09:54:57.276421+00	59d5bad2-1713-45a2-ac3b-12d9396742da	Navi Tip 30 ga 25mm	2	[{"changed": {"fields": ["Price"]}}]	14	43
2011	2024-04-15 09:55:54.632369+00	5cb76719-aabd-4056-bccd-4d2dc49352a7	UltraEz	2	[{"changed": {"fields": ["Price"]}}]	14	43
2012	2024-04-15 09:56:24.459896+00	5ccb6ae9-608e-4753-9396-771e53bf5d84	PermaFlo A1	2	[{"changed": {"fields": ["Price"]}}]	14	43
2013	2024-04-15 10:00:32.946963+00	5cf260e6-192f-4774-a6c5-575a8d85c752	Opalescence 35%	2	[{"changed": {"fields": ["Price"]}}]	14	43
2015	2024-04-15 10:04:26.963088+00	6602eb8d-4194-485b-ae81-734a2288289c	Inspiral brush tips	2	[{"changed": {"fields": ["Price"]}}]	14	43
2016	2024-04-15 10:04:57.647073+00	6627b142-84c1-44be-9e29-e75847261117	Fischer's Ultrapak Packers (Regular)	2	[{"changed": {"fields": ["Price"]}}]	14	43
2017	2024-04-15 10:05:27.057631+00	6a1c7ec4-1a7f-4593-b60f-6e965ee119d3	Opalustre	2	[{"changed": {"fields": ["Price"]}}]	14	43
2018	2024-04-15 10:06:49.198778+00	6f09d675-f51a-4296-afb6-246c73d2d871	Viscostat Indispense	2	[]	14	43
2019	2024-04-15 10:08:17.505441+00	701d34ca-e395-4512-a5da-e1396c4cd558	Mixing Tip	2	[{"changed": {"fields": ["Price"]}}]	14	43
2020	2024-04-15 10:11:43.605626+00	70575b1c-21d9-43d6-bd1d-f1ee00159f1e	Opal Dam	2	[{"changed": {"fields": ["Price"]}}]	14	43
2021	2024-04-15 10:12:30.967213+00	71ee3003-0bb0-4daa-b25b-a14480c6d316	Diamond Polish Mint	2	[{"changed": {"fields": ["Price"]}}]	14	43
2022	2024-04-15 10:13:48.571194+00	78b3c4fe-4161-4202-86b5-036fb690bab6	Consepsis Scrub Syr	2	[{"changed": {"fields": ["Price"]}}]	14	43
2023	2024-04-15 10:14:13.963903+00	79b5c943-441a-4074-a96b-644702352d36	Porcelain Etch	2	[{"changed": {"fields": ["Price"]}}]	14	43
2024	2024-04-15 10:17:52.033468+00	7faa53b5-945e-403c-a25d-077e7df0626f	Jiffy Polisher cups 20pk	2	[{"changed": {"fields": ["Price"]}}]	14	43
2025	2024-04-15 10:18:45.944896+00	807fd9ca-1c85-4f23-941f-29035abf6251	Black Mini Brush Tips	2	[{"changed": {"fields": ["Price"]}}]	14	43
2026	2024-04-15 10:19:38.417703+00	877bab2d-716a-458d-9f98-1b36a738223d	Iso Block	2	[{"changed": {"fields": ["Price"]}}]	14	43
2027	2024-04-15 10:20:06.653267+00	91a103f0-ac9f-46fc-9512-10fdb6b92fc4	Black Micro Fx Tip	2	[{"changed": {"fields": ["Price"]}}]	14	43
2028	2024-04-15 10:21:36.496127+00	a1f38695-6cc3-4c9a-9a4b-e4a920077ca2	Consepsis scrub inispense refill	2	[{"changed": {"fields": ["Price"]}}]	14	43
2029	2024-04-15 10:22:08.287195+00	79c34e7b-35e7-48ea-bf99-e50a83395a57	Seek caries indicator	2	[{"changed": {"fields": ["Price"]}}]	14	43
2030	2024-04-15 10:22:21.462295+00	7a1bd1f9-e7f1-45c3-b98e-7f805379083d	Sable seek	2	[{"changed": {"fields": ["Price"]}}]	14	43
2031	2024-04-15 10:22:49.941488+00	a2ebe84b-5cb1-4b4d-95f7-50d195bd3ab3	Ultra Etch Ref.	2	[{"changed": {"fields": ["Price"]}}]	14	43
2032	2024-04-15 10:35:27.406442+00	a74c0f43-2e65-455a-ad26-cdcd5ecbd9e5	Gemini Uninitiated Tip 7mm	2	[{"changed": {"fields": ["Price"]}}]	14	43
2033	2024-04-15 10:36:46.086091+00	b0b8a4f7-2d77-4818-82d5-f62641287601	Omni Matrix kit/48	2	[{"changed": {"fields": ["Price"]}}]	14	43
2034	2024-04-15 10:37:37.980432+00	b16afcec-f233-43a0-a14e-426d0246f9c7	Enamelast 5% Sodium Fluoride Varnish	2	[{"changed": {"fields": ["Price"]}}]	14	43
2035	2024-04-15 10:38:01.32908+00	b28a8793-e9d0-4347-b694-07ad41f51069	UltraPak E Cord	2	[{"changed": {"fields": ["Price"]}}]	14	43
2036	2024-04-15 10:39:15.502283+00	b517116b-f0a7-4f16-a6eb-ab4dbb1b65b0	Opal cup finishing	2	[{"changed": {"fields": ["Price"]}}]	14	43
2037	2024-04-15 10:39:54.318811+00	bbacf9b0-9f84-4680-b2c5-830feda86cfe	Permaseal	2	[{"changed": {"fields": ["Price"]}}]	14	43
2038	2024-04-15 10:41:10.226492+00	bc06f090-897b-43d1-93d1-57a8399352bb	Skini Syringe	2	[{"changed": {"fields": ["Price"]}}]	14	43
2039	2024-04-15 10:43:20.166094+00	c33c46ec-7ddc-446d-863b-040a2569befc	Sof-Tray classic sheets 1 ml pack	2	[{"changed": {"fields": ["Price"]}}]	14	43
2040	2024-04-15 10:47:47.603277+00	c381faaa-2d04-4727-9ff7-aa50315f6b8e	Ultradent L.C Block Out Resin	2	[{"changed": {"fields": ["Price"]}}]	14	43
2041	2024-04-15 10:49:01.760576+00	c3f223f2-923d-41fd-aad8-a7edd3ce1e35	PermaFlo Pink	2	[{"changed": {"fields": ["Price"]}}]	14	43
2042	2024-04-15 10:49:36.034383+00	c65297ad-8096-4a04-81ac-90a5f7c5c9d1	Opalescence Pocket Tray	2	[{"changed": {"fields": ["Price"]}}]	14	43
2043	2024-04-15 10:50:38.154538+00	c94223f2-e770-4bfb-80ce-f34dbddaa289	Navi Tip 29g 21mm	2	[{"changed": {"fields": ["Price"]}}]	14	43
2044	2024-04-15 10:50:59.291259+00	ca660de4-289b-4ae6-b223-715293fbe867	Navi Tip Fx 25 mm	2	[{"changed": {"fields": ["Price"]}}]	14	43
2045	2024-04-15 10:51:27.833499+00	cc3e2e5e-9442-472a-9aa2-74ad27476c41	Umbrella	2	[{"changed": {"fields": ["Price"]}}]	14	43
2046	2024-04-15 10:52:40.391155+00	ccb4ee02-42fa-409f-baf4-1f41890934c5	Opal cup bristle	2	[{"changed": {"fields": ["Price"]}}]	14	43
2047	2024-04-15 10:53:31.827553+00	ced2f1cb-bc7a-4c6f-840f-852a5eceab8a	Permaflo A3.5	2	[{"changed": {"fields": ["Price"]}}]	14	43
2048	2024-04-15 10:54:57.995741+00	dd9bb348-8a3a-4537-93ad-d8dadfadea9d	Opalescence Endo	2	[{"changed": {"fields": ["Price"]}}]	14	43
2049	2024-04-15 10:55:27.922016+00	dfe5c687-7434-4aad-8b7d-7d292eb5d245	UltraCal XS	2	[{"changed": {"fields": ["Price"]}}]	14	43
2050	2024-04-15 10:56:15.596809+00	e1699a31-8ba1-4ebc-87df-cc471b5fb1a0	Silane	2	[{"changed": {"fields": ["Price"]}}]	14	43
2051	2024-04-15 10:56:54.22917+00	e2de746a-d381-43d5-8c5d-4e158156777a	Opalescence PF 20%	2	[{"changed": {"fields": ["Price"]}}]	14	43
2052	2024-04-15 10:57:29.272406+00	ef3769de-6041-4822-ba60-64c006113c7a	Piece Sof-Tray 2ml	2	[{"changed": {"fields": ["Price"]}}]	14	43
2053	2024-04-15 10:58:23.759032+00	ee138c5a-d287-44be-9b20-ba8bdc213dcd	Opalescence Boost	2	[{"changed": {"fields": ["Price"]}}]	14	43
2054	2024-04-15 10:58:57.833782+00	ef8ed366-4704-490a-9231-bbca77053143	PermaFlo A2	2	[{"changed": {"fields": ["Price"]}}]	14	43
2055	2024-04-15 10:59:27.448559+00	ef970c44-eb5f-4e48-ae1a-53542df551df	Astringedent Indispense	2	[{"changed": {"fields": ["Price"]}}]	14	43
2056	2024-04-15 11:00:35.522127+00	f118bce2-7f85-46cf-8f77-a24568b2069b	Viscostat Clear	2	[{"changed": {"fields": ["Price"]}}]	14	43
2057	2024-04-15 11:01:02.778971+00	f15092bf-fc31-446d-9822-d843a9d684b5	Black Micro Tip	2	[{"changed": {"fields": ["Price"]}}]	14	43
2058	2024-04-15 11:02:44.326202+00	f4ebe4bc-c559-4aa4-b6cc-48fd7fa8bc66	Viscostat Clear indispense	2	[]	14	43
2059	2024-04-15 11:02:57.518669+00	fcabd953-b618-4dd2-b0dc-06c2a55e2af5	Shade guide cards	2	[{"changed": {"fields": ["Price"]}}]	14	43
2060	2024-04-17 09:46:30.488286+00	2fb8b9d9-68bf-4036-884e-6c7be7e4ae8e	Dream Plastic Filling Instrument	2	[]	14	43
2061	2024-04-17 09:46:38.383501+00	2fce73dc-c0f5-4d1b-865d-d601602a422e	Dream Ball Burnisher	2	[]	14	43
2062	2024-04-17 09:47:02.024699+00	34f0e5cd-de60-40e0-87d9-8e96f4a8856a	Dream Root Fragment Forceps	2	[]	14	43
2063	2024-04-17 09:47:11.364437+00	36b6f8e1-1968-4d38-9055-5ae5d3eb9a64	Dream Wax Knife Small	2	[]	14	43
2064	2024-04-17 09:47:23.602611+00	37549217-7118-48bb-8365-178c19a61e68	Dream Tofflemire Retainer	2	[]	14	43
2065	2024-04-17 09:47:31.999292+00	43aed322-ae25-430f-b2ab-5ee9313ea10f	Dream Conical Carver	2	[]	14	43
2066	2024-04-17 09:47:45.541011+00	448cacdb-fd57-434f-89e0-35b8de702edf	Dream Luxator	2	[]	14	43
2067	2024-04-17 09:48:11.606016+00	4d8ec8e0-4091-417f-81a3-b9c0b87228cb	Dream Wax Carver Small	2	[{"changed": {"fields": ["Title"]}}]	14	43
2068	2024-04-17 10:01:29.029428+00	6ae6175d-4d29-4723-a600-edb8849b8f8f	I Led-II	1	[{"added": {}}, {"added": {"name": "product image", "object": "I Led-II - product/I Led-II/I_led_II.png"}}]	14	43
2069	2024-04-17 10:02:16.936167+00	09803e02-7108-4e70-8937-860d25b7ddbb	I-Led Max	3		14	43
2268	2024-05-08 14:29:35.698304+00	b2dd1b55-ea05-44f7-be9f-f718c935aaf2	Mitex Elevator Kit 8 Pcs	2	[]	14	43
2070	2024-04-17 10:06:40.445172+00	e0c03435-3a38-4c3b-ab64-6c1d957bcc53	I Led Max	1	[{"added": {}}, {"added": {"name": "product image", "object": "I Led Max - product/I Led Max/i-Led_MAX_5.jpeg"}}, {"added": {"name": "product image", "object": "I Led Max - product/I Led Max/i-Led_MAX_1.jpeg"}}, {"added": {"name": "product image", "object": "I Led Max - product/I Led Max/i-Led_MAX_3.jpeg"}}]	14	43
2071	2024-04-17 10:07:40.970219+00	0156529b-593c-4576-89e2-182b0e917839	i-Sensor size 1	2	[]	14	43
2072	2024-04-17 10:18:35.851085+00	d5808381-dfad-418c-a6a4-89f3fdbf3d78	Mini Ray	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mini Ray - product/Mini Ray/Mini_Ray_3_YaHsdPb.png"}}, {"added": {"name": "product image", "object": "Mini Ray - product/Mini Ray/Mini_Ray_1_WWTbdeg.png"}}, {"added": {"name": "product image", "object": "Mini Ray - product/Mini Ray/Mini_Ray_15_xhp4G1m.jpeg"}}, {"added": {"name": "product video url", "object": "Mini Ray - https://www.youtube.com/embed/MHUD-MQ7Sww"}}, {"added": {"name": "product video url", "object": "Mini Ray - https://www.youtube.com/embed/CLR5UAVNKAo"}}, {"added": {"name": "product video url", "object": "Mini Ray - https://www.youtube.com/embed/A5s7hZF--UA"}}]	14	43
2073	2024-04-17 10:19:43.224079+00	24f6776a-c780-417c-814e-0c670cb81dd0	Mini Ray	3		14	43
2074	2024-04-17 10:20:09.671205+00	d5808381-dfad-418c-a6a4-89f3fdbf3d78	Mini Ray	2	[]	14	43
2075	2024-04-17 10:29:22.165627+00	13913c18-fc7b-4e93-982c-cc55446f4b83	PermaShade LC Light Cure Veneer Cement A2	3		14	43
2076	2024-04-17 10:31:55.215388+00	208a75a2-1241-4c2b-af2a-c86af08789ec	Navi Tip White	3		14	43
2077	2024-04-17 10:34:07.276171+00	3126a831-cbd9-4fdd-9c53-610f02ce3eb1	Piece Sof-Tray Classic Sheet 1ml	3		14	43
2078	2024-04-17 10:36:01.08377+00	46652c49-2555-49fa-934a-71a600ed2303	Gemini Hand Piece Shell	3		14	43
2079	2024-04-17 10:37:52.237428+00	5ccb6ae9-608e-4753-9396-771e53bf5d84	PermaFlo A1	3		14	43
2080	2024-04-17 10:38:38.759576+00	6602eb8d-4194-485b-ae81-734a2288289c	Inspiral brush tips	2	[{"changed": {"fields": ["Price"]}}]	14	43
2081	2024-04-17 10:39:45.595773+00	6e245c31-f351-4a36-b45f-6cbbba8177e2	PermaFlo B1	3		14	43
2082	2024-04-17 10:40:29.606808+00	6f09d675-f51a-4296-afb6-246c73d2d871	Viscostat Indispense	3		14	43
2083	2024-04-17 10:40:53.280811+00	c0ff71e4-ce4e-4e36-8f5f-a43606cbbd65	Gemini Laser	3		14	43
2084	2024-04-17 10:41:35.523409+00	701d34ca-e395-4512-a5da-e1396c4cd558	Mixing Tip	3		14	43
2085	2024-04-17 10:42:36.395243+00	76db694f-653d-4707-b4ba-644d368d8750	Luer Vacuum Adapter	3		14	43
2086	2024-04-17 10:44:30.177957+00	7a3980bd-ea41-4dfa-8d88-abd78ed5e0c5	Omni Matrix anatomical sectional clamp	3		14	43
2087	2024-04-17 10:45:29.923451+00	84402861-2c99-4c5b-8847-0e7d9c58f510	Peak Universal Bond	3		14	43
2088	2024-04-17 10:45:41.435606+00	85d40206-104a-40b3-8e79-c42cb2e0ea29	Permashader OW	3		14	43
2089	2024-04-17 10:47:04.564453+00	a7a323c4-2400-4bd8-86d3-bae557ea5bae	UltraSeal XT Hydro	3		14	43
2090	2024-04-17 10:47:14.944118+00	ad9b339a-e027-4147-a386-9eab02ba6550	UltraSeal XT Plus A1 Ref.	3		14	43
2091	2024-04-17 10:48:03.99699+00	cc7f704f-3fca-4268-9acc-28d1c328b942	Ultrablend Plus	3		14	43
2092	2024-04-17 10:50:10.466886+00	2a18e671-def8-444e-8f90-c24eda870b41	UltraDent File-Eze	3		14	43
2093	2024-04-17 10:52:36.683511+00	a1f38695-6cc3-4c9a-9a4b-e4a920077ca2	Consepsis  inispense refill	2	[{"changed": {"fields": ["Title"]}}]	14	43
2094	2024-04-17 10:53:38.267569+00	beceef0a-bdfc-4cb2-a0af-3cc4cc8911b8	Ultradent Universal Dentin Sealant	3		14	43
2095	2024-04-17 10:55:09.829014+00	ced2f1cb-bc7a-4c6f-840f-852a5eceab8a	Permaflo A3.5	3		14	43
2096	2024-04-17 10:55:29.434256+00	d417b31c-93f5-4fd7-a643-8e6e1ca6034f	Piece Sof-Tray Classic sheet 1.5 ml	3		14	43
2097	2024-04-17 10:55:40.815971+00	d525a638-ee7d-41ad-a2f3-4757dfce9dd2	UltraSeal XT Plus Opaque	3		14	43
2098	2024-04-17 10:56:00.613+00	eba21433-2642-4f76-98c3-9288b7f8bd1a	UVeneer	3		14	43
2099	2024-04-17 10:56:12.948936+00	ef3769de-6041-4822-ba60-64c006113c7a	Piece Sof-Tray 2ml	3		14	43
2100	2024-04-17 10:57:07.243892+00	ef970c44-eb5f-4e48-ae1a-53542df551df	Astringedent Indispense	3		14	43
2101	2024-04-17 10:57:37.127739+00	f4ced12d-f056-40a7-a21e-58eb17dfbc75	UltraEz	3		14	43
2102	2024-04-17 11:04:42.96576+00	c343b79f-64f7-45bf-98de-a275665425d5	Metal D.Infusor Tip Viscostat ref	1	[{"added": {}}, {"added": {"name": "product image", "object": "Metal D.Infusor Tip Viscostat ref - product/Metal D.Infusor Tip Viscostat ref/Metal_Dento-Infusor_Tip_with_Lok-Tite_feature.png"}}]	14	43
2103	2024-04-17 11:05:23.199498+00	66	Ruler	1	[{"added": {}}]	18	43
2104	2024-04-17 11:10:07.300474+00	2b7c020e-a2ea-4a1d-9a22-f0d22e3db8dd	Endo-Eze Ruler	1	[{"added": {}}, {"added": {"name": "product image", "object": "Endo-Eze Ruler - product/Endo-Eze Ruler/1295_Endo-Eze-Ruler-single_ENDODONTICS-highdef_1.jpeg"}}]	14	43
2105	2024-04-18 10:41:23.515229+00	12	home/home-swiper/NEW_ARRIVALS.png	2	[{"changed": {"fields": ["Media"]}}]	46	43
2106	2024-04-18 10:42:58.72885+00	12	home/home-swiper/NEW_ARRIVALS_1_pWfBSbw.png	2	[{"changed": {"fields": ["Media"]}}]	46	43
2107	2024-04-18 11:48:58.964816+00	11	home/home-swiper/NEW_ARRIVALS_2_VDRAvPP.png	2	[{"changed": {"fields": ["Media"]}}]	46	43
2108	2024-04-21 13:30:13.96346+00	00a43ab5-5193-4327-9503-52fcd5e42fd4	Mitex High Quality Bone Caliber Type 1	2	[{"changed": {"fields": ["Sale price", "Stock"]}}]	14	43
2109	2024-04-22 11:15:57.303014+00	1	home/home-swiper/NEW_ARRIVALS.mp4	2	[{"changed": {"fields": ["Media"]}}]	46	43
2110	2024-04-22 12:39:23.842383+00	1	home/home-swiper/welcome.mp4	2	[{"changed": {"fields": ["Media"]}}]	46	43
2111	2024-04-22 13:41:41.525928+00	1	HomeDetails object (1)	2	[{"changed": {"fields": ["About us 1 image"]}}]	49	43
2112	2024-04-23 11:06:36.528153+00	12	home/home-swiper/NEW_ARRIVALS_1_pWfBSbw.png	3		46	43
2113	2024-04-23 11:06:36.552929+00	11	home/home-swiper/NEW_ARRIVALS_2_VDRAvPP.png	3		46	43
2114	2024-04-23 11:06:36.554811+00	1	home/home-swiper/welcome.mp4	3		46	43
2115	2024-04-23 11:06:58.223471+00	13	home/home-swiper/welcome_obb56hq.mp4	1	[{"added": {}}]	46	43
2116	2024-04-23 11:07:08.566659+00	14	home/home-swiper/NEW_ARRIVALS_1_vk8RFXq.png	1	[{"added": {}}]	46	43
2117	2024-04-23 11:07:18.79378+00	15	home/home-swiper/NEW_ARRIVALS_2_XDoqw9S.png	1	[{"added": {}}]	46	43
2118	2024-04-23 11:33:36.644017+00	15	home/home-swiper/welcome_Ezk42Rz.mp4	2	[{"changed": {"fields": ["Media"]}}]	46	43
2119	2024-04-23 11:34:07.416907+00	15	home/home-swiper/welcome_03OfRQP.mp4	2	[{"changed": {"fields": ["Media"]}}]	46	43
2120	2024-04-23 11:34:20.601733+00	15	home/home-swiper/welcome_03OfRQP.mp4	3		46	43
2121	2024-04-23 11:34:27.488906+00	14	home/home-swiper/NEW_ARRIVALS_1_vk8RFXq.png	3		46	43
2122	2024-04-23 11:34:32.697314+00	13	home/home-swiper/welcome_obb56hq.mp4	3		46	43
2123	2024-04-23 11:34:49.539427+00	16	home/home-swiper/welcome_oGM53ei.mp4	1	[{"added": {}}]	46	43
2124	2024-04-23 11:35:21.253657+00	16	home/home-swiper/welcome_oGM53ei.mp4	3		46	43
2125	2024-04-23 11:35:29.892599+00	17	home/home-swiper/welcome_su30e2M.mp4	1	[{"added": {}}]	46	43
2126	2024-04-23 11:36:25.149911+00	17	home/home-swiper/welcome_1.mp4	2	[{"changed": {"fields": ["Media"]}}]	46	43
2127	2024-04-23 14:03:37.648212+00	17	home/home-swiper/welcome_1.mp4	2	[{"changed": {"fields": ["Mobile view media"]}}]	46	1
2128	2024-04-23 14:05:55.797164+00	17	home/home-swiper/welcome_1.mp4	2	[{"changed": {"fields": ["Mobile view media"]}}]	46	1
2129	2024-04-23 14:37:00.63925+00	17	home/home-swiper/welcome_1.mp4	2	[{"changed": {"fields": ["Mobile view media"]}}]	46	1
2130	2024-04-23 14:37:41.84703+00	17	home/home-swiper/welcome_1.mp4	2	[{"changed": {"fields": ["Mobile view media"]}}]	46	1
2131	2024-04-24 09:04:52.726707+00	17	home/home-swiper/welcome_1.mp4	2	[{"changed": {"fields": ["Mobile view media"]}}]	46	43
2132	2024-04-24 09:07:39.455927+00	17	home/home-swiper/welcome_1.mp4	2	[{"changed": {"fields": ["Mobile view media"]}}]	46	43
2133	2024-04-24 09:08:46.459081+00	17	home/home-swiper/welcome_1.mp4	2	[{"changed": {"fields": ["Mobile view media"]}}]	46	43
2134	2024-04-24 09:09:59.912165+00	17	home/home-swiper/welcome_1.mp4	2	[{"changed": {"fields": ["Mobile view media"]}}]	46	43
2135	2024-04-24 09:25:18.365624+00	17	home/home-swiper/welcome_1.mp4	2	[{"changed": {"fields": ["Mobile view media"]}}]	46	43
2136	2024-04-24 09:33:29.676966+00	17	home/home-swiper/welcome_1.mp4	2	[{"changed": {"fields": ["Mobile view media"]}}]	46	43
2137	2024-04-24 09:37:07.732128+00	17	home/home-swiper/welcome_1.mp4	2	[{"changed": {"fields": ["Mobile view media"]}}]	46	43
2138	2024-04-24 09:38:34.168556+00	17	home/home-swiper/welcome_1.mp4	2	[{"changed": {"fields": ["Mobile view media"]}}]	46	43
2139	2024-04-24 09:40:03.144635+00	17	home/home-swiper/welcome_1.mp4	2	[{"changed": {"fields": ["Mobile view media"]}}]	46	43
2140	2024-04-24 15:00:23.006564+00	27fc5ba6-9f46-45e7-8d69-7f44265d089c	Mitex Tray	2	[{"changed": {"fields": ["Stock"]}}]	14	43
2141	2024-04-28 07:16:07.841882+00	57	01028505910	2	[{"changed": {"fields": ["password"]}}]	21	43
2142	2024-04-30 10:22:08.064023+00	07368b73-d58c-4720-8933-f8429a60da3d	Apex Blue	2	[{"changed": {"fields": ["Weight"]}}]	14	31
2143	2024-04-30 10:39:31.480142+00	f20d3aff-3d7a-4a65-8b57-ad141a13b32b	Endo Gold	2	[{"changed": {"fields": ["Description"]}}]	14	31
2144	2024-04-30 10:40:30.428108+00	91b542e1-d2a7-404a-ae04-34316e9b4100	Yoshi Ai Motor	2	[{"changed": {"fields": ["Title"]}}]	14	31
2145	2024-05-01 09:50:20.649782+00	300e13c3-99ce-45dc-b75a-06b2f5be364a	Endo Pace	1	[{"added": {}}, {"added": {"name": "product image", "object": "Endo Pace - product/Endo Pace/Endo_Pace_1_TxR4qlC.jpeg"}}, {"added": {"name": "product image", "object": "Endo Pace - product/Endo Pace/Endo_Pace_2_e6ipyDG.jpeg"}}, {"added": {"name": "product image", "object": "Endo Pace - product/Endo Pace/Endo_Pace_3_WkpNOC9.jpeg"}}]	14	43
2146	2024-05-01 10:40:51.992501+00	02ffb0de-2d99-46a5-86ab-26493f8528bc	PT-A	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
2147	2024-05-01 10:41:36.942154+00	042d2ad5-c4db-4dda-9b20-c9edd306b227	Endo 1	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2148	2024-05-01 10:42:43.677143+00	07368b73-d58c-4720-8933-f8429a60da3d	Apex Blue	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2149	2024-05-01 10:43:20.708687+00	078f8bb3-f4f2-4366-aa51-53cae0c9b49c	i-Scan Imaging Plate (size 1)	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2150	2024-05-01 10:43:54.311698+00	0d2091b5-aecc-4346-9230-8692fb4a6258	Led-F	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2151	2024-05-01 10:45:10.34723+00	374ccb87-97cc-4742-81ee-2ad2e3d74c25	i-Scan Cardboard	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2152	2024-05-01 10:45:56.251664+00	40f43a51-d312-43f0-acb9-731ca9ccde4b	Fi-G & Fi-P Obturation System	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
2153	2024-05-01 10:46:23.275593+00	50a58335-0faa-4b1b-b69a-d9474a049041	P-led	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2154	2024-05-01 10:47:00.335376+00	683de5a1-7d57-4438-b63f-aedf8e03d376	Ai-Motor	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2155	2024-05-01 10:47:35.66624+00	6ae6175d-4d29-4723-a600-edb8849b8f8f	I Led-II	2	[{"changed": {"fields": ["Weight", "Price"]}}]	14	43
2156	2024-05-01 10:47:57.817699+00	72b805d2-12f5-4606-887d-c97175e7abba	U600	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2157	2024-05-01 10:48:26.009663+00	75524dad-fd4a-48f5-b248-c7e50c722679	E-Led	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2158	2024-05-01 10:48:52.947074+00	7ef30076-4b44-47ec-8609-28d7adfc0a6f	Led-D	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2159	2024-05-01 10:49:17.985551+00	7fa6d156-b18c-4504-8b81-ee856bc3ce85	King Kong (Japanese Bearings)	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2160	2024-05-01 10:49:40.472099+00	8e712346-8c8b-4b20-bcb1-03ccfc0e00ea	King Kong (German Bearings)	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2161	2024-05-01 10:50:09.536449+00	91b542e1-d2a7-404a-ae04-34316e9b4100	Yoshi Ai Motor	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2162	2024-05-01 10:50:44.078752+00	99d70557-4de3-4af0-8f05-706050bb2637	A-Led	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2163	2024-05-01 10:51:15.141298+00	9d8c389c-2813-4dd5-9116-1ea2697fbf34	Anteaus	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2164	2024-05-01 10:51:42.816436+00	a1c4f9f3-72af-4b94-b110-b57f743bba20	I-Led	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2165	2024-05-01 10:52:09.141324+00	b41dfafc-d47a-40a5-998f-ebd9024b64c7	U6	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2166	2024-05-01 10:52:32.117916+00	b46b63c5-96c7-4493-90b7-59ea14077264	K-Led	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2167	2024-05-01 10:53:10.69621+00	bbb315fa-ceae-49c2-bb7c-65a4b0520566	U6/U600 Handpiece	2	[]	14	43
2168	2024-05-01 10:53:31.26392+00	bc5e478f-44b3-473a-a4d0-b8e0e11e0518	Q7	2	[]	14	43
2169	2024-05-01 10:54:01.05476+00	c3777f9f-1619-4e62-a661-ab9bd614babf	Apex Gold Plus V	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2170	2024-05-01 10:54:27.820255+00	c7db66a0-5928-41fb-9ee4-05109395f38d	Q3	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2171	2024-05-01 10:54:52.004822+00	cc28815e-7b14-44d4-b000-dacc6cf3b933	RTA	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2172	2024-05-01 10:55:17.989454+00	d5808381-dfad-418c-a6a4-89f3fdbf3d78	Mini Ray	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2173	2024-05-01 10:55:40.966597+00	d8df3e11-b619-47ba-847b-34ae8b29c9f5	i-Scan	2	[]	14	43
2174	2024-05-01 10:56:04.710802+00	e0335233-1dce-48e0-85a6-0bfe2dc25026	i-Sensor size 2	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2175	2024-05-01 10:56:55.063615+00	e2bfb134-5da4-452a-a70d-d55cccb82bd0	MotoPex	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2176	2024-05-01 10:57:23.054214+00	e4893263-5574-472b-a061-07c182be01d2	i-scan barrier cover	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2177	2024-05-01 10:57:47.541303+00	ebf165fd-f821-4212-83b2-d9497392c468	Apex Gold Plus III	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2178	2024-05-01 10:58:10.563844+00	f14db6d8-06c0-4306-9920-23cb02d6ba4d	Free Scan	2	[{"changed": {"fields": ["Price"]}}]	14	43
2179	2024-05-01 10:58:33.354654+00	f20d3aff-3d7a-4a65-8b57-ad141a13b32b	Endo Gold	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2180	2024-05-01 10:58:58.908791+00	f6e5b415-7430-4be7-85d8-440efb9f63cd	LX16 Plus	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2181	2024-05-01 10:59:23.039877+00	f7651615-6ff3-412c-b3c4-9659e17fcff9	B cure	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2182	2024-05-01 10:59:56.795744+00	fe087a36-5f72-4ccc-9cdc-8b56b6ccb7d2	i-Scan imaging plates (Size 2)	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2183	2024-05-01 11:00:34.318796+00	ff132071-d6fd-461a-86ab-20efbc9e7e7e	Led Handpiece	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2184	2024-05-02 09:50:50.837731+00	1	Zone1	2	[{"changed": {"fields": ["First 1 kg price", "Additional 1 kg price", "Cod up to cod limit"]}}]	55	43
2185	2024-05-03 23:19:09.239739+00	2	Zone 2	2	[{"changed": {"fields": ["First 1 kg price", "Additional 1 kg price"]}}]	55	43
2186	2024-05-03 23:19:27.776488+00	3	Zone 3	2	[{"changed": {"fields": ["First 1 kg price", "Additional 1 kg price"]}}]	55	43
2187	2024-05-03 23:19:37.300362+00	4	Zone 4	2	[{"changed": {"fields": ["First 1 kg price", "Additional 1 kg price"]}}]	55	43
2188	2024-05-03 23:19:47.446802+00	6	Zone 5	2	[{"changed": {"fields": ["First 1 kg price", "Additional 1 kg price"]}}]	55	43
2189	2024-05-03 23:19:57.621763+00	5	Zone 6	2	[{"changed": {"fields": ["First 1 kg price", "Additional 1 kg price"]}}]	55	43
2190	2024-05-03 23:21:46.609528+00	55	Hurghada	2	[{"changed": {"fields": ["Zone"]}}]	56	43
2191	2024-05-03 23:21:56.081162+00	54	Sharm el sheikh	2	[{"changed": {"fields": ["Zone"]}}]	56	43
2192	2024-05-03 23:23:44.801884+00	36	El Wadi el Gedid	2	[{"changed": {"fields": ["Zone"]}}]	56	43
2193	2024-05-03 23:26:08.345064+00	16	10th of Ramadan	2	[{"changed": {"fields": ["Zone"]}}]	56	43
2194	2024-05-07 10:28:08.053136+00	6	Zone 5	2	[{"changed": {"fields": ["Cod above cod limit"]}}]	55	43
2195	2024-05-07 10:28:15.890541+00	5	Zone 6	2	[{"changed": {"fields": ["Cod above cod limit"]}}]	55	43
2196	2024-05-07 10:28:23.265067+00	4	Zone 4	2	[{"changed": {"fields": ["Cod above cod limit"]}}]	55	43
2197	2024-05-07 10:28:33.203024+00	3	Zone 3	2	[{"changed": {"fields": ["Cod above cod limit"]}}]	55	43
2198	2024-05-07 10:28:40.849704+00	2	Zone 2	2	[{"changed": {"fields": ["Cod above cod limit"]}}]	55	43
2199	2024-05-07 10:28:49.504113+00	1	Zone1	2	[]	55	43
2200	2024-05-07 10:31:11.484148+00	c3777f9f-1619-4e62-a661-ab9bd614babf	Apex Gold Plus V	2	[{"deleted": {"name": "product item", "object": "Apex Gold Plus V Apex Locator"}}]	14	43
2201	2024-05-07 11:01:38.732192+00	1e37104c-c6e6-43b6-97ee-30ad39ca33ad	Permaflo A3	2	[{"changed": {"fields": ["Weight"]}}]	14	31
2202	2024-05-07 11:02:28.478155+00	5cb76719-aabd-4056-bccd-4d2dc49352a7	UltraEz	2	[{"changed": {"fields": ["Weight"]}}]	14	31
2203	2024-05-07 11:06:43.361001+00	6ae6175d-4d29-4723-a600-edb8849b8f8f	I Led-II	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2204	2024-05-07 11:07:35.365609+00	b41dfafc-d47a-40a5-998f-ebd9024b64c7	U6	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2205	2024-05-07 11:20:43.671613+00	91b542e1-d2a7-404a-ae04-34316e9b4100	Yoshi Ai Motor	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2206	2024-05-07 11:21:05.758482+00	6a1c7ec4-1a7f-4593-b60f-6e965ee119d3	Opalustre	2	[]	14	43
2207	2024-05-07 11:21:39.442032+00	fd9f4617-8630-4094-9d99-66eaaf7f60c9	Mitex Curette	2	[]	14	43
2208	2024-05-07 11:26:00.388482+00	16e91f84-28c5-4520-8f97-4bcb856c6d66	Ultra-Etch	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2209	2024-05-07 11:27:03.458523+00	3a48b362-1765-408a-a61d-4ca37b0b840f	Permashade Translucent	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2210	2024-05-07 11:27:39.03767+00	5cf260e6-192f-4774-a6c5-575a8d85c752	Opalescence Home 35%	2	[{"changed": {"fields": ["Title", "Weight"]}}]	14	43
2211	2024-05-07 11:28:16.596393+00	58ca7c3c-7822-47ca-b73e-62fea5e6e07e	Viscostat	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2212	2024-05-07 11:50:42.905404+00	10c5f969-8707-4049-a1c8-6c02bd0b08c0	UltraPak Cord	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2213	2024-05-07 11:51:15.480342+00	7a1bd1f9-e7f1-45c3-b98e-7f805379083d	Sable seek	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2214	2024-05-07 14:09:10.833631+00	1	Contact us	2	[{"changed": {"fields": ["Phone1"]}}]	8	31
2215	2024-05-08 11:53:48.287591+00	300e13c3-99ce-45dc-b75a-06b2f5be364a	Endo Pace	2	[{"added": {"name": "product video url", "object": "Endo Pace - https://www.youtube.com/embed/HDJ4604r3Uo"}}, {"added": {"name": "product video url", "object": "Endo Pace - https://www.youtube.com/embed/KidzMbZ8GAA"}}, {"added": {"name": "product video url", "object": "Endo Pace - https://www.youtube.com/embed/CpJwIqBX6Co"}}]	14	43
2216	2024-05-08 12:05:02.559734+00	67	Dental Units	1	[{"added": {}}]	18	43
2217	2024-05-08 12:09:19.418736+00	8f45d9ba-2646-4773-a4b6-f3322fac0ec7	Wozo A2	1	[{"added": {}}, {"added": {"name": "product image", "object": "Wozo A2 - product/Wozo A2/Wozo_A2_1.png"}}, {"added": {"name": "product image", "object": "Wozo A2 - product/Wozo A2/Wozo_A2_2.png"}}, {"added": {"name": "product image", "object": "Wozo A2 - product/Wozo A2/Wozo_A2_3.png"}}]	14	43
2218	2024-05-08 12:18:21.605653+00	038e714d-6a4d-444a-9129-fc87231c1f7a	Wodo A2	1	[{"added": {}}, {"added": {"name": "product image", "object": "Wodo A2 - product/Wodo A2/wodo_a2_1.png"}}, {"added": {"name": "product image", "object": "Wodo A2 - product/Wodo A2/wodo_a2_2.png"}}]	14	43
2219	2024-05-08 12:19:11.519633+00	68	Water Distillers	1	[{"added": {}}]	18	43
2220	2024-05-08 12:26:38.084461+00	cad2d2d8-05ce-4a23-933d-6a2941d81b77	Drink 10	1	[{"added": {}}, {"added": {"name": "product image", "object": "Drink 10 - product/Drink 10/Drink_10_water_distller_1.jpeg"}}, {"added": {"name": "product image", "object": "Drink 10 - product/Drink 10/Drink_10_water_distller_2.png"}}, {"added": {"name": "product image", "object": "Drink 10 - product/Drink 10/Drink_10_water_distller_3.png"}}]	14	43
2221	2024-05-08 12:28:13.379361+00	038e714d-6a4d-444a-9129-fc87231c1f7a	Wodo A2	2	[{"changed": {"fields": ["Product item title"]}}, {"added": {"name": "product item", "object": "Wodo A2 black"}}, {"added": {"name": "product item", "object": "Wodo A2 Yellow"}}, {"added": {"name": "product item", "object": "Wodo A2 Apple green"}}, {"added": {"name": "product item", "object": "Wodo A2 Dark blue"}}]	14	43
2222	2024-05-08 12:29:00.089943+00	8f45d9ba-2646-4773-a4b6-f3322fac0ec7	Wozo A2	2	[{"changed": {"fields": ["Product item title"]}}, {"added": {"name": "product item", "object": "Wozo A2 Black"}}, {"added": {"name": "product item", "object": "Wozo A2 Apple green"}}, {"added": {"name": "product item", "object": "Wozo A2 Sky blue"}}]	14	43
2223	2024-05-08 12:29:15.844914+00	038e714d-6a4d-444a-9129-fc87231c1f7a	Wodo A2	2	[{"changed": {"name": "product item", "object": "Wodo A2 Black", "fields": ["Species"]}}]	14	43
2224	2024-05-08 12:30:00.296968+00	69	Autoclaves	1	[{"added": {}}]	18	43
2225	2024-05-08 12:33:41.730205+00	284393ee-87bf-47a8-939f-934b3c10f008	Tanda class B 18L	1	[{"added": {}}, {"added": {"name": "product image", "object": "Tanda class B 18L - product/Tanda class B 18L/Tanda_1.png"}}, {"added": {"name": "product image", "object": "Tanda class B 18L - product/Tanda class B 18L/Tanda_2.png"}}, {"added": {"name": "product image", "object": "Tanda class B 18L - product/Tanda class B 18L/Tanda_3.jpeg"}}, {"added": {"name": "product image", "object": "Tanda class B 18L - product/Tanda class B 18L/Tanda_4.jpeg"}}]	14	43
2269	2024-05-08 14:29:55.849323+00	b905c42e-ccb3-43ef-83d3-dd13e8e9e7c5	Mitex Putty Cut	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2270	2024-05-08 14:30:14.127894+00	bc79c542-c968-44dd-a49e-c1ffe0717022	Mitex CAOH Applicator	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2226	2024-05-08 12:34:53.350714+00	412a5a8f-e516-4fad-b0a4-1f96952cea2e	Tanda class B 23L	1	[{"added": {}}, {"added": {"name": "product image", "object": "Tanda class B 23L - product/Tanda class B 23L/Tanda_1.png"}}, {"added": {"name": "product image", "object": "Tanda class B 23L - product/Tanda class B 23L/Tanda_2.png"}}, {"added": {"name": "product image", "object": "Tanda class B 23L - product/Tanda class B 23L/Tanda_3.jpeg"}}, {"added": {"name": "product image", "object": "Tanda class B 23L - product/Tanda class B 23L/Tanda_4.jpeg"}}]	14	43
2227	2024-05-08 12:46:47.487006+00	f7cb8a88-3b4c-4be1-949c-1d3d3fa73df5	RAY-L 2.0	1	[{"added": {}}, {"added": {"name": "product image", "object": "RAY-L 2.0 - product/RAY-L 2.0/RAYL.png"}}]	14	43
2228	2024-05-08 13:06:59.979918+00	12	Fengdan	1	[{"added": {}}]	13	43
2229	2024-05-08 13:17:26.754272+00	6c778bac-1cec-4c7e-bbc3-b2bb9b2b7a3f	QL2028I (2024)	1	[{"added": {}}, {"added": {"name": "product image", "object": "QL2028I (2024) - product/QL2028I (2024)/QL2028I2024_1.png"}}, {"added": {"name": "product image", "object": "QL2028I (2024) - product/QL2028I (2024)/QL2028I2024_3.png"}}, {"added": {"name": "product image", "object": "QL2028I (2024) - product/QL2028I (2024)/QL2028I2024_4.png"}}]	14	43
2230	2024-05-08 13:28:59.073214+00	344b0ada-ad4a-44d0-8926-45747d63fc3d	QL2028I	1	[{"added": {}}, {"added": {"name": "product image", "object": "QL2028I - product/QL2028I/QL2028I__2.png"}}, {"added": {"name": "product image", "object": "QL2028I - product/QL2028I/QL2028I__3.png"}}, {"added": {"name": "product image", "object": "QL2028I - product/QL2028I/QL2028I_1.png"}}]	14	43
2231	2024-05-08 13:42:43.384841+00	d3bab673-8754-4199-ba97-1a4355aabb2a	M200 Luxury	1	[{"added": {}}, {"added": {"name": "product image", "object": "M200 Luxury - product/M200 Luxury/M200_Luxury_1.png"}}, {"added": {"name": "product image", "object": "M200 Luxury - product/M200 Luxury/M200_Luxury_6.png"}}, {"added": {"name": "product image", "object": "M200 Luxury - product/M200 Luxury/M200_Luxury_4.png"}}, {"added": {"name": "product image", "object": "M200 Luxury - product/M200 Luxury/M200_Luxury_9.png"}}]	14	43
2232	2024-05-08 13:52:20.766905+00	5a804616-2297-4fcb-9ce2-63d3b27ba670	Mitex High Quality Bone Caliber Type 1	1	[{"added": {}}, {"added": {"name": "product image", "object": "Mitex High Quality Bone Caliber Type 1 - product/Mitex High Quality Bone Caliber Type 1/Mitex_high_quality_bone_caliber_1_sRAR1tO.jpeg"}}]	14	43
2233	2024-05-08 13:52:26.810955+00	00a43ab5-5193-4327-9503-52fcd5e42fd4	Mitex High Quality Bone Caliber Type 1	3		14	43
2234	2024-05-08 13:54:37.764941+00	19f82948-49f5-4b6d-9def-d4b9fc472569	Mitex High Quality Probe	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2235	2024-05-08 13:55:03.976948+00	1bac82fa-09fc-4380-bb67-c1bf1527b2de	Mitex High Quality Osteotome Kit 6 Pcs	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2236	2024-05-08 13:55:20.307018+00	2db70914-086f-41d7-8479-395e950b2c4a	Mitex High Quality Bone Caliber Type 3	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2237	2024-05-08 13:55:49.267151+00	3d121bc6-7c33-4c65-bc72-7c04955c2054	Mitex High Quality Bone Rongeur Forceps	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2238	2024-05-08 13:56:07.736159+00	3e5d56a9-bebe-49db-8260-b34c40fc00dd	Mitex High Quality Sugar Man	2	[]	14	43
2239	2024-05-08 13:56:46.571259+00	4d4b566a-7f2f-4cb4-9f4b-0efe78711b37	Mitex High Quality Tofflemire Elliot	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2240	2024-05-08 13:57:10.500917+00	575378cf-827d-4cc9-b6f9-4a26a0f047a1	Mitex High Quality Excavator Spoon	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2241	2024-05-08 13:57:30.451675+00	5a78157b-e53c-4bf8-bd39-53a1a7e0afab	Mitex High Quality Bone Caliber Type 2	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2242	2024-05-08 13:57:59.989502+00	6b325af2-2631-4b57-9c04-939d79f9f5d4	Mitex High Quality Plastic Filling Applicator	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2243	2024-05-08 13:58:17.209079+00	7b5d9ddc-62da-4f60-8ed9-bf24bfbb70ad	Mitex High Quality Mirror	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2244	2024-05-08 13:58:36.800281+00	a03d6be6-7279-451e-b8b9-c0e5c61c23d2	Mitex High Quality Gold Plated Probe	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2245	2024-05-08 13:58:57.894724+00	b30d23ba-e3e1-4200-83e7-ef28cc6d4396	Mitex High Quality Bone Curette	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2246	2024-05-08 13:59:14.566495+00	c7d518c1-4eeb-4f27-b5f7-363e99b6b4e1	Mitex High Quality Minnesota Retractor	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2247	2024-05-08 13:59:31.023754+00	dc0c5748-79b0-4ccd-a887-17992973ec44	Mitex High Quality Bone Caliber Type 4	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2248	2024-05-08 14:00:36.859437+00	08100b85-8b18-4e30-9a0b-f82d9941f3a2	Mitex Tweezer Without Lock	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2249	2024-05-08 14:00:51.695717+00	09865735-20dd-4dac-8b4c-bca2db20ee22	Mitex Egg Burnisher	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2250	2024-05-08 14:03:44.207245+00	0cfc9b1f-c44d-4e61-8e94-c40007f3016a	Mitex Crown Removal Automatic	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2251	2024-05-08 14:21:49.954542+00	0cfc9b1f-c44d-4e61-8e94-c40007f3016a	Mitex Crown Removal Automatic	2	[]	14	43
2252	2024-05-08 14:22:09.821229+00	0f1ed33e-bd0b-4cc3-974c-965f31b6ed7f	Mitex Hand Blade	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2253	2024-05-08 14:22:31.622987+00	1b452c9f-26cc-4345-955a-21db1a6728b3	Mitex Wax Carver Large	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2254	2024-05-08 14:22:48.005038+00	201ca028-e09e-43c7-927a-50c664a1febc	Mitex Sickle Scaler	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2255	2024-05-08 14:23:09.428096+00	27fc5ba6-9f46-45e7-8d69-7f44265d089c	Mitex Tray	2	[]	14	43
2256	2024-05-08 14:23:25.17779+00	52448f20-d6c7-4281-b1c2-831055256820	Mitex Probe	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2257	2024-05-08 14:23:44.626177+00	6958730d-712b-48de-b4eb-4c3276783913	Mitex Straight Elevator Flat Tip	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2258	2024-05-08 14:24:05.077952+00	6cd62507-9d16-4ecd-a49e-2cb1760ce9c7	Mitex Epxo Elevator	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2259	2024-05-08 14:24:25.872008+00	6db57dfd-0e24-4b46-a3b0-2a24d4c54c0e	Mitex Tweezer With Lock	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2260	2024-05-08 14:24:52.874621+00	799585f3-2e30-4f6c-9d3f-9f3fe914d8e6	Mitex Bone Caliber	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2261	2024-05-08 14:25:15.931635+00	836f1a60-1ecf-4ae1-91a0-2b804c7962ec	Mitex Straight elevator	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2262	2024-05-08 14:25:38.826411+00	88983a7c-3802-40bf-b4d4-3ba94ae9a8a0	Mitex Cement Spatula	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2263	2024-05-08 14:25:58.696946+00	91d14421-9142-4eab-a60c-ee247e91a152	Mitex Probe Straight Tip	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2264	2024-05-08 14:26:24.583322+00	94333fdf-5206-449f-8073-de1cb8a510c0	Mitex Ball Burnisher	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2265	2024-05-08 14:28:42.313119+00	a0175062-7d89-4b03-afec-19114a6fc351	Mitex Carver Hollen Back	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2266	2024-05-08 14:28:58.273704+00	abce7c74-c4c0-4cf6-b031-369bb38b2b0c	Mitex Wax Knife	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2267	2024-05-08 14:29:19.377091+00	aee5b759-7d6d-4d5c-82c7-0c50c2bc522e	Mitex Tray Kit 6 Pcs	2	[]	14	43
2271	2024-05-08 14:31:16.291868+00	be79edd2-7a90-4f91-9a4e-e77a34cbcebb	Mitex Excavator Spoon	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2272	2024-05-08 14:31:34.454895+00	c9750cc0-021b-42f5-915c-147747c93ce4	Mitex Elevator kit 3 Pcs	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2273	2024-05-08 14:31:54.297022+00	ca4d268e-fae8-4b0b-8af0-267f57676729	Mitex Plastic Instrument	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2274	2024-05-08 14:32:08.603638+00	cf494fe0-5968-48e3-85ea-72cde3f17953	Mitex Cryer Elevator	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2275	2024-05-08 14:32:25.115243+00	cfcbfd80-8b58-4933-ad5e-e88af2037ce0	Mitex Mirror Hand	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2276	2024-05-08 14:32:41.580136+00	d0c3db45-e5c0-4b98-aebe-4761ae6806da	Mitex Bone File	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2277	2024-05-08 14:32:55.97687+00	d1200e85-1411-4f0d-b9a1-7a8351464449	Mitex Periodontal Probe	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2278	2024-05-08 14:33:10.566659+00	d75eb98c-7eb4-4415-ad1d-8db45f61046e	Mitex Conical Burnisher	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2279	2024-05-08 14:33:23.608794+00	fd9f4617-8630-4094-9d99-66eaaf7f60c9	Mitex Curette	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2280	2024-05-08 14:34:27.410351+00	2fb8b9d9-68bf-4036-884e-6c7be7e4ae8e	Dream Plastic Filling Instrument	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2281	2024-05-08 14:34:42.193215+00	2fce73dc-c0f5-4d1b-865d-d601602a422e	Dream Ball Burnisher	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2282	2024-05-08 14:34:56.243669+00	34f0e5cd-de60-40e0-87d9-8e96f4a8856a	Dream Root Fragment Forceps	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2283	2024-05-08 14:35:07.292813+00	36b6f8e1-1968-4d38-9055-5ae5d3eb9a64	Dream Wax Knife Small	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2284	2024-05-08 14:35:27.287609+00	37549217-7118-48bb-8365-178c19a61e68	Dream Tofflemire Retainer	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2285	2024-05-08 14:35:41.45126+00	43aed322-ae25-430f-b2ab-5ee9313ea10f	Dream Conical Carver	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2286	2024-05-08 14:35:54.76509+00	448cacdb-fd57-434f-89e0-35b8de702edf	Dream Luxator	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2287	2024-05-08 14:36:06.068801+00	4d8ec8e0-4091-417f-81a3-b9c0b87228cb	Dream Wax Carver Small	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2288	2024-05-08 14:36:20.881525+00	52c58aab-8ef0-41eb-801b-a9a8bc6bbf89	Dream CAOH Applicator Double End	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2289	2024-05-08 14:36:33.671046+00	5fae3560-899c-425a-a3b5-7a99f5882325	Dream Straight Elevator	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2290	2024-05-08 14:36:56.338478+00	65e40683-fb89-4b6d-b0b7-fffa068fe0c7	Dream Hand Blade	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2291	2024-05-08 14:37:08.735473+00	6b8aef76-2a19-4766-80ed-479505270d75	Dream Wax Carver Small	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2292	2024-05-08 14:37:20.880407+00	7f5f16e9-e518-4c3a-8e2f-7f2dc5853ce9	Dream Sickle Scaler	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2293	2024-05-08 14:37:34.23722+00	80cf4b5a-0393-426a-a597-9aa6712e8e5a	Dream Wax Dropper	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2294	2024-05-08 14:37:45.172645+00	8c84019c-2d5a-45f9-8453-9bd75c545ef3	Dream Curette	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2295	2024-05-08 14:37:58.01815+00	8d4799c9-5254-4c43-9166-9289733397e1	Dream Spatula	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2296	2024-05-08 14:38:19.010985+00	937d4a67-0216-491f-a094-ce814a9e1d98	Dream Wax Knife	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2297	2024-05-08 14:38:36.774063+00	b3516012-b5b7-4ef9-a4ba-caea0c80d2a1	Dream Elevator kit 8 Pcs	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2298	2024-05-08 14:38:54.026007+00	b472d3e4-e905-4d03-86d7-42670297e79f	Dream Periodontal Probe	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2299	2024-05-08 14:39:07.748979+00	b4d4a5a0-3bb9-4155-9372-e442e2622f80	Dream Condenser	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2300	2024-05-08 14:39:20.995465+00	b64830f0-41b4-4ef7-9d16-52d207ecb6cd	Dream Wax Carver large	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2301	2024-05-08 14:39:36.318017+00	b65b3293-8434-4a66-9333-0775b074d432	Dream Probe	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2302	2024-05-08 14:39:51.224261+00	baedc9b4-d471-4195-8772-af0e7afd36ff	Dream Amalgam Carrier	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2303	2024-05-08 14:40:02.785163+00	c0e2f3d9-71df-4a35-9503-b63a86b34cae	Dream Mirror Hand	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2304	2024-05-08 14:40:15.067397+00	d7c4a204-eb6b-4503-ac77-002f67200f9d	Dream conical Burnisher	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2305	2024-05-08 14:40:26.903584+00	d836fe46-0be4-4832-834b-e2577ab2b67b	Dream Carver Hollen Back	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2306	2024-05-08 14:40:43.26618+00	d97387f5-c4ce-4dda-a7c5-b9496c63e0e6	Dream Bone Caliber	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2307	2024-05-08 14:40:58.706796+00	e093e5f8-4513-49cc-b4f4-bb2996ec72e3	Dream Curved Root Fragment Forceps	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2308	2024-05-08 14:41:14.140165+00	f36f4386-7779-4a9b-9144-bba493af9478	Dream Cement Spatula	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2309	2024-05-08 14:41:27.708659+00	f4c8a3a7-1a45-41f2-8d95-61564a685232	Dream Tofflemire	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2310	2024-05-08 14:41:41.376008+00	f6033476-e780-4579-849e-79249898c646	Dream Elevator EPXO	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2311	2024-05-08 14:41:56.017652+00	fc8a0b53-e04e-425b-b937-15f9da139fb5	Dream Tweezer	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2312	2024-05-08 14:42:05.746218+00	f6033476-e780-4579-849e-79249898c646	Dream Elevator EPXO	2	[]	14	43
2313	2024-05-08 14:42:16.228253+00	fc8a0b53-e04e-425b-b937-15f9da139fb5	Dream Tweezer	2	[]	14	43
2314	2024-05-08 14:54:22.147946+00	344b0ada-ad4a-44d0-8926-45747d63fc3d	QL2028I	2	[{"changed": {"fields": ["Product item title"]}}, {"added": {"name": "product item", "object": "QL2028I Dark blue"}}, {"added": {"name": "product item", "object": "QL2028I Light blue"}}, {"added": {"name": "product item", "object": "QL2028I Turquoise"}}, {"added": {"name": "product item", "object": "QL2028I Orange"}}, {"added": {"name": "product item", "object": "QL2028I burgundy"}}]	14	43
2315	2024-05-08 14:55:08.884369+00	344b0ada-ad4a-44d0-8926-45747d63fc3d	QL2028I	2	[{"changed": {"name": "product item", "object": "QL2028I Burgundy", "fields": ["Species"]}}]	14	43
2316	2024-05-11 10:15:08.272765+00	287	User: karim - Order Code: fc8814802024 - Date: 2024-05-11 - Register ID: None	3		43	43
2317	2024-05-11 10:15:08.282016+00	286	User: karim - Order Code: 1618618a2024 - Date: 2024-05-07 - Register ID: None	3		43	43
2318	2024-05-11 10:15:08.283015+00	285	User: Ahmed Khattab - Order Code: ad1bf74b2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2319	2024-05-11 10:15:08.283844+00	284	User: karim - Order Code: b6119cca2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2320	2024-05-11 10:15:08.284672+00	283	User: Ahmed Khattab - Order Code: 1dbdaa342024 - Date: 2024-04-30 - Register ID: None	3		43	43
2321	2024-05-11 10:15:08.285491+00	282	User: Ahmed Khattab - Order Code: 071d9a052024 - Date: 2024-04-30 - Register ID: None	3		43	43
2322	2024-05-11 10:15:08.28639+00	281	User: karim - Order Code: b896023a2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2323	2024-05-11 10:15:08.287609+00	280	User: karim - Order Code: 39553b1d2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2324	2024-05-11 10:15:08.288356+00	279	User: karim - Order Code: 98f19cb52024 - Date: 2024-04-30 - Register ID: None	3		43	43
2325	2024-05-11 10:15:08.289248+00	278	User: karim - Order Code: f42dc84e2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2326	2024-05-11 10:15:08.290116+00	277	User: karim - Order Code: 21c307562024 - Date: 2024-04-30 - Register ID: None	3		43	43
2327	2024-05-11 10:15:08.291019+00	276	User: karim - Order Code: 99d41aa32024 - Date: 2024-04-30 - Register ID: None	3		43	43
2328	2024-05-11 10:15:08.291968+00	275	User: Ahmed Khattab - Order Code: c36f21192024 - Date: 2024-04-24 - Register ID: None	3		43	43
2329	2024-05-11 10:15:08.292724+00	274	User: Ahmed Khattab - Order Code: fcfb90ee2024 - Date: 2024-04-24 - Register ID: None	3		43	43
2330	2024-05-11 10:15:08.293447+00	273	User: Ahmed Khattab - Order Code: 5d936e162024 - Date: 2024-04-24 - Register ID: None	3		43	43
2331	2024-05-11 10:15:08.29452+00	272	User: Ahmed Khattab - Order Code: f3ae4d612024 - Date: 2024-04-24 - Register ID: None	3		43	43
2332	2024-05-11 10:15:08.295219+00	271	User: Ahmed Khattab - Order Code: 6fb714e92024 - Date: 2024-04-24 - Register ID: None	3		43	43
2333	2024-05-11 10:15:08.296065+00	270	User: Ahmed Khattab - Order Code: b803ff442023 - Date: 2023-12-02 - Register ID: None	3		43	43
2334	2024-05-11 10:15:08.296994+00	269	User: Ahmed Khattab - Order Code: 249b1b2a2023 - Date: 2023-11-19 - Register ID: None	3		43	43
2335	2024-05-11 10:15:08.297861+00	268	User: Ahmed Khattab - Order Code: 12b2d56e2023 - Date: 2023-11-19 - Register ID: None	3		43	43
2336	2024-05-11 10:15:08.298571+00	267	User: Ahmed Khattab - Order Code: faf0387e2023 - Date: 2023-11-01 - Register ID: None	3		43	43
2337	2024-05-11 10:15:08.299274+00	266	User: Ahmed Khattab - Order Code: 509188a52023 - Date: 2023-10-30 - Register ID: None	3		43	43
2338	2024-05-11 10:15:08.300102+00	265	User: Ahmed Khattab - Order Code: 57df83c52023 - Date: 2023-10-30 - Register ID: None	3		43	43
2339	2024-05-11 10:15:08.300812+00	264	User: Ahmed Khattab - Order Code: be348fe02023 - Date: 2023-10-30 - Register ID: None	3		43	43
2340	2024-05-11 10:15:08.301526+00	263	User: Ahmed Khattab - Order Code: be5be63d2023 - Date: 2023-10-30 - Register ID: None	3		43	43
2341	2024-05-11 10:15:08.302219+00	262	User: Ahmed Khattab - Order Code: b982ad402023 - Date: 2023-10-30 - Register ID: None	3		43	43
2342	2024-05-11 10:15:08.302922+00	261	User: Ahmed Khattab - Order Code: b948928b2023 - Date: 2023-10-30 - Register ID: None	3		43	43
2343	2024-05-11 10:15:08.30379+00	249	User: Ahmed Khattab - Order Code: f808fb612023 - Date: 2023-10-03 - Register ID: c2fa0686-9d5a-4dfa-aabf-a4ecfa20b607	3		43	43
2344	2024-05-11 10:15:08.304487+00	248	User: Ahmed Khattab - Order Code: 4d3462272023 - Date: 2023-09-26 - Register ID: None	3		43	43
2345	2024-05-11 10:15:08.305325+00	247	User: Ahmed Khattab - Order Code: 3d64e2862023 - Date: 2023-09-17 - Register ID: None	3		43	43
2346	2024-05-11 10:15:08.306518+00	246	User: Ahmed Khattab - Order Code: bfc0bd862023 - Date: 2023-09-12 - Register ID: None	3		43	43
2347	2024-05-11 10:15:08.307323+00	245	User: youssef - Order Code: e1a436c62023 - Date: 2023-09-11 - Register ID: None	3		43	43
2348	2024-05-11 10:15:08.308308+00	244	User: Ahmed Khattab - Order Code: f8fd1b892023 - Date: 2023-09-11 - Register ID: None	3		43	43
2349	2024-05-11 10:15:08.309057+00	243	User: Ahmed Khattab - Order Code: b0d45f992023 - Date: 2023-09-11 - Register ID: None	3		43	43
2350	2024-05-11 10:15:08.309774+00	242	User: youssef - Order Code: 74707f6a2023 - Date: 2023-09-10 - Register ID: None	3		43	43
2351	2024-05-11 10:15:08.310476+00	241	User: youssef - Order Code: 3ea751722023 - Date: 2023-09-10 - Register ID: None	3		43	43
2352	2024-05-11 10:15:08.311202+00	240	User: youssef - Order Code: 620d48212023 - Date: 2023-09-10 - Register ID: None	3		43	43
2353	2024-05-11 10:15:08.312121+00	239	User: youssef - Order Code: 232c5a9f2023 - Date: 2023-09-10 - Register ID: None	3		43	43
2354	2024-05-11 10:15:08.312866+00	238	User: youssef - Order Code: f71df6372023 - Date: 2023-09-10 - Register ID: None	3		43	43
2355	2024-05-11 10:15:08.313781+00	237	User: youssef - Order Code: b6add8fb2023 - Date: 2023-09-10 - Register ID: None	3		43	43
2356	2024-05-11 10:15:08.314498+00	236	User: youssef - Order Code: 6b4645af2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2357	2024-05-11 10:15:08.315306+00	235	User: youssef - Order Code: a442aa3d2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2358	2024-05-11 10:15:08.316082+00	234	User: youssef - Order Code: 0b0084152023 - Date: 2023-08-24 - Register ID: None	3		43	43
2359	2024-05-11 10:15:08.317012+00	233	User: youssef - Order Code: 29b98ae42023 - Date: 2023-08-24 - Register ID: None	3		43	43
2360	2024-05-11 10:15:08.317737+00	232	User: youssef - Order Code: da8be7462023 - Date: 2023-08-24 - Register ID: None	3		43	43
2361	2024-05-11 10:15:08.318454+00	231	User: youssef - Order Code: c38553412023 - Date: 2023-08-24 - Register ID: None	3		43	43
2362	2024-05-11 10:15:08.319201+00	230	User: youssef - Order Code: 3abe5b922023 - Date: 2023-08-24 - Register ID: None	3		43	43
2363	2024-05-11 10:15:08.320022+00	229	User: youssef - Order Code: 37c734e72023 - Date: 2023-08-24 - Register ID: None	3		43	43
2364	2024-05-11 10:15:08.320927+00	228	User: youssef - Order Code: 2ef3c7632023 - Date: 2023-08-24 - Register ID: None	3		43	43
2365	2024-05-11 10:15:08.321671+00	227	User: youssef - Order Code: 2f05a3382023 - Date: 2023-08-24 - Register ID: None	3		43	43
2366	2024-05-11 10:15:08.322396+00	226	User: youssef - Order Code: 1d69ded12023 - Date: 2023-08-24 - Register ID: None	3		43	43
2367	2024-05-11 10:15:08.323114+00	225	User: youssef - Order Code: 957bb5262023 - Date: 2023-08-24 - Register ID: None	3		43	43
2368	2024-05-11 10:15:08.323835+00	224	User: youssef - Order Code: cf168eff2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2369	2024-05-11 10:15:08.324653+00	223	User: youssef - Order Code: a1e8d54d2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2370	2024-05-11 10:15:08.325404+00	222	User: youssef - Order Code: 355e0a392023 - Date: 2023-08-24 - Register ID: None	3		43	43
2371	2024-05-11 10:15:08.32618+00	221	User: youssef - Order Code: ca2086c02023 - Date: 2023-08-24 - Register ID: None	3		43	43
2372	2024-05-11 10:15:08.326944+00	220	User: youssef - Order Code: 65e9d6d92023 - Date: 2023-08-24 - Register ID: None	3		43	43
2373	2024-05-11 10:15:08.327885+00	219	User: youssef - Order Code: 315ca4dc2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2374	2024-05-11 10:15:08.328801+00	218	User: youssef - Order Code: 2486d49c2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2375	2024-05-11 10:15:08.329636+00	217	User: youssef - Order Code: 23648dd62023 - Date: 2023-08-24 - Register ID: None	3		43	43
2376	2024-05-11 10:15:08.330352+00	216	User: Ahmed Khattab - Order Code: 0420516e2023 - Date: 2023-07-11 - Register ID: None	3		43	43
2377	2024-05-11 10:15:08.331064+00	215	User: Ahmed Khattab - Order Code: 08183f822023 - Date: 2023-07-11 - Register ID: None	3		43	43
2378	2024-05-11 10:15:08.332089+00	214	User: karim - Order Code: 6e4fcae32023 - Date: 2023-07-11 - Register ID: None	3		43	43
2379	2024-05-11 10:15:08.332845+00	213	User: Ahmed Khattab - Order Code: a3da629c2023 - Date: 2023-07-11 - Register ID: None	3		43	43
2380	2024-05-11 10:15:08.333579+00	212	User: karim - Order Code: 832c5aaa2023 - Date: 2023-07-11 - Register ID: None	3		43	43
2381	2024-05-11 10:15:08.33429+00	211	User: Ahmed Khattab - Order Code: d16be0b42023 - Date: 2023-07-09 - Register ID: None	3		43	43
2382	2024-05-11 10:15:08.335058+00	210	User: Ahmed Khattab - Order Code: 6c2393042023 - Date: 2023-07-09 - Register ID: None	3		43	43
2383	2024-05-11 10:15:08.335971+00	209	User: karim - Order Code: f1be7da22023 - Date: 2023-07-09 - Register ID: None	3		43	43
2384	2024-05-11 10:15:08.336884+00	208	User: karim - Order Code: ae5a39fb2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2385	2024-05-11 10:15:08.337757+00	207	User: karim - Order Code: 03dcfc182023 - Date: 2023-07-09 - Register ID: None	3		43	43
2386	2024-05-11 10:15:08.338471+00	206	User: karim - Order Code: f024d4fa2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2387	2024-05-11 10:15:08.339279+00	205	User: youssef - Order Code: 2ee5500d2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2388	2024-05-11 10:15:08.340117+00	204	User: youssef - Order Code: 68de997b2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2389	2024-05-11 10:15:08.341019+00	203	User: youssef - Order Code: 4cbce8ac2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2390	2024-05-11 10:15:08.341925+00	202	User: youssef - Order Code: d9b21ac02023 - Date: 2023-07-09 - Register ID: None	3		43	43
2391	2024-05-11 10:15:08.342834+00	201	User: youssef - Order Code: 18ba40442023 - Date: 2023-07-09 - Register ID: None	3		43	43
2392	2024-05-11 10:15:08.34355+00	200	User: youssef - Order Code: 1b6d2f962023 - Date: 2023-07-09 - Register ID: None	3		43	43
2393	2024-05-11 10:15:08.344328+00	199	User: youssef - Order Code: 7e7fce6b2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2394	2024-05-11 10:15:08.345752+00	198	User: Ahmed Khattab - Order Code: f32036152023 - Date: 2023-06-12 - Register ID: None	3		43	43
2395	2024-05-11 10:15:08.346516+00	197	User: Ahmed Khattab - Order Code: 56ff59942023 - Date: 2023-06-12 - Register ID: None	3		43	43
2396	2024-05-11 10:15:08.347731+00	196	User: Ahmed Khattab - Order Code: ff2adf822023 - Date: 2023-06-12 - Register ID: None	3		43	43
2397	2024-05-11 10:15:08.348471+00	195	User: youssef - Order Code: bb5bad7a2023 - Date: 2023-05-30 - Register ID: None	3		43	43
2398	2024-05-11 10:15:08.349252+00	194	User: karim - Order Code: 0ea119482023 - Date: 2023-05-30 - Register ID: None	3		43	43
2399	2024-05-11 10:15:08.350166+00	193	User: mousa nageh - Order Code: cfbe61852023 - Date: 2023-05-23 - Register ID: None	3		43	43
2400	2024-05-11 10:15:08.351024+00	192	User: mousa nageh - Order Code: be50bc4b2023 - Date: 2023-05-23 - Register ID: None	3		43	43
2401	2024-05-11 10:15:08.352248+00	191	User: mousa nageh - Order Code: 55bacc4a2023 - Date: 2023-05-23 - Register ID: None	3		43	43
2402	2024-05-11 10:15:14.517917+00	287	User: karim - Order Code: fc8814802024 - Date: 2024-05-11 - Register ID: None	3		43	43
2403	2024-05-11 10:15:14.520574+00	286	User: karim - Order Code: 1618618a2024 - Date: 2024-05-07 - Register ID: None	3		43	43
2404	2024-05-11 10:15:14.521733+00	285	User: Ahmed Khattab - Order Code: ad1bf74b2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2405	2024-05-11 10:15:14.522622+00	284	User: karim - Order Code: b6119cca2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2406	2024-05-11 10:15:14.523506+00	283	User: Ahmed Khattab - Order Code: 1dbdaa342024 - Date: 2024-04-30 - Register ID: None	3		43	43
2407	2024-05-11 10:15:14.524363+00	282	User: Ahmed Khattab - Order Code: 071d9a052024 - Date: 2024-04-30 - Register ID: None	3		43	43
2408	2024-05-11 10:15:14.525435+00	281	User: karim - Order Code: b896023a2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2409	2024-05-11 10:15:14.526397+00	280	User: karim - Order Code: 39553b1d2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2410	2024-05-11 10:15:14.527187+00	279	User: karim - Order Code: 98f19cb52024 - Date: 2024-04-30 - Register ID: None	3		43	43
2411	2024-05-11 10:15:14.527963+00	278	User: karim - Order Code: f42dc84e2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2412	2024-05-11 10:15:14.528742+00	277	User: karim - Order Code: 21c307562024 - Date: 2024-04-30 - Register ID: None	3		43	43
2413	2024-05-11 10:15:14.52953+00	276	User: karim - Order Code: 99d41aa32024 - Date: 2024-04-30 - Register ID: None	3		43	43
2414	2024-05-11 10:15:14.530291+00	275	User: Ahmed Khattab - Order Code: c36f21192024 - Date: 2024-04-24 - Register ID: None	3		43	43
2415	2024-05-11 10:15:14.531059+00	274	User: Ahmed Khattab - Order Code: fcfb90ee2024 - Date: 2024-04-24 - Register ID: None	3		43	43
2416	2024-05-11 10:15:14.532297+00	273	User: Ahmed Khattab - Order Code: 5d936e162024 - Date: 2024-04-24 - Register ID: None	3		43	43
2417	2024-05-11 10:15:14.533084+00	272	User: Ahmed Khattab - Order Code: f3ae4d612024 - Date: 2024-04-24 - Register ID: None	3		43	43
2418	2024-05-11 10:15:14.534034+00	271	User: Ahmed Khattab - Order Code: 6fb714e92024 - Date: 2024-04-24 - Register ID: None	3		43	43
2419	2024-05-11 10:15:14.534957+00	270	User: Ahmed Khattab - Order Code: b803ff442023 - Date: 2023-12-02 - Register ID: None	3		43	43
2420	2024-05-11 10:15:14.53572+00	269	User: Ahmed Khattab - Order Code: 249b1b2a2023 - Date: 2023-11-19 - Register ID: None	3		43	43
2421	2024-05-11 10:15:14.53755+00	268	User: Ahmed Khattab - Order Code: 12b2d56e2023 - Date: 2023-11-19 - Register ID: None	3		43	43
2422	2024-05-11 10:15:14.538462+00	267	User: Ahmed Khattab - Order Code: faf0387e2023 - Date: 2023-11-01 - Register ID: None	3		43	43
2423	2024-05-11 10:15:14.539367+00	266	User: Ahmed Khattab - Order Code: 509188a52023 - Date: 2023-10-30 - Register ID: None	3		43	43
2424	2024-05-11 10:15:14.540509+00	265	User: Ahmed Khattab - Order Code: 57df83c52023 - Date: 2023-10-30 - Register ID: None	3		43	43
2425	2024-05-11 10:15:14.541419+00	264	User: Ahmed Khattab - Order Code: be348fe02023 - Date: 2023-10-30 - Register ID: None	3		43	43
2426	2024-05-11 10:15:14.542198+00	263	User: Ahmed Khattab - Order Code: be5be63d2023 - Date: 2023-10-30 - Register ID: None	3		43	43
2427	2024-05-11 10:15:14.5431+00	262	User: Ahmed Khattab - Order Code: b982ad402023 - Date: 2023-10-30 - Register ID: None	3		43	43
2428	2024-05-11 10:15:14.543981+00	261	User: Ahmed Khattab - Order Code: b948928b2023 - Date: 2023-10-30 - Register ID: None	3		43	43
2429	2024-05-11 10:15:14.54492+00	249	User: Ahmed Khattab - Order Code: f808fb612023 - Date: 2023-10-03 - Register ID: c2fa0686-9d5a-4dfa-aabf-a4ecfa20b607	3		43	43
2430	2024-05-11 10:15:14.545674+00	248	User: Ahmed Khattab - Order Code: 4d3462272023 - Date: 2023-09-26 - Register ID: None	3		43	43
2431	2024-05-11 10:15:14.546734+00	247	User: Ahmed Khattab - Order Code: 3d64e2862023 - Date: 2023-09-17 - Register ID: None	3		43	43
2432	2024-05-11 10:15:14.548541+00	246	User: Ahmed Khattab - Order Code: bfc0bd862023 - Date: 2023-09-12 - Register ID: None	3		43	43
2433	2024-05-11 10:15:14.549565+00	245	User: youssef - Order Code: e1a436c62023 - Date: 2023-09-11 - Register ID: None	3		43	43
2434	2024-05-11 10:15:14.550575+00	244	User: Ahmed Khattab - Order Code: f8fd1b892023 - Date: 2023-09-11 - Register ID: None	3		43	43
2435	2024-05-11 10:15:14.551647+00	243	User: Ahmed Khattab - Order Code: b0d45f992023 - Date: 2023-09-11 - Register ID: None	3		43	43
2436	2024-05-11 10:15:14.552582+00	242	User: youssef - Order Code: 74707f6a2023 - Date: 2023-09-10 - Register ID: None	3		43	43
2437	2024-05-11 10:15:14.5535+00	241	User: youssef - Order Code: 3ea751722023 - Date: 2023-09-10 - Register ID: None	3		43	43
2438	2024-05-11 10:15:14.554405+00	240	User: youssef - Order Code: 620d48212023 - Date: 2023-09-10 - Register ID: None	3		43	43
2439	2024-05-11 10:15:14.555326+00	239	User: youssef - Order Code: 232c5a9f2023 - Date: 2023-09-10 - Register ID: None	3		43	43
2440	2024-05-11 10:15:14.556838+00	238	User: youssef - Order Code: f71df6372023 - Date: 2023-09-10 - Register ID: None	3		43	43
2441	2024-05-11 10:15:14.557607+00	237	User: youssef - Order Code: b6add8fb2023 - Date: 2023-09-10 - Register ID: None	3		43	43
2442	2024-05-11 10:15:14.558357+00	236	User: youssef - Order Code: 6b4645af2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2443	2024-05-11 10:15:14.559113+00	235	User: youssef - Order Code: a442aa3d2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2444	2024-05-11 10:15:14.559994+00	234	User: youssef - Order Code: 0b0084152023 - Date: 2023-08-24 - Register ID: None	3		43	43
2445	2024-05-11 10:15:14.560757+00	233	User: youssef - Order Code: 29b98ae42023 - Date: 2023-08-24 - Register ID: None	3		43	43
2446	2024-05-11 10:15:14.561512+00	232	User: youssef - Order Code: da8be7462023 - Date: 2023-08-24 - Register ID: None	3		43	43
2447	2024-05-11 10:15:14.562438+00	231	User: youssef - Order Code: c38553412023 - Date: 2023-08-24 - Register ID: None	3		43	43
2448	2024-05-11 10:15:14.563382+00	230	User: youssef - Order Code: 3abe5b922023 - Date: 2023-08-24 - Register ID: None	3		43	43
2449	2024-05-11 10:15:14.564135+00	229	User: youssef - Order Code: 37c734e72023 - Date: 2023-08-24 - Register ID: None	3		43	43
2450	2024-05-11 10:15:14.565076+00	228	User: youssef - Order Code: 2ef3c7632023 - Date: 2023-08-24 - Register ID: None	3		43	43
2451	2024-05-11 10:15:14.566079+00	227	User: youssef - Order Code: 2f05a3382023 - Date: 2023-08-24 - Register ID: None	3		43	43
2452	2024-05-11 10:15:14.567076+00	226	User: youssef - Order Code: 1d69ded12023 - Date: 2023-08-24 - Register ID: None	3		43	43
2453	2024-05-11 10:15:14.567847+00	225	User: youssef - Order Code: 957bb5262023 - Date: 2023-08-24 - Register ID: None	3		43	43
2454	2024-05-11 10:15:14.5686+00	224	User: youssef - Order Code: cf168eff2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2455	2024-05-11 10:15:14.569582+00	223	User: youssef - Order Code: a1e8d54d2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2456	2024-05-11 10:15:14.570521+00	222	User: youssef - Order Code: 355e0a392023 - Date: 2023-08-24 - Register ID: None	3		43	43
2457	2024-05-11 10:15:14.571439+00	221	User: youssef - Order Code: ca2086c02023 - Date: 2023-08-24 - Register ID: None	3		43	43
2458	2024-05-11 10:15:14.572313+00	220	User: youssef - Order Code: 65e9d6d92023 - Date: 2023-08-24 - Register ID: None	3		43	43
2459	2024-05-11 10:15:14.573074+00	219	User: youssef - Order Code: 315ca4dc2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2460	2024-05-11 10:15:14.573951+00	218	User: youssef - Order Code: 2486d49c2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2461	2024-05-11 10:15:14.574998+00	217	User: youssef - Order Code: 23648dd62023 - Date: 2023-08-24 - Register ID: None	3		43	43
2462	2024-05-11 10:15:14.575754+00	216	User: Ahmed Khattab - Order Code: 0420516e2023 - Date: 2023-07-11 - Register ID: None	3		43	43
2463	2024-05-11 10:15:14.576536+00	215	User: Ahmed Khattab - Order Code: 08183f822023 - Date: 2023-07-11 - Register ID: None	3		43	43
2464	2024-05-11 10:15:14.577322+00	214	User: karim - Order Code: 6e4fcae32023 - Date: 2023-07-11 - Register ID: None	3		43	43
2465	2024-05-11 10:15:14.578228+00	213	User: Ahmed Khattab - Order Code: a3da629c2023 - Date: 2023-07-11 - Register ID: None	3		43	43
2466	2024-05-11 10:15:14.579152+00	212	User: karim - Order Code: 832c5aaa2023 - Date: 2023-07-11 - Register ID: None	3		43	43
2467	2024-05-11 10:15:14.580096+00	211	User: Ahmed Khattab - Order Code: d16be0b42023 - Date: 2023-07-09 - Register ID: None	3		43	43
2468	2024-05-11 10:15:14.58085+00	210	User: Ahmed Khattab - Order Code: 6c2393042023 - Date: 2023-07-09 - Register ID: None	3		43	43
2469	2024-05-11 10:15:14.581616+00	209	User: karim - Order Code: f1be7da22023 - Date: 2023-07-09 - Register ID: None	3		43	43
2470	2024-05-11 10:15:14.582496+00	208	User: karim - Order Code: ae5a39fb2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2471	2024-05-11 10:15:14.583357+00	207	User: karim - Order Code: 03dcfc182023 - Date: 2023-07-09 - Register ID: None	3		43	43
2472	2024-05-11 10:15:14.584443+00	206	User: karim - Order Code: f024d4fa2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2473	2024-05-11 10:15:14.585237+00	205	User: youssef - Order Code: 2ee5500d2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2474	2024-05-11 10:15:14.586154+00	204	User: youssef - Order Code: 68de997b2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2475	2024-05-11 10:15:14.586943+00	203	User: youssef - Order Code: 4cbce8ac2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2476	2024-05-11 10:15:14.587692+00	202	User: youssef - Order Code: d9b21ac02023 - Date: 2023-07-09 - Register ID: None	3		43	43
2477	2024-05-11 10:15:14.588563+00	201	User: youssef - Order Code: 18ba40442023 - Date: 2023-07-09 - Register ID: None	3		43	43
2478	2024-05-11 10:15:14.589331+00	200	User: youssef - Order Code: 1b6d2f962023 - Date: 2023-07-09 - Register ID: None	3		43	43
2479	2024-05-11 10:15:14.590225+00	199	User: youssef - Order Code: 7e7fce6b2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2480	2024-05-11 10:15:14.591187+00	198	User: Ahmed Khattab - Order Code: f32036152023 - Date: 2023-06-12 - Register ID: None	3		43	43
2481	2024-05-11 10:15:14.59194+00	197	User: Ahmed Khattab - Order Code: 56ff59942023 - Date: 2023-06-12 - Register ID: None	3		43	43
2482	2024-05-11 10:15:14.592701+00	196	User: Ahmed Khattab - Order Code: ff2adf822023 - Date: 2023-06-12 - Register ID: None	3		43	43
2483	2024-05-11 10:15:14.593478+00	195	User: youssef - Order Code: bb5bad7a2023 - Date: 2023-05-30 - Register ID: None	3		43	43
2484	2024-05-11 10:15:14.59429+00	194	User: karim - Order Code: 0ea119482023 - Date: 2023-05-30 - Register ID: None	3		43	43
2485	2024-05-11 10:15:14.595194+00	193	User: mousa nageh - Order Code: cfbe61852023 - Date: 2023-05-23 - Register ID: None	3		43	43
2486	2024-05-11 10:15:14.596131+00	192	User: mousa nageh - Order Code: be50bc4b2023 - Date: 2023-05-23 - Register ID: None	3		43	43
2487	2024-05-11 10:15:14.59697+00	191	User: mousa nageh - Order Code: 55bacc4a2023 - Date: 2023-05-23 - Register ID: None	3		43	43
2488	2024-05-11 10:15:40.268417+00	287	User: karim - Order Code: fc8814802024 - Date: 2024-05-11 - Register ID: None	3		43	43
2489	2024-05-11 10:15:40.270856+00	286	User: karim - Order Code: 1618618a2024 - Date: 2024-05-07 - Register ID: None	3		43	43
2490	2024-05-11 10:15:40.27182+00	285	User: Ahmed Khattab - Order Code: ad1bf74b2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2491	2024-05-11 10:15:40.273033+00	284	User: karim - Order Code: b6119cca2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2492	2024-05-11 10:15:40.274998+00	283	User: Ahmed Khattab - Order Code: 1dbdaa342024 - Date: 2024-04-30 - Register ID: None	3		43	43
2493	2024-05-11 10:15:40.275923+00	282	User: Ahmed Khattab - Order Code: 071d9a052024 - Date: 2024-04-30 - Register ID: None	3		43	43
2494	2024-05-11 10:15:40.277331+00	281	User: karim - Order Code: b896023a2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2495	2024-05-11 10:15:40.278171+00	280	User: karim - Order Code: 39553b1d2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2496	2024-05-11 10:15:40.278945+00	279	User: karim - Order Code: 98f19cb52024 - Date: 2024-04-30 - Register ID: None	3		43	43
2497	2024-05-11 10:15:40.279934+00	278	User: karim - Order Code: f42dc84e2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2498	2024-05-11 10:15:40.280747+00	277	User: karim - Order Code: 21c307562024 - Date: 2024-04-30 - Register ID: None	3		43	43
2499	2024-05-11 10:15:40.281722+00	276	User: karim - Order Code: 99d41aa32024 - Date: 2024-04-30 - Register ID: None	3		43	43
2500	2024-05-11 10:15:40.282512+00	275	User: Ahmed Khattab - Order Code: c36f21192024 - Date: 2024-04-24 - Register ID: None	3		43	43
2501	2024-05-11 10:15:40.283666+00	274	User: Ahmed Khattab - Order Code: fcfb90ee2024 - Date: 2024-04-24 - Register ID: None	3		43	43
2502	2024-05-11 10:15:40.284532+00	273	User: Ahmed Khattab - Order Code: 5d936e162024 - Date: 2024-04-24 - Register ID: None	3		43	43
2503	2024-05-11 10:15:40.285477+00	272	User: Ahmed Khattab - Order Code: f3ae4d612024 - Date: 2024-04-24 - Register ID: None	3		43	43
2504	2024-05-11 10:15:40.286811+00	271	User: Ahmed Khattab - Order Code: 6fb714e92024 - Date: 2024-04-24 - Register ID: None	3		43	43
2505	2024-05-11 10:15:40.287803+00	270	User: Ahmed Khattab - Order Code: b803ff442023 - Date: 2023-12-02 - Register ID: None	3		43	43
2506	2024-05-11 10:15:40.288802+00	269	User: Ahmed Khattab - Order Code: 249b1b2a2023 - Date: 2023-11-19 - Register ID: None	3		43	43
2507	2024-05-11 10:15:40.289775+00	268	User: Ahmed Khattab - Order Code: 12b2d56e2023 - Date: 2023-11-19 - Register ID: None	3		43	43
2508	2024-05-11 10:15:40.290747+00	267	User: Ahmed Khattab - Order Code: faf0387e2023 - Date: 2023-11-01 - Register ID: None	3		43	43
2509	2024-05-11 10:15:40.291544+00	266	User: Ahmed Khattab - Order Code: 509188a52023 - Date: 2023-10-30 - Register ID: None	3		43	43
2510	2024-05-11 10:15:40.292442+00	265	User: Ahmed Khattab - Order Code: 57df83c52023 - Date: 2023-10-30 - Register ID: None	3		43	43
2511	2024-05-11 10:15:40.293214+00	264	User: Ahmed Khattab - Order Code: be348fe02023 - Date: 2023-10-30 - Register ID: None	3		43	43
2512	2024-05-11 10:15:40.293978+00	263	User: Ahmed Khattab - Order Code: be5be63d2023 - Date: 2023-10-30 - Register ID: None	3		43	43
2513	2024-05-11 10:15:40.294772+00	262	User: Ahmed Khattab - Order Code: b982ad402023 - Date: 2023-10-30 - Register ID: None	3		43	43
2514	2024-05-11 10:15:40.295738+00	261	User: Ahmed Khattab - Order Code: b948928b2023 - Date: 2023-10-30 - Register ID: None	3		43	43
2515	2024-05-11 10:15:40.296514+00	249	User: Ahmed Khattab - Order Code: f808fb612023 - Date: 2023-10-03 - Register ID: c2fa0686-9d5a-4dfa-aabf-a4ecfa20b607	3		43	43
2516	2024-05-11 10:15:40.297319+00	248	User: Ahmed Khattab - Order Code: 4d3462272023 - Date: 2023-09-26 - Register ID: None	3		43	43
2517	2024-05-11 10:15:40.298074+00	247	User: Ahmed Khattab - Order Code: 3d64e2862023 - Date: 2023-09-17 - Register ID: None	3		43	43
2518	2024-05-11 10:15:40.298833+00	246	User: Ahmed Khattab - Order Code: bfc0bd862023 - Date: 2023-09-12 - Register ID: None	3		43	43
2519	2024-05-11 10:15:40.299613+00	245	User: youssef - Order Code: e1a436c62023 - Date: 2023-09-11 - Register ID: None	3		43	43
2520	2024-05-11 10:15:40.300357+00	244	User: Ahmed Khattab - Order Code: f8fd1b892023 - Date: 2023-09-11 - Register ID: None	3		43	43
2521	2024-05-11 10:15:40.301147+00	243	User: Ahmed Khattab - Order Code: b0d45f992023 - Date: 2023-09-11 - Register ID: None	3		43	43
2522	2024-05-11 10:15:40.301891+00	242	User: youssef - Order Code: 74707f6a2023 - Date: 2023-09-10 - Register ID: None	3		43	43
2523	2024-05-11 10:15:40.302635+00	241	User: youssef - Order Code: 3ea751722023 - Date: 2023-09-10 - Register ID: None	3		43	43
2524	2024-05-11 10:15:40.30338+00	240	User: youssef - Order Code: 620d48212023 - Date: 2023-09-10 - Register ID: None	3		43	43
2525	2024-05-11 10:15:40.304119+00	239	User: youssef - Order Code: 232c5a9f2023 - Date: 2023-09-10 - Register ID: None	3		43	43
2526	2024-05-11 10:15:40.30489+00	238	User: youssef - Order Code: f71df6372023 - Date: 2023-09-10 - Register ID: None	3		43	43
2527	2024-05-11 10:15:40.305653+00	237	User: youssef - Order Code: b6add8fb2023 - Date: 2023-09-10 - Register ID: None	3		43	43
2528	2024-05-11 10:15:40.306421+00	236	User: youssef - Order Code: 6b4645af2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2529	2024-05-11 10:15:40.30758+00	235	User: youssef - Order Code: a442aa3d2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2530	2024-05-11 10:15:40.308362+00	234	User: youssef - Order Code: 0b0084152023 - Date: 2023-08-24 - Register ID: None	3		43	43
2531	2024-05-11 10:15:40.309124+00	233	User: youssef - Order Code: 29b98ae42023 - Date: 2023-08-24 - Register ID: None	3		43	43
2532	2024-05-11 10:15:40.309886+00	232	User: youssef - Order Code: da8be7462023 - Date: 2023-08-24 - Register ID: None	3		43	43
2533	2024-05-11 10:15:40.310659+00	231	User: youssef - Order Code: c38553412023 - Date: 2023-08-24 - Register ID: None	3		43	43
2534	2024-05-11 10:15:40.311409+00	230	User: youssef - Order Code: 3abe5b922023 - Date: 2023-08-24 - Register ID: None	3		43	43
2535	2024-05-11 10:15:40.312289+00	229	User: youssef - Order Code: 37c734e72023 - Date: 2023-08-24 - Register ID: None	3		43	43
2536	2024-05-11 10:15:40.313053+00	228	User: youssef - Order Code: 2ef3c7632023 - Date: 2023-08-24 - Register ID: None	3		43	43
2537	2024-05-11 10:15:40.313791+00	227	User: youssef - Order Code: 2f05a3382023 - Date: 2023-08-24 - Register ID: None	3		43	43
2538	2024-05-11 10:15:40.314544+00	226	User: youssef - Order Code: 1d69ded12023 - Date: 2023-08-24 - Register ID: None	3		43	43
2539	2024-05-11 10:15:40.315627+00	225	User: youssef - Order Code: 957bb5262023 - Date: 2023-08-24 - Register ID: None	3		43	43
2540	2024-05-11 10:15:40.320337+00	224	User: youssef - Order Code: cf168eff2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2541	2024-05-11 10:15:40.322883+00	223	User: youssef - Order Code: a1e8d54d2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2542	2024-05-11 10:15:40.323691+00	222	User: youssef - Order Code: 355e0a392023 - Date: 2023-08-24 - Register ID: None	3		43	43
2543	2024-05-11 10:15:40.324583+00	221	User: youssef - Order Code: ca2086c02023 - Date: 2023-08-24 - Register ID: None	3		43	43
2544	2024-05-11 10:15:40.325395+00	220	User: youssef - Order Code: 65e9d6d92023 - Date: 2023-08-24 - Register ID: None	3		43	43
2545	2024-05-11 10:15:40.326335+00	219	User: youssef - Order Code: 315ca4dc2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2546	2024-05-11 10:15:40.327294+00	218	User: youssef - Order Code: 2486d49c2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2547	2024-05-11 10:15:40.32827+00	217	User: youssef - Order Code: 23648dd62023 - Date: 2023-08-24 - Register ID: None	3		43	43
2548	2024-05-11 10:15:40.329295+00	216	User: Ahmed Khattab - Order Code: 0420516e2023 - Date: 2023-07-11 - Register ID: None	3		43	43
2549	2024-05-11 10:15:40.330075+00	215	User: Ahmed Khattab - Order Code: 08183f822023 - Date: 2023-07-11 - Register ID: None	3		43	43
2550	2024-05-11 10:15:40.331016+00	214	User: karim - Order Code: 6e4fcae32023 - Date: 2023-07-11 - Register ID: None	3		43	43
2551	2024-05-11 10:15:40.331775+00	213	User: Ahmed Khattab - Order Code: a3da629c2023 - Date: 2023-07-11 - Register ID: None	3		43	43
2552	2024-05-11 10:15:40.332526+00	212	User: karim - Order Code: 832c5aaa2023 - Date: 2023-07-11 - Register ID: None	3		43	43
2553	2024-05-11 10:15:40.333636+00	211	User: Ahmed Khattab - Order Code: d16be0b42023 - Date: 2023-07-09 - Register ID: None	3		43	43
2554	2024-05-11 10:15:40.334417+00	210	User: Ahmed Khattab - Order Code: 6c2393042023 - Date: 2023-07-09 - Register ID: None	3		43	43
2555	2024-05-11 10:15:40.335183+00	209	User: karim - Order Code: f1be7da22023 - Date: 2023-07-09 - Register ID: None	3		43	43
2556	2024-05-11 10:15:40.33594+00	208	User: karim - Order Code: ae5a39fb2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2557	2024-05-11 10:15:40.336788+00	207	User: karim - Order Code: 03dcfc182023 - Date: 2023-07-09 - Register ID: None	3		43	43
2558	2024-05-11 10:15:40.337579+00	206	User: karim - Order Code: f024d4fa2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2559	2024-05-11 10:15:40.33836+00	205	User: youssef - Order Code: 2ee5500d2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2560	2024-05-11 10:15:40.339138+00	204	User: youssef - Order Code: 68de997b2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2561	2024-05-11 10:15:40.340085+00	203	User: youssef - Order Code: 4cbce8ac2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2562	2024-05-11 10:15:40.341042+00	202	User: youssef - Order Code: d9b21ac02023 - Date: 2023-07-09 - Register ID: None	3		43	43
2563	2024-05-11 10:15:40.341977+00	201	User: youssef - Order Code: 18ba40442023 - Date: 2023-07-09 - Register ID: None	3		43	43
2564	2024-05-11 10:15:40.342919+00	200	User: youssef - Order Code: 1b6d2f962023 - Date: 2023-07-09 - Register ID: None	3		43	43
2565	2024-05-11 10:15:40.343671+00	199	User: youssef - Order Code: 7e7fce6b2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2566	2024-05-11 10:15:40.344427+00	198	User: Ahmed Khattab - Order Code: f32036152023 - Date: 2023-06-12 - Register ID: None	3		43	43
2567	2024-05-11 10:15:40.345896+00	197	User: Ahmed Khattab - Order Code: 56ff59942023 - Date: 2023-06-12 - Register ID: None	3		43	43
2568	2024-05-11 10:15:40.346682+00	196	User: Ahmed Khattab - Order Code: ff2adf822023 - Date: 2023-06-12 - Register ID: None	3		43	43
2569	2024-05-11 10:15:40.347453+00	195	User: youssef - Order Code: bb5bad7a2023 - Date: 2023-05-30 - Register ID: None	3		43	43
2570	2024-05-11 10:15:40.348221+00	194	User: karim - Order Code: 0ea119482023 - Date: 2023-05-30 - Register ID: None	3		43	43
2571	2024-05-11 10:15:40.349187+00	193	User: mousa nageh - Order Code: cfbe61852023 - Date: 2023-05-23 - Register ID: None	3		43	43
2572	2024-05-11 10:15:40.349938+00	192	User: mousa nageh - Order Code: be50bc4b2023 - Date: 2023-05-23 - Register ID: None	3		43	43
2573	2024-05-11 10:15:40.350908+00	191	User: mousa nageh - Order Code: 55bacc4a2023 - Date: 2023-05-23 - Register ID: None	3		43	43
2574	2024-05-11 11:20:15.061779+00	02ffb0de-2d99-46a5-86ab-26493f8528bc	PT-A	2	[{"changed": {"fields": ["Sale price"]}}]	14	43
2575	2024-05-11 11:21:05.257841+00	02ffb0de-2d99-46a5-86ab-26493f8528bc	PT-A	2	[{"changed": {"fields": ["Sale price"]}}]	14	43
2576	2024-05-11 11:35:49.575658+00	18	home/home-swiper/WhatsApp_Image_2024-05-11_at_00.27.20.jpeg	1	[{"added": {}}]	46	43
2577	2024-05-13 08:34:41.07857+00	02ffb0de-2d99-46a5-86ab-26493f8528bc	PT-A	2	[{"changed": {"fields": ["Sale price"]}}]	14	43
2578	2024-05-13 08:39:24.574646+00	287	User: karim - Order Code: fc8814802024 - Date: 2024-05-11 - Register ID: None	3		43	43
2579	2024-05-13 08:39:24.578209+00	286	User: karim - Order Code: 1618618a2024 - Date: 2024-05-07 - Register ID: None	3		43	43
2580	2024-05-13 08:39:24.579207+00	285	User: Ahmed Khattab - Order Code: ad1bf74b2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2581	2024-05-13 08:39:24.580131+00	284	User: karim - Order Code: b6119cca2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2582	2024-05-13 08:39:24.581014+00	283	User: Ahmed Khattab - Order Code: 1dbdaa342024 - Date: 2024-04-30 - Register ID: None	3		43	43
2583	2024-05-13 08:39:24.581868+00	282	User: Ahmed Khattab - Order Code: 071d9a052024 - Date: 2024-04-30 - Register ID: None	3		43	43
2584	2024-05-13 08:39:24.582728+00	281	User: karim - Order Code: b896023a2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2585	2024-05-13 08:39:24.583528+00	280	User: karim - Order Code: 39553b1d2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2586	2024-05-13 08:39:24.584292+00	279	User: karim - Order Code: 98f19cb52024 - Date: 2024-04-30 - Register ID: None	3		43	43
2587	2024-05-13 08:39:24.585232+00	278	User: karim - Order Code: f42dc84e2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2588	2024-05-13 08:39:24.585989+00	277	User: karim - Order Code: 21c307562024 - Date: 2024-04-30 - Register ID: None	3		43	43
2589	2024-05-13 08:39:24.586968+00	276	User: karim - Order Code: 99d41aa32024 - Date: 2024-04-30 - Register ID: None	3		43	43
2590	2024-05-13 08:39:24.587876+00	275	User: Ahmed Khattab - Order Code: c36f21192024 - Date: 2024-04-24 - Register ID: None	3		43	43
2591	2024-05-13 08:39:24.588804+00	274	User: Ahmed Khattab - Order Code: fcfb90ee2024 - Date: 2024-04-24 - Register ID: None	3		43	43
2592	2024-05-13 08:39:24.589754+00	273	User: Ahmed Khattab - Order Code: 5d936e162024 - Date: 2024-04-24 - Register ID: None	3		43	43
2593	2024-05-13 08:39:24.591331+00	272	User: Ahmed Khattab - Order Code: f3ae4d612024 - Date: 2024-04-24 - Register ID: None	3		43	43
2594	2024-05-13 08:39:24.592202+00	271	User: Ahmed Khattab - Order Code: 6fb714e92024 - Date: 2024-04-24 - Register ID: None	3		43	43
2595	2024-05-13 08:39:24.592991+00	270	User: Ahmed Khattab - Order Code: b803ff442023 - Date: 2023-12-02 - Register ID: None	3		43	43
2596	2024-05-13 08:39:24.593934+00	269	User: Ahmed Khattab - Order Code: 249b1b2a2023 - Date: 2023-11-19 - Register ID: None	3		43	43
2597	2024-05-13 08:39:24.594862+00	268	User: Ahmed Khattab - Order Code: 12b2d56e2023 - Date: 2023-11-19 - Register ID: None	3		43	43
2598	2024-05-13 08:39:24.595738+00	267	User: Ahmed Khattab - Order Code: faf0387e2023 - Date: 2023-11-01 - Register ID: None	3		43	43
2599	2024-05-13 08:39:24.596663+00	266	User: Ahmed Khattab - Order Code: 509188a52023 - Date: 2023-10-30 - Register ID: None	3		43	43
2600	2024-05-13 08:39:24.597978+00	265	User: Ahmed Khattab - Order Code: 57df83c52023 - Date: 2023-10-30 - Register ID: None	3		43	43
2601	2024-05-13 08:39:24.598931+00	264	User: Ahmed Khattab - Order Code: be348fe02023 - Date: 2023-10-30 - Register ID: None	3		43	43
2602	2024-05-13 08:39:24.599668+00	263	User: Ahmed Khattab - Order Code: be5be63d2023 - Date: 2023-10-30 - Register ID: None	3		43	43
2603	2024-05-13 08:39:24.600601+00	262	User: Ahmed Khattab - Order Code: b982ad402023 - Date: 2023-10-30 - Register ID: None	3		43	43
2604	2024-05-13 08:39:24.602215+00	261	User: Ahmed Khattab - Order Code: b948928b2023 - Date: 2023-10-30 - Register ID: None	3		43	43
2605	2024-05-13 08:39:24.603076+00	249	User: Ahmed Khattab - Order Code: f808fb612023 - Date: 2023-10-03 - Register ID: c2fa0686-9d5a-4dfa-aabf-a4ecfa20b607	3		43	43
2606	2024-05-13 08:39:24.603941+00	248	User: Ahmed Khattab - Order Code: 4d3462272023 - Date: 2023-09-26 - Register ID: None	3		43	43
2607	2024-05-13 08:39:24.604751+00	247	User: Ahmed Khattab - Order Code: 3d64e2862023 - Date: 2023-09-17 - Register ID: None	3		43	43
2608	2024-05-13 08:39:24.605487+00	246	User: Ahmed Khattab - Order Code: bfc0bd862023 - Date: 2023-09-12 - Register ID: None	3		43	43
2609	2024-05-13 08:39:24.606642+00	245	User: youssef - Order Code: e1a436c62023 - Date: 2023-09-11 - Register ID: None	3		43	43
2610	2024-05-13 08:39:24.607402+00	244	User: Ahmed Khattab - Order Code: f8fd1b892023 - Date: 2023-09-11 - Register ID: None	3		43	43
2611	2024-05-13 08:39:24.608194+00	243	User: Ahmed Khattab - Order Code: b0d45f992023 - Date: 2023-09-11 - Register ID: None	3		43	43
2612	2024-05-13 08:39:24.609054+00	242	User: youssef - Order Code: 74707f6a2023 - Date: 2023-09-10 - Register ID: None	3		43	43
2613	2024-05-13 08:39:24.609947+00	241	User: youssef - Order Code: 3ea751722023 - Date: 2023-09-10 - Register ID: None	3		43	43
2614	2024-05-13 08:39:24.611997+00	240	User: youssef - Order Code: 620d48212023 - Date: 2023-09-10 - Register ID: None	3		43	43
2615	2024-05-13 08:39:24.612962+00	239	User: youssef - Order Code: 232c5a9f2023 - Date: 2023-09-10 - Register ID: None	3		43	43
2616	2024-05-13 08:39:24.613714+00	238	User: youssef - Order Code: f71df6372023 - Date: 2023-09-10 - Register ID: None	3		43	43
2617	2024-05-13 08:39:24.614453+00	237	User: youssef - Order Code: b6add8fb2023 - Date: 2023-09-10 - Register ID: None	3		43	43
2618	2024-05-13 08:39:24.615181+00	236	User: youssef - Order Code: 6b4645af2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2619	2024-05-13 08:39:24.615908+00	235	User: youssef - Order Code: a442aa3d2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2620	2024-05-13 08:39:24.616855+00	234	User: youssef - Order Code: 0b0084152023 - Date: 2023-08-24 - Register ID: None	3		43	43
2621	2024-05-13 08:39:24.617588+00	233	User: youssef - Order Code: 29b98ae42023 - Date: 2023-08-24 - Register ID: None	3		43	43
2622	2024-05-13 08:39:24.618308+00	232	User: youssef - Order Code: da8be7462023 - Date: 2023-08-24 - Register ID: None	3		43	43
2623	2024-05-13 08:39:24.619455+00	231	User: youssef - Order Code: c38553412023 - Date: 2023-08-24 - Register ID: None	3		43	43
2624	2024-05-13 08:39:24.620287+00	230	User: youssef - Order Code: 3abe5b922023 - Date: 2023-08-24 - Register ID: None	3		43	43
2625	2024-05-13 08:39:24.621041+00	229	User: youssef - Order Code: 37c734e72023 - Date: 2023-08-24 - Register ID: None	3		43	43
2626	2024-05-13 08:39:24.621778+00	228	User: youssef - Order Code: 2ef3c7632023 - Date: 2023-08-24 - Register ID: None	3		43	43
2627	2024-05-13 08:39:24.622503+00	227	User: youssef - Order Code: 2f05a3382023 - Date: 2023-08-24 - Register ID: None	3		43	43
2628	2024-05-13 08:39:24.623236+00	226	User: youssef - Order Code: 1d69ded12023 - Date: 2023-08-24 - Register ID: None	3		43	43
2629	2024-05-13 08:39:24.62396+00	225	User: youssef - Order Code: 957bb5262023 - Date: 2023-08-24 - Register ID: None	3		43	43
2630	2024-05-13 08:39:24.624702+00	224	User: youssef - Order Code: cf168eff2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2631	2024-05-13 08:39:24.625433+00	223	User: youssef - Order Code: a1e8d54d2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2632	2024-05-13 08:39:24.632687+00	222	User: youssef - Order Code: 355e0a392023 - Date: 2023-08-24 - Register ID: None	3		43	43
2633	2024-05-13 08:39:24.633539+00	221	User: youssef - Order Code: ca2086c02023 - Date: 2023-08-24 - Register ID: None	3		43	43
2634	2024-05-13 08:39:24.634322+00	220	User: youssef - Order Code: 65e9d6d92023 - Date: 2023-08-24 - Register ID: None	3		43	43
2635	2024-05-13 08:39:24.635099+00	219	User: youssef - Order Code: 315ca4dc2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2636	2024-05-13 08:39:24.636051+00	218	User: youssef - Order Code: 2486d49c2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2637	2024-05-13 08:39:24.63705+00	217	User: youssef - Order Code: 23648dd62023 - Date: 2023-08-24 - Register ID: None	3		43	43
2638	2024-05-13 08:39:24.63784+00	216	User: Ahmed Khattab - Order Code: 0420516e2023 - Date: 2023-07-11 - Register ID: None	3		43	43
2639	2024-05-13 08:39:24.640867+00	215	User: Ahmed Khattab - Order Code: 08183f822023 - Date: 2023-07-11 - Register ID: None	3		43	43
2640	2024-05-13 08:39:24.641853+00	214	User: karim - Order Code: 6e4fcae32023 - Date: 2023-07-11 - Register ID: None	3		43	43
2641	2024-05-13 08:39:24.642819+00	213	User: Ahmed Khattab - Order Code: a3da629c2023 - Date: 2023-07-11 - Register ID: None	3		43	43
2642	2024-05-13 08:39:24.643578+00	212	User: karim - Order Code: 832c5aaa2023 - Date: 2023-07-11 - Register ID: None	3		43	43
2643	2024-05-13 08:39:24.644338+00	211	User: Ahmed Khattab - Order Code: d16be0b42023 - Date: 2023-07-09 - Register ID: None	3		43	43
2644	2024-05-13 08:39:24.645309+00	210	User: Ahmed Khattab - Order Code: 6c2393042023 - Date: 2023-07-09 - Register ID: None	3		43	43
2645	2024-05-13 08:39:24.646204+00	209	User: karim - Order Code: f1be7da22023 - Date: 2023-07-09 - Register ID: None	3		43	43
2646	2024-05-13 08:39:24.654036+00	208	User: karim - Order Code: ae5a39fb2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2647	2024-05-13 08:39:24.654891+00	207	User: karim - Order Code: 03dcfc182023 - Date: 2023-07-09 - Register ID: None	3		43	43
2648	2024-05-13 08:39:24.655976+00	206	User: karim - Order Code: f024d4fa2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2649	2024-05-13 08:39:24.656887+00	205	User: youssef - Order Code: 2ee5500d2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2650	2024-05-13 08:39:24.657687+00	204	User: youssef - Order Code: 68de997b2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2651	2024-05-13 08:39:24.658416+00	203	User: youssef - Order Code: 4cbce8ac2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2652	2024-05-13 08:39:24.659132+00	202	User: youssef - Order Code: d9b21ac02023 - Date: 2023-07-09 - Register ID: None	3		43	43
2653	2024-05-13 08:39:24.659946+00	201	User: youssef - Order Code: 18ba40442023 - Date: 2023-07-09 - Register ID: None	3		43	43
2654	2024-05-13 08:39:24.660716+00	200	User: youssef - Order Code: 1b6d2f962023 - Date: 2023-07-09 - Register ID: None	3		43	43
2655	2024-05-13 08:39:24.661453+00	199	User: youssef - Order Code: 7e7fce6b2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2656	2024-05-13 08:39:24.662169+00	198	User: Ahmed Khattab - Order Code: f32036152023 - Date: 2023-06-12 - Register ID: None	3		43	43
2657	2024-05-13 08:39:24.663077+00	197	User: Ahmed Khattab - Order Code: 56ff59942023 - Date: 2023-06-12 - Register ID: None	3		43	43
2658	2024-05-13 08:39:24.663931+00	196	User: Ahmed Khattab - Order Code: ff2adf822023 - Date: 2023-06-12 - Register ID: None	3		43	43
2659	2024-05-13 08:39:24.664776+00	195	User: youssef - Order Code: bb5bad7a2023 - Date: 2023-05-30 - Register ID: None	3		43	43
2660	2024-05-13 08:39:24.665486+00	194	User: karim - Order Code: 0ea119482023 - Date: 2023-05-30 - Register ID: None	3		43	43
2661	2024-05-13 08:39:24.666258+00	193	User: mousa nageh - Order Code: cfbe61852023 - Date: 2023-05-23 - Register ID: None	3		43	43
2662	2024-05-13 08:39:24.667275+00	192	User: mousa nageh - Order Code: be50bc4b2023 - Date: 2023-05-23 - Register ID: None	3		43	43
2663	2024-05-13 08:39:24.6681+00	191	User: mousa nageh - Order Code: 55bacc4a2023 - Date: 2023-05-23 - Register ID: None	3		43	43
2664	2024-05-13 08:42:45.666638+00	62	01066136325	1	[{"added": {}}]	21	43
2665	2024-05-13 08:44:20.559985+00	62	01066136325	2	[{"changed": {"fields": ["Name", "Email", "Is active", "Is staff"]}}]	21	43
2666	2024-05-13 08:45:06.211235+00	62	01066136325	2	[{"changed": {"fields": ["Superuser status"]}}]	21	43
2667	2024-05-13 08:57:48.883661+00	1	Testimonial object (1)	2	[{"changed": {"fields": ["Image"]}}]	10	43
2668	2024-05-13 09:13:24.840532+00	1	About Uss	2	[{"changed": {"fields": ["About title"]}}]	9	43
2669	2024-05-13 09:13:36.560306+00	1	About Us	2	[{"changed": {"fields": ["About title"]}}]	9	43
2670	2024-05-13 13:35:00.212001+00	10c5f969-8707-4049-a1c8-6c02bd0b08c0	UltraPak Cord	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2671	2024-05-13 13:35:17.843482+00	12a5c096-dc52-4ecd-8620-159f8cb4aa5c	Fischer's Ultrapak Packers (Small)	2	[{"changed": {"fields": ["Weight"]}}]	14	43
2672	2024-05-13 13:35:39.169582+00	10c5f969-8707-4049-a1c8-6c02bd0b08c0	UltraPak Cord	2	[{"changed": {"fields": ["Stock"]}}]	14	43
2673	2024-05-13 13:35:50.239501+00	12a5c096-dc52-4ecd-8620-159f8cb4aa5c	Fischer's Ultrapak Packers (Small)	2	[{"changed": {"fields": ["Stock"]}}]	14	43
2674	2024-05-13 13:37:08.729877+00	08e0a9ea-7a5a-47fc-9bc9-836db8dcf639	Sof-Tray Classic sheets 2ml pack	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2675	2024-05-13 13:37:39.984377+00	141f2ff2-d24b-4722-b023-7ed84a1211ca	EndoEze Irrigator tips	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2676	2024-05-13 13:38:36.934561+00	16e91f84-28c5-4520-8f97-4bcb856c6d66	Ultra-Etch	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2677	2024-05-13 13:39:39.766564+00	1c1b7a27-3989-4a20-85af-8e2029445f16	Sectional Matrix regular extended refill 40 pk	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2678	2024-05-13 13:42:12.222264+00	25ff79c4-b491-469d-a028-2f351cfef310	Navi Tip 31 ga 27mm	2	[{"changed": {"fields": ["Stock"]}}]	14	43
2679	2024-05-13 13:43:20.266695+00	2994a972-217a-4130-9668-2029dfc503cd	Ultraez Tray	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2680	2024-05-13 13:43:56.389568+00	2b7c020e-a2ea-4a1d-9a22-f0d22e3db8dd	Endo-Eze Ruler	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2681	2024-05-13 13:44:45.90726+00	3a48b362-1765-408a-a61d-4ca37b0b840f	Permashade Translucent	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2682	2024-05-13 13:45:31.92834+00	3e47d619-a402-437f-88c4-6a6a21543682	Prop Gard Ref	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2683	2024-05-13 13:46:21.044326+00	3f109677-dbe7-419a-8538-e7b7eda4b4f5	U Veneer Extra Kit	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2684	2024-05-13 13:46:48.783311+00	48167df7-8048-4dfa-99f5-95a9be38eeb9	White mac tips	2	[{"changed": {"fields": ["Stock"]}}]	14	43
2685	2024-05-13 13:47:24.803591+00	50556a75-a48a-42fa-9027-a9ae100e6e0c	Sof-Tray Classic Sheets 1.5 ml Pack	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2686	2024-05-13 13:48:00.236148+00	55f09b5a-8290-4c30-b853-8c3d656e9f29	Sectional matrix large band extended 40 pk	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2687	2024-05-13 13:49:09.105419+00	58ca7c3c-7822-47ca-b73e-62fea5e6e07e	Viscostat	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2688	2024-05-13 13:49:41.852231+00	59d5bad2-1713-45a2-ac3b-12d9396742da	Navi Tip 30 ga 25mm	2	[{"changed": {"fields": ["Stock"]}}]	14	43
2689	2024-05-13 13:50:20.857762+00	5cb76719-aabd-4056-bccd-4d2dc49352a7	UltraEz	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2690	2024-05-13 13:50:55.348506+00	5cf260e6-192f-4774-a6c5-575a8d85c752	Opalescence Home 35%	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2691	2024-05-13 13:51:12.617168+00	630aed6f-ecb6-49e4-8450-0f993720c5cc	U Veneer Template Ref.	2	[{"changed": {"fields": ["Stock"]}}]	14	43
2692	2024-05-13 13:51:41.826297+00	6602eb8d-4194-485b-ae81-734a2288289c	Inspiral brush tips	2	[{"changed": {"fields": ["Stock"]}}]	14	43
2693	2024-05-13 13:52:19.685526+00	6627b142-84c1-44be-9e29-e75847261117	Fischer's Ultrapak Packers (Regular)	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2694	2024-05-13 13:52:49.271925+00	6a1c7ec4-1a7f-4593-b60f-6e965ee119d3	Opalustre	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2695	2024-05-13 13:53:12.873241+00	70575b1c-21d9-43d6-bd1d-f1ee00159f1e	Opal Dam	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2696	2024-05-13 13:53:54.476083+00	71ee3003-0bb0-4daa-b25b-a14480c6d316	Diamond Polish Mint	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2697	2024-05-13 13:54:27.581636+00	78b3c4fe-4161-4202-86b5-036fb690bab6	Consepsis Scrub Syr	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2698	2024-05-13 13:55:02.50235+00	79b5c943-441a-4074-a96b-644702352d36	Porcelain Etch	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2699	2024-05-13 13:56:40.971038+00	79c34e7b-35e7-48ea-bf99-e50a83395a57	Seek caries indicator	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2700	2024-05-13 13:57:08.170583+00	7a1bd1f9-e7f1-45c3-b98e-7f805379083d	Sable seek	2	[{"changed": {"fields": ["Stock"]}}]	14	43
2701	2024-05-13 13:59:40.28262+00	7faa53b5-945e-403c-a25d-077e7df0626f	Jiffy Polisher cups 20pk	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2702	2024-05-13 14:00:42.422551+00	807fd9ca-1c85-4f23-941f-29035abf6251	Black Mini Brush Tips	2	[{"changed": {"fields": ["Stock"]}}]	14	43
2703	2024-05-13 14:01:19.411689+00	877bab2d-716a-458d-9f98-1b36a738223d	Iso Block	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2704	2024-05-13 14:01:46.936719+00	91a103f0-ac9f-46fc-9512-10fdb6b92fc4	Black Micro Fx Tip	2	[{"changed": {"fields": ["Stock"]}}]	14	43
2705	2024-05-13 14:03:17.422253+00	96b49989-4417-41ef-b92c-56c3fb4ff5c8	Omni Matrix	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2706	2024-05-13 14:04:25.16403+00	a1f38695-6cc3-4c9a-9a4b-e4a920077ca2	Consepsis  inispense refill	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2707	2024-05-13 14:07:25.812849+00	a2ebe84b-5cb1-4b4d-95f7-50d195bd3ab3	Ultra Etch Ref.	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2708	2024-05-13 14:07:42.809374+00	a74c0f43-2e65-455a-ad26-cdcd5ecbd9e5	Gemini Uninitiated Tip 7mm	2	[{"changed": {"fields": ["Stock"]}}]	14	43
2709	2024-05-13 14:09:49.044976+00	b16afcec-f233-43a0-a14e-426d0246f9c7	Enamelast 5% Sodium Fluoride Varnish	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2759	2024-05-14 11:46:55.973569+00	6ae6175d-4d29-4723-a600-edb8849b8f8f	I Led-II	2	[{"changed": {"fields": ["Description", "Stock"]}}]	14	43
2760	2024-05-14 11:47:29.891815+00	a1c4f9f3-72af-4b94-b110-b57f743bba20	I-Led	2	[{"changed": {"fields": ["Description"]}}]	14	43
2761	2024-05-14 11:47:55.361498+00	cc28815e-7b14-44d4-b000-dacc6cf3b933	RTA	2	[{"changed": {"fields": ["Description"]}}]	14	43
2710	2024-05-13 14:11:28.833763+00	b28a8793-e9d0-4347-b694-07ad41f51069	UltraPak E Cord	2	[{"changed": {"fields": ["Weight", "Stock"]}}, {"changed": {"name": "product item", "object": "UltraPak E Cord #0", "fields": ["Stock"]}}, {"changed": {"name": "product item", "object": "UltraPak E Cord #00", "fields": ["Stock"]}}, {"changed": {"name": "product item", "object": "UltraPak E Cord #1", "fields": ["Stock"]}}, {"changed": {"name": "product item", "object": "UltraPak E Cord #2", "fields": ["Stock"]}}]	14	43
2711	2024-05-13 14:12:08.048407+00	b517116b-f0a7-4f16-a6eb-ab4dbb1b65b0	Opal cup finishing	2	[{"changed": {"fields": ["Stock"]}}]	14	43
2712	2024-05-13 14:13:21.827052+00	bbacf9b0-9f84-4680-b2c5-830feda86cfe	Permaseal	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2713	2024-05-13 14:13:45.520695+00	bc06f090-897b-43d1-93d1-57a8399352bb	Skini Syringe	2	[{"changed": {"fields": ["Stock"]}}]	14	43
2714	2024-05-13 14:14:07.191506+00	c33c46ec-7ddc-446d-863b-040a2569befc	Sof-Tray classic sheets 1 ml pack	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2715	2024-05-13 14:14:37.024132+00	c343b79f-64f7-45bf-98de-a275665425d5	Metal D.Infusor Tip Viscostat ref	2	[{"changed": {"fields": ["Stock"]}}]	14	43
2716	2024-05-13 14:14:57.747749+00	c381faaa-2d04-4727-9ff7-aa50315f6b8e	Ultradent L.C Block Out Resin	2	[{"changed": {"fields": ["Stock"]}}]	14	43
2717	2024-05-13 14:15:27.753464+00	c3f223f2-923d-41fd-aad8-a7edd3ce1e35	PermaFlo Pink	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2718	2024-05-13 14:16:31.93733+00	c65297ad-8096-4a04-81ac-90a5f7c5c9d1	Opalescence Pocket Tray	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2719	2024-05-13 14:16:54.375909+00	c94223f2-e770-4bfb-80ce-f34dbddaa289	Navi Tip 29g 21mm	2	[{"changed": {"fields": ["Stock"]}}]	14	43
2720	2024-05-13 14:17:22.794153+00	ca660de4-289b-4ae6-b223-715293fbe867	Navi Tip Fx 25 mm	2	[{"changed": {"fields": ["Stock"]}}]	14	43
2721	2024-05-13 14:17:46.867631+00	cc3e2e5e-9442-472a-9aa2-74ad27476c41	Umbrella	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2722	2024-05-13 14:18:28.944774+00	ccb4ee02-42fa-409f-baf4-1f41890934c5	Opal cup bristle	2	[{"changed": {"fields": ["Stock"]}}]	14	43
2723	2024-05-13 14:18:56.060784+00	dd9bb348-8a3a-4537-93ad-d8dadfadea9d	Opalescence Endo	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2724	2024-05-13 14:19:23.281504+00	ee138c5a-d287-44be-9b20-ba8bdc213dcd	Opalescence Boost	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2725	2024-05-13 14:20:00.391897+00	dfe5c687-7434-4aad-8b7d-7d292eb5d245	UltraCal XS	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2726	2024-05-13 14:25:13.021195+00	e1699a31-8ba1-4ebc-87df-cc471b5fb1a0	Silane	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2727	2024-05-13 14:25:42.059259+00	e2de746a-d381-43d5-8c5d-4e158156777a	Opalescence PF 20%	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2728	2024-05-13 14:26:44.690619+00	ef8ed366-4704-490a-9231-bbca77053143	PermaFlo A2	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2729	2024-05-13 14:27:09.402405+00	f118bce2-7f85-46cf-8f77-a24568b2069b	Viscostat Clear	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2730	2024-05-13 14:27:34.84766+00	f15092bf-fc31-446d-9822-d843a9d684b5	Black Micro Tip	2	[{"changed": {"fields": ["Stock"]}}]	14	43
2731	2024-05-13 14:27:50.604503+00	f3ca3322-edfb-4097-b6a1-8cfb5134e87f	NaviTips 29gg 27mm	2	[{"changed": {"fields": ["Stock"]}}]	14	43
2732	2024-05-13 14:28:39.15512+00	f4ebe4bc-c559-4aa4-b6cc-48fd7fa8bc66	Viscostat Clear indispense	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2733	2024-05-13 14:28:59.003218+00	fcabd953-b618-4dd2-b0dc-06c2a55e2af5	Shade guide cards	2	[{"changed": {"fields": ["Weight", "Stock"]}}]	14	43
2734	2024-05-14 07:34:13.922994+00	0156529b-593c-4576-89e2-182b0e917839	i-Sensor size 1	2	[]	14	43
2735	2024-05-14 08:03:04.983583+00	290	User: Ahmed Khattab - Order Code: c17380832024 - Date: 2024-05-13 - Register ID: None	3		43	43
2736	2024-05-14 08:03:14.069196+00	288	User: Ahmed Khattab - Order Code: c416952e2024 - Date: 2024-05-13 - Register ID: None	3		43	43
2737	2024-05-14 08:24:30.171509+00	1	Why KMC	2	[{"changed": {"fields": ["About title"]}}]	9	43
2738	2024-05-14 08:24:43.79241+00	1	Why KMC?	2	[{"changed": {"fields": ["About title"]}}]	9	43
2739	2024-05-14 09:29:54.992045+00	13	Huge	1	[{"added": {}}]	13	43
2740	2024-05-14 09:31:02.041402+00	70	Impression material	1	[{"added": {}}]	18	43
2741	2024-05-14 09:31:21.628739+00	13	HUGE	2	[{"changed": {"fields": ["Name"]}}]	13	43
2742	2024-05-14 09:44:07.59592+00	67ed33bc-6de3-40ff-8c01-a88382b17aa2	PERFIT set (B)	1	[{"added": {}}, {"added": {"name": "product image", "object": "PERFIT set (B) - product/PERFIT set (B)/_C8A9461.jpeg"}}, {"added": {"name": "product image", "object": "PERFIT set (B) - product/PERFIT set (B)/_C8A9490.jpeg"}}, {"added": {"name": "product image", "object": "PERFIT set (B) - product/PERFIT set (B)/Set_B.jpeg"}}, {"added": {"name": "product image", "object": "PERFIT set (B) - product/PERFIT set (B)/\\u5fae\\u4fe1\\u56fe\\u7247_20230515104144.png"}}]	14	43
2743	2024-05-14 10:19:16.397114+00	17	home/home-swiper/Untitled_design_3_ye0YpFb.mp4	2	[{"changed": {"fields": ["Media"]}}]	46	43
2744	2024-05-14 10:20:57.526441+00	17	home/home-swiper/Untitled_design_4_pyLp49b.mp4	2	[{"changed": {"fields": ["Media"]}}]	46	43
2745	2024-05-14 10:21:47.237808+00	17	home/home-swiper/Untitled_design_4_pyLp49b.mp4	2	[{"changed": {"fields": ["Mobile view media"]}}]	46	43
2746	2024-05-14 10:21:55.114106+00	18	home/home-swiper/WhatsApp_Image_2024-05-11_at_00.27.20.jpeg	3		46	43
2747	2024-05-14 10:22:51.133694+00	17	home/home-swiper/choose_between_wide_variety_of_brands.mp4	2	[{"changed": {"fields": ["Media"]}}]	46	43
2748	2024-05-14 10:28:21.391771+00	17	home/home-swiper/choose_between_wide_variety_of_brands.mp4	2	[{"changed": {"fields": ["Mobile view media"]}}]	46	43
2749	2024-05-14 10:33:46.637882+00	17	home/home-swiper/choose_between_wide_variety_of_brands.mp4	2	[{"changed": {"fields": ["Mobile view media"]}}]	46	43
2750	2024-05-14 10:39:20.074282+00	17	home/home-swiper/choose_between_wide_variety_of_brands.mp4	2	[{"changed": {"fields": ["Mobile view media"]}}]	46	43
2751	2024-05-14 10:40:36.341754+00	17	home/home-swiper/choose_between_wide_variety_of_brands.mp4	2	[{"changed": {"fields": ["Mobile view media"]}}]	46	43
2752	2024-05-14 10:42:23.951172+00	17	home/home-swiper/choose_between_wide_variety_of_brands.mp4	2	[{"changed": {"fields": ["Mobile view media"]}}]	46	43
2753	2024-05-14 10:45:21.331366+00	f7cb8a88-3b4c-4be1-949c-1d3d3fa73df5	RAY-L 2.0	2	[]	14	43
2754	2024-05-14 11:33:46.114206+00	284393ee-87bf-47a8-939f-934b3c10f008	Tanda class B 18L	2	[{"changed": {"fields": ["Description"]}}]	14	43
2755	2024-05-14 11:34:06.937464+00	412a5a8f-e516-4fad-b0a4-1f96952cea2e	Tanda class B 23L	2	[{"changed": {"fields": ["Description"]}}]	14	43
2756	2024-05-14 11:36:27.245672+00	50a58335-0faa-4b1b-b69a-d9474a049041	P-led	2	[{"changed": {"fields": ["Description"]}}]	14	43
2757	2024-05-14 11:39:09.591059+00	99d70557-4de3-4af0-8f05-706050bb2637	A-Led	2	[{"changed": {"fields": ["Description"]}}]	14	43
2758	2024-05-14 11:43:57.472391+00	ebf165fd-f821-4212-83b2-d9497392c468	Apex Gold Plus III	2	[{"changed": {"fields": ["Description"]}}]	14	43
2764	2024-05-14 11:55:43.352661+00	0156529b-593c-4576-89e2-182b0e917839	i-Sensor size 1	2	[{"changed": {"fields": ["Sale price"]}}]	14	43
2765	2024-05-14 11:55:55.39829+00	0156529b-593c-4576-89e2-182b0e917839	i-Sensor size 1	2	[]	14	43
2766	2024-05-14 12:43:32.076907+00	1	offers	2	[{"changed": {"fields": ["Image"]}}]	53	43
2767	2024-05-14 12:44:43.082234+00	1	offers	2	[{"changed": {"fields": ["Image"]}}]	53	43
2768	2024-05-14 12:46:06.765249+00	1	offers	2	[{"changed": {"fields": ["Image"]}}]	53	43
2769	2024-05-14 12:46:46.177383+00	1	offers	2	[{"changed": {"fields": ["Image"]}}]	53	43
2770	2024-05-14 13:49:31.773448+00	4	Testimonial object (4)	1	[{"added": {}}]	10	1
2771	2024-05-14 13:49:46.423703+00	5	Testimonial object (5)	1	[{"added": {}}]	10	1
2772	2024-05-14 14:13:22.651713+00	5	Testimonial object (5)	3		10	1
2773	2024-05-14 14:13:26.920174+00	4	Testimonial object (4)	3		10	1
2774	2024-05-15 09:00:44.490854+00	1	Offers	2	[{"changed": {"fields": ["Title"]}}]	53	43
2775	2024-05-15 09:03:36.229745+00	18	test	3		36	43
2776	2024-05-15 09:17:53.368902+00	3	i-Sensor size 1	3		54	43
2777	2024-05-15 09:18:18.885153+00	6	UltraPak Cord	1	[{"added": {}}]	54	43
2778	2024-05-15 09:18:47.534591+00	7	UltraCal XS	1	[{"added": {}}]	54	43
2779	2024-05-15 09:20:10.034867+00	1	PT-A	3		54	43
2780	2024-05-15 09:20:19.495066+00	8	U6	1	[{"added": {}}]	54	43
2781	2024-05-15 09:35:25.015213+00	11	Devices	2	[{"changed": {"fields": ["Category image"]}}]	19	1
2782	2024-05-15 09:38:09.665248+00	11	Devices	2	[{"changed": {"fields": ["Category image"]}}]	19	1
2783	2024-05-15 09:38:19.052154+00	11	Devices	2	[{"changed": {"fields": ["Category details image"]}}]	19	1
2784	2024-05-15 09:41:06.28757+00	11	Devices	2	[{"changed": {"fields": ["Image"]}}]	19	43
2785	2024-05-15 09:41:34.00776+00	292	User: Ahmed Khattab - Order Code: 1789fd7e2024 - Date: 2024-05-15 - Register ID: None	3		43	43
2786	2024-05-15 09:41:34.010595+00	291	User: Ahmed Khattab - Order Code: 270508862024 - Date: 2024-05-14 - Register ID: None	3		43	43
2787	2024-05-15 09:41:34.01177+00	289	User: karim - Order Code: 1fe60bcb2024 - Date: 2024-05-13 - Register ID: None	3		43	43
2788	2024-05-15 09:41:34.013397+00	287	User: karim - Order Code: fc8814802024 - Date: 2024-05-11 - Register ID: None	3		43	43
2789	2024-05-15 09:41:34.014527+00	286	User: karim - Order Code: 1618618a2024 - Date: 2024-05-07 - Register ID: None	3		43	43
2790	2024-05-15 09:41:34.015416+00	285	User: Ahmed Khattab - Order Code: ad1bf74b2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2791	2024-05-15 09:41:34.016434+00	284	User: karim - Order Code: b6119cca2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2792	2024-05-15 09:41:34.017388+00	283	User: Ahmed Khattab - Order Code: 1dbdaa342024 - Date: 2024-04-30 - Register ID: None	3		43	43
2793	2024-05-15 09:41:34.018154+00	282	User: Ahmed Khattab - Order Code: 071d9a052024 - Date: 2024-04-30 - Register ID: None	3		43	43
2794	2024-05-15 09:41:34.018904+00	281	User: karim - Order Code: b896023a2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2795	2024-05-15 09:41:34.019681+00	280	User: karim - Order Code: 39553b1d2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2796	2024-05-15 09:41:34.020678+00	279	User: karim - Order Code: 98f19cb52024 - Date: 2024-04-30 - Register ID: None	3		43	43
2797	2024-05-15 09:41:34.021466+00	278	User: karim - Order Code: f42dc84e2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2798	2024-05-15 09:41:34.022246+00	277	User: karim - Order Code: 21c307562024 - Date: 2024-04-30 - Register ID: None	3		43	43
2799	2024-05-15 09:41:34.023011+00	276	User: karim - Order Code: 99d41aa32024 - Date: 2024-04-30 - Register ID: None	3		43	43
2800	2024-05-15 09:41:34.023779+00	275	User: Ahmed Khattab - Order Code: c36f21192024 - Date: 2024-04-24 - Register ID: None	3		43	43
2801	2024-05-15 09:41:34.024533+00	274	User: Ahmed Khattab - Order Code: fcfb90ee2024 - Date: 2024-04-24 - Register ID: None	3		43	43
2802	2024-05-15 09:41:34.025367+00	273	User: Ahmed Khattab - Order Code: 5d936e162024 - Date: 2024-04-24 - Register ID: None	3		43	43
2803	2024-05-15 09:41:34.026349+00	272	User: Ahmed Khattab - Order Code: f3ae4d612024 - Date: 2024-04-24 - Register ID: None	3		43	43
2804	2024-05-15 09:41:34.027256+00	271	User: Ahmed Khattab - Order Code: 6fb714e92024 - Date: 2024-04-24 - Register ID: None	3		43	43
2805	2024-05-15 09:41:34.02814+00	270	User: Ahmed Khattab - Order Code: b803ff442023 - Date: 2023-12-02 - Register ID: None	3		43	43
2806	2024-05-15 09:41:34.029001+00	269	User: Ahmed Khattab - Order Code: 249b1b2a2023 - Date: 2023-11-19 - Register ID: None	3		43	43
2807	2024-05-15 09:41:34.029757+00	268	User: Ahmed Khattab - Order Code: 12b2d56e2023 - Date: 2023-11-19 - Register ID: None	3		43	43
2808	2024-05-15 09:41:34.030523+00	267	User: Ahmed Khattab - Order Code: faf0387e2023 - Date: 2023-11-01 - Register ID: None	3		43	43
2809	2024-05-15 09:41:34.031293+00	266	User: Ahmed Khattab - Order Code: 509188a52023 - Date: 2023-10-30 - Register ID: None	3		43	43
2810	2024-05-15 09:41:34.032041+00	265	User: Ahmed Khattab - Order Code: 57df83c52023 - Date: 2023-10-30 - Register ID: None	3		43	43
2811	2024-05-15 09:41:34.032804+00	264	User: Ahmed Khattab - Order Code: be348fe02023 - Date: 2023-10-30 - Register ID: None	3		43	43
2812	2024-05-15 09:41:34.03356+00	263	User: Ahmed Khattab - Order Code: be5be63d2023 - Date: 2023-10-30 - Register ID: None	3		43	43
2813	2024-05-15 09:41:34.034314+00	262	User: Ahmed Khattab - Order Code: b982ad402023 - Date: 2023-10-30 - Register ID: None	3		43	43
2814	2024-05-15 09:41:34.035068+00	261	User: Ahmed Khattab - Order Code: b948928b2023 - Date: 2023-10-30 - Register ID: None	3		43	43
2815	2024-05-15 09:41:34.035851+00	249	User: Ahmed Khattab - Order Code: f808fb612023 - Date: 2023-10-03 - Register ID: c2fa0686-9d5a-4dfa-aabf-a4ecfa20b607	3		43	43
2816	2024-05-15 09:41:34.036705+00	248	User: Ahmed Khattab - Order Code: 4d3462272023 - Date: 2023-09-26 - Register ID: None	3		43	43
2817	2024-05-15 09:41:34.037591+00	247	User: Ahmed Khattab - Order Code: 3d64e2862023 - Date: 2023-09-17 - Register ID: None	3		43	43
2818	2024-05-15 09:41:34.038512+00	246	User: Ahmed Khattab - Order Code: bfc0bd862023 - Date: 2023-09-12 - Register ID: None	3		43	43
2819	2024-05-15 09:41:34.039268+00	245	User: youssef - Order Code: e1a436c62023 - Date: 2023-09-11 - Register ID: None	3		43	43
2820	2024-05-15 09:41:34.040219+00	244	User: Ahmed Khattab - Order Code: f8fd1b892023 - Date: 2023-09-11 - Register ID: None	3		43	43
2821	2024-05-15 09:41:34.041107+00	243	User: Ahmed Khattab - Order Code: b0d45f992023 - Date: 2023-09-11 - Register ID: None	3		43	43
2822	2024-05-15 09:41:34.041847+00	242	User: youssef - Order Code: 74707f6a2023 - Date: 2023-09-10 - Register ID: None	3		43	43
2823	2024-05-15 09:41:34.042594+00	241	User: youssef - Order Code: 3ea751722023 - Date: 2023-09-10 - Register ID: None	3		43	43
2824	2024-05-15 09:41:34.043337+00	240	User: youssef - Order Code: 620d48212023 - Date: 2023-09-10 - Register ID: None	3		43	43
2825	2024-05-15 09:41:34.044079+00	239	User: youssef - Order Code: 232c5a9f2023 - Date: 2023-09-10 - Register ID: None	3		43	43
2826	2024-05-15 09:41:34.044854+00	238	User: youssef - Order Code: f71df6372023 - Date: 2023-09-10 - Register ID: None	3		43	43
2827	2024-05-15 09:41:34.045982+00	237	User: youssef - Order Code: b6add8fb2023 - Date: 2023-09-10 - Register ID: None	3		43	43
2828	2024-05-15 09:41:34.04673+00	236	User: youssef - Order Code: 6b4645af2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2829	2024-05-15 09:41:34.047475+00	235	User: youssef - Order Code: a442aa3d2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2830	2024-05-15 09:41:34.048218+00	234	User: youssef - Order Code: 0b0084152023 - Date: 2023-08-24 - Register ID: None	3		43	43
2831	2024-05-15 09:41:34.049145+00	233	User: youssef - Order Code: 29b98ae42023 - Date: 2023-08-24 - Register ID: None	3		43	43
2832	2024-05-15 09:41:34.049885+00	232	User: youssef - Order Code: da8be7462023 - Date: 2023-08-24 - Register ID: None	3		43	43
2833	2024-05-15 09:41:34.050759+00	231	User: youssef - Order Code: c38553412023 - Date: 2023-08-24 - Register ID: None	3		43	43
2834	2024-05-15 09:41:34.051558+00	230	User: youssef - Order Code: 3abe5b922023 - Date: 2023-08-24 - Register ID: None	3		43	43
2835	2024-05-15 09:41:34.05246+00	229	User: youssef - Order Code: 37c734e72023 - Date: 2023-08-24 - Register ID: None	3		43	43
2836	2024-05-15 09:41:34.053367+00	228	User: youssef - Order Code: 2ef3c7632023 - Date: 2023-08-24 - Register ID: None	3		43	43
2837	2024-05-15 09:41:34.054122+00	227	User: youssef - Order Code: 2f05a3382023 - Date: 2023-08-24 - Register ID: None	3		43	43
2838	2024-05-15 09:41:34.054862+00	226	User: youssef - Order Code: 1d69ded12023 - Date: 2023-08-24 - Register ID: None	3		43	43
2839	2024-05-15 09:41:34.055649+00	225	User: youssef - Order Code: 957bb5262023 - Date: 2023-08-24 - Register ID: None	3		43	43
2840	2024-05-15 09:41:34.05642+00	224	User: youssef - Order Code: cf168eff2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2841	2024-05-15 09:41:34.057349+00	223	User: youssef - Order Code: a1e8d54d2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2842	2024-05-15 09:41:34.058276+00	222	User: youssef - Order Code: 355e0a392023 - Date: 2023-08-24 - Register ID: None	3		43	43
2843	2024-05-15 09:41:34.059027+00	221	User: youssef - Order Code: ca2086c02023 - Date: 2023-08-24 - Register ID: None	3		43	43
2844	2024-05-15 09:41:34.059779+00	220	User: youssef - Order Code: 65e9d6d92023 - Date: 2023-08-24 - Register ID: None	3		43	43
2845	2024-05-15 09:41:34.060596+00	219	User: youssef - Order Code: 315ca4dc2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2846	2024-05-15 09:41:34.06153+00	218	User: youssef - Order Code: 2486d49c2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2847	2024-05-15 09:41:34.062279+00	217	User: youssef - Order Code: 23648dd62023 - Date: 2023-08-24 - Register ID: None	3		43	43
2848	2024-05-15 09:41:34.063026+00	216	User: Ahmed Khattab - Order Code: 0420516e2023 - Date: 2023-07-11 - Register ID: None	3		43	43
2849	2024-05-15 09:41:34.063765+00	215	User: Ahmed Khattab - Order Code: 08183f822023 - Date: 2023-07-11 - Register ID: None	3		43	43
2850	2024-05-15 09:41:34.06465+00	214	User: karim - Order Code: 6e4fcae32023 - Date: 2023-07-11 - Register ID: None	3		43	43
2851	2024-05-15 09:41:34.065633+00	213	User: Ahmed Khattab - Order Code: a3da629c2023 - Date: 2023-07-11 - Register ID: None	3		43	43
2852	2024-05-15 09:41:34.066389+00	212	User: karim - Order Code: 832c5aaa2023 - Date: 2023-07-11 - Register ID: None	3		43	43
2853	2024-05-15 09:41:34.067369+00	211	User: Ahmed Khattab - Order Code: d16be0b42023 - Date: 2023-07-09 - Register ID: None	3		43	43
2854	2024-05-15 09:41:34.068302+00	210	User: Ahmed Khattab - Order Code: 6c2393042023 - Date: 2023-07-09 - Register ID: None	3		43	43
2855	2024-05-15 09:41:34.069259+00	209	User: karim - Order Code: f1be7da22023 - Date: 2023-07-09 - Register ID: None	3		43	43
2856	2024-05-15 09:41:34.070001+00	208	User: karim - Order Code: ae5a39fb2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2857	2024-05-15 09:41:34.070741+00	207	User: karim - Order Code: 03dcfc182023 - Date: 2023-07-09 - Register ID: None	3		43	43
2858	2024-05-15 09:41:34.071666+00	206	User: karim - Order Code: f024d4fa2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2859	2024-05-15 09:41:34.072466+00	205	User: youssef - Order Code: 2ee5500d2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2860	2024-05-15 09:41:34.073417+00	204	User: youssef - Order Code: 68de997b2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2861	2024-05-15 09:41:34.074322+00	203	User: youssef - Order Code: 4cbce8ac2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2862	2024-05-15 09:41:34.075073+00	202	User: youssef - Order Code: d9b21ac02023 - Date: 2023-07-09 - Register ID: None	3		43	43
2863	2024-05-15 09:41:34.075887+00	201	User: youssef - Order Code: 18ba40442023 - Date: 2023-07-09 - Register ID: None	3		43	43
2864	2024-05-15 09:41:34.076715+00	200	User: youssef - Order Code: 1b6d2f962023 - Date: 2023-07-09 - Register ID: None	3		43	43
2865	2024-05-15 09:41:34.077572+00	199	User: youssef - Order Code: 7e7fce6b2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2866	2024-05-15 09:41:34.078314+00	198	User: Ahmed Khattab - Order Code: f32036152023 - Date: 2023-06-12 - Register ID: None	3		43	43
2867	2024-05-15 09:41:34.079166+00	197	User: Ahmed Khattab - Order Code: 56ff59942023 - Date: 2023-06-12 - Register ID: None	3		43	43
2868	2024-05-15 09:41:34.080048+00	196	User: Ahmed Khattab - Order Code: ff2adf822023 - Date: 2023-06-12 - Register ID: None	3		43	43
2869	2024-05-15 09:41:34.080792+00	195	User: youssef - Order Code: bb5bad7a2023 - Date: 2023-05-30 - Register ID: None	3		43	43
2870	2024-05-15 09:41:34.081898+00	194	User: karim - Order Code: 0ea119482023 - Date: 2023-05-30 - Register ID: None	3		43	43
2871	2024-05-15 09:41:34.082645+00	193	User: mousa nageh - Order Code: cfbe61852023 - Date: 2023-05-23 - Register ID: None	3		43	43
2872	2024-05-15 09:41:34.083548+00	192	User: mousa nageh - Order Code: be50bc4b2023 - Date: 2023-05-23 - Register ID: None	3		43	43
2873	2024-05-15 09:41:34.084295+00	191	User: mousa nageh - Order Code: 55bacc4a2023 - Date: 2023-05-23 - Register ID: None	3		43	43
2874	2024-05-15 09:42:12.729519+00	292	User: Ahmed Khattab - Order Code: 1789fd7e2024 - Date: 2024-05-15 - Register ID: None	3		43	43
2875	2024-05-15 09:42:12.732112+00	291	User: Ahmed Khattab - Order Code: 270508862024 - Date: 2024-05-14 - Register ID: None	3		43	43
2876	2024-05-15 09:42:12.733258+00	289	User: karim - Order Code: 1fe60bcb2024 - Date: 2024-05-13 - Register ID: None	3		43	43
2877	2024-05-15 09:42:12.734174+00	287	User: karim - Order Code: fc8814802024 - Date: 2024-05-11 - Register ID: None	3		43	43
2878	2024-05-15 09:42:12.73584+00	286	User: karim - Order Code: 1618618a2024 - Date: 2024-05-07 - Register ID: None	3		43	43
2879	2024-05-15 09:42:12.736784+00	285	User: Ahmed Khattab - Order Code: ad1bf74b2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2880	2024-05-15 09:42:12.737955+00	284	User: karim - Order Code: b6119cca2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2881	2024-05-15 09:42:12.738935+00	283	User: Ahmed Khattab - Order Code: 1dbdaa342024 - Date: 2024-04-30 - Register ID: None	3		43	43
2882	2024-05-15 09:42:12.739712+00	282	User: Ahmed Khattab - Order Code: 071d9a052024 - Date: 2024-04-30 - Register ID: None	3		43	43
2883	2024-05-15 09:42:12.740677+00	281	User: karim - Order Code: b896023a2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2884	2024-05-15 09:42:12.741667+00	280	User: karim - Order Code: 39553b1d2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2885	2024-05-15 09:42:12.742424+00	279	User: karim - Order Code: 98f19cb52024 - Date: 2024-04-30 - Register ID: None	3		43	43
2886	2024-05-15 09:42:12.743205+00	278	User: karim - Order Code: f42dc84e2024 - Date: 2024-04-30 - Register ID: None	3		43	43
2887	2024-05-15 09:42:12.744071+00	277	User: karim - Order Code: 21c307562024 - Date: 2024-04-30 - Register ID: None	3		43	43
2888	2024-05-15 09:42:12.745009+00	276	User: karim - Order Code: 99d41aa32024 - Date: 2024-04-30 - Register ID: None	3		43	43
2889	2024-05-15 09:42:12.745944+00	275	User: Ahmed Khattab - Order Code: c36f21192024 - Date: 2024-04-24 - Register ID: None	3		43	43
2890	2024-05-15 09:42:12.746755+00	274	User: Ahmed Khattab - Order Code: fcfb90ee2024 - Date: 2024-04-24 - Register ID: None	3		43	43
2891	2024-05-15 09:42:12.747571+00	273	User: Ahmed Khattab - Order Code: 5d936e162024 - Date: 2024-04-24 - Register ID: None	3		43	43
2892	2024-05-15 09:42:12.748342+00	272	User: Ahmed Khattab - Order Code: f3ae4d612024 - Date: 2024-04-24 - Register ID: None	3		43	43
2893	2024-05-15 09:42:12.749289+00	271	User: Ahmed Khattab - Order Code: 6fb714e92024 - Date: 2024-04-24 - Register ID: None	3		43	43
2894	2024-05-15 09:42:12.750168+00	270	User: Ahmed Khattab - Order Code: b803ff442023 - Date: 2023-12-02 - Register ID: None	3		43	43
2895	2024-05-15 09:42:12.751142+00	269	User: Ahmed Khattab - Order Code: 249b1b2a2023 - Date: 2023-11-19 - Register ID: None	3		43	43
2896	2024-05-15 09:42:12.751942+00	268	User: Ahmed Khattab - Order Code: 12b2d56e2023 - Date: 2023-11-19 - Register ID: None	3		43	43
2897	2024-05-15 09:42:12.75293+00	267	User: Ahmed Khattab - Order Code: faf0387e2023 - Date: 2023-11-01 - Register ID: None	3		43	43
2898	2024-05-15 09:42:12.753859+00	266	User: Ahmed Khattab - Order Code: 509188a52023 - Date: 2023-10-30 - Register ID: None	3		43	43
2899	2024-05-15 09:42:12.754805+00	265	User: Ahmed Khattab - Order Code: 57df83c52023 - Date: 2023-10-30 - Register ID: None	3		43	43
2900	2024-05-15 09:42:12.755611+00	264	User: Ahmed Khattab - Order Code: be348fe02023 - Date: 2023-10-30 - Register ID: None	3		43	43
2901	2024-05-15 09:42:12.756385+00	263	User: Ahmed Khattab - Order Code: be5be63d2023 - Date: 2023-10-30 - Register ID: None	3		43	43
2902	2024-05-15 09:42:12.757667+00	262	User: Ahmed Khattab - Order Code: b982ad402023 - Date: 2023-10-30 - Register ID: None	3		43	43
2903	2024-05-15 09:42:12.758588+00	261	User: Ahmed Khattab - Order Code: b948928b2023 - Date: 2023-10-30 - Register ID: None	3		43	43
2904	2024-05-15 09:42:12.759485+00	249	User: Ahmed Khattab - Order Code: f808fb612023 - Date: 2023-10-03 - Register ID: c2fa0686-9d5a-4dfa-aabf-a4ecfa20b607	3		43	43
2905	2024-05-15 09:42:12.760248+00	248	User: Ahmed Khattab - Order Code: 4d3462272023 - Date: 2023-09-26 - Register ID: None	3		43	43
2906	2024-05-15 09:42:12.761034+00	247	User: Ahmed Khattab - Order Code: 3d64e2862023 - Date: 2023-09-17 - Register ID: None	3		43	43
2907	2024-05-15 09:42:12.761788+00	246	User: Ahmed Khattab - Order Code: bfc0bd862023 - Date: 2023-09-12 - Register ID: None	3		43	43
2908	2024-05-15 09:42:12.762537+00	245	User: youssef - Order Code: e1a436c62023 - Date: 2023-09-11 - Register ID: None	3		43	43
2909	2024-05-15 09:42:12.763282+00	244	User: Ahmed Khattab - Order Code: f8fd1b892023 - Date: 2023-09-11 - Register ID: None	3		43	43
2910	2024-05-15 09:42:12.764061+00	243	User: Ahmed Khattab - Order Code: b0d45f992023 - Date: 2023-09-11 - Register ID: None	3		43	43
2911	2024-05-15 09:42:12.764838+00	242	User: youssef - Order Code: 74707f6a2023 - Date: 2023-09-10 - Register ID: None	3		43	43
2912	2024-05-15 09:42:12.76566+00	241	User: youssef - Order Code: 3ea751722023 - Date: 2023-09-10 - Register ID: None	3		43	43
2913	2024-05-15 09:42:12.766414+00	240	User: youssef - Order Code: 620d48212023 - Date: 2023-09-10 - Register ID: None	3		43	43
2914	2024-05-15 09:42:12.767459+00	239	User: youssef - Order Code: 232c5a9f2023 - Date: 2023-09-10 - Register ID: None	3		43	43
2915	2024-05-15 09:42:12.768199+00	238	User: youssef - Order Code: f71df6372023 - Date: 2023-09-10 - Register ID: None	3		43	43
2916	2024-05-15 09:42:12.769076+00	237	User: youssef - Order Code: b6add8fb2023 - Date: 2023-09-10 - Register ID: None	3		43	43
2917	2024-05-15 09:42:12.769836+00	236	User: youssef - Order Code: 6b4645af2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2918	2024-05-15 09:42:12.770733+00	235	User: youssef - Order Code: a442aa3d2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2919	2024-05-15 09:42:12.771585+00	234	User: youssef - Order Code: 0b0084152023 - Date: 2023-08-24 - Register ID: None	3		43	43
2920	2024-05-15 09:42:12.772512+00	233	User: youssef - Order Code: 29b98ae42023 - Date: 2023-08-24 - Register ID: None	3		43	43
2921	2024-05-15 09:42:12.773306+00	232	User: youssef - Order Code: da8be7462023 - Date: 2023-08-24 - Register ID: None	3		43	43
2922	2024-05-15 09:42:12.774144+00	231	User: youssef - Order Code: c38553412023 - Date: 2023-08-24 - Register ID: None	3		43	43
2923	2024-05-15 09:42:12.775009+00	230	User: youssef - Order Code: 3abe5b922023 - Date: 2023-08-24 - Register ID: None	3		43	43
2924	2024-05-15 09:42:12.775995+00	229	User: youssef - Order Code: 37c734e72023 - Date: 2023-08-24 - Register ID: None	3		43	43
2925	2024-05-15 09:42:12.776883+00	228	User: youssef - Order Code: 2ef3c7632023 - Date: 2023-08-24 - Register ID: None	3		43	43
2926	2024-05-15 09:42:12.777824+00	227	User: youssef - Order Code: 2f05a3382023 - Date: 2023-08-24 - Register ID: None	3		43	43
2927	2024-05-15 09:42:12.778778+00	226	User: youssef - Order Code: 1d69ded12023 - Date: 2023-08-24 - Register ID: None	3		43	43
2928	2024-05-15 09:42:12.77972+00	225	User: youssef - Order Code: 957bb5262023 - Date: 2023-08-24 - Register ID: None	3		43	43
2929	2024-05-15 09:42:12.780462+00	224	User: youssef - Order Code: cf168eff2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2930	2024-05-15 09:42:12.781342+00	223	User: youssef - Order Code: a1e8d54d2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2931	2024-05-15 09:42:12.782235+00	222	User: youssef - Order Code: 355e0a392023 - Date: 2023-08-24 - Register ID: None	3		43	43
2932	2024-05-15 09:42:12.783118+00	221	User: youssef - Order Code: ca2086c02023 - Date: 2023-08-24 - Register ID: None	3		43	43
2933	2024-05-15 09:42:12.783957+00	220	User: youssef - Order Code: 65e9d6d92023 - Date: 2023-08-24 - Register ID: None	3		43	43
2934	2024-05-15 09:42:12.784837+00	219	User: youssef - Order Code: 315ca4dc2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2935	2024-05-15 09:42:12.785656+00	218	User: youssef - Order Code: 2486d49c2023 - Date: 2023-08-24 - Register ID: None	3		43	43
2936	2024-05-15 09:42:12.786406+00	217	User: youssef - Order Code: 23648dd62023 - Date: 2023-08-24 - Register ID: None	3		43	43
2937	2024-05-15 09:42:12.787304+00	216	User: Ahmed Khattab - Order Code: 0420516e2023 - Date: 2023-07-11 - Register ID: None	3		43	43
2938	2024-05-15 09:42:12.788044+00	215	User: Ahmed Khattab - Order Code: 08183f822023 - Date: 2023-07-11 - Register ID: None	3		43	43
2939	2024-05-15 09:42:12.78879+00	214	User: karim - Order Code: 6e4fcae32023 - Date: 2023-07-11 - Register ID: None	3		43	43
2940	2024-05-15 09:42:12.78957+00	213	User: Ahmed Khattab - Order Code: a3da629c2023 - Date: 2023-07-11 - Register ID: None	3		43	43
2941	2024-05-15 09:42:12.790315+00	212	User: karim - Order Code: 832c5aaa2023 - Date: 2023-07-11 - Register ID: None	3		43	43
2942	2024-05-15 09:42:12.791051+00	211	User: Ahmed Khattab - Order Code: d16be0b42023 - Date: 2023-07-09 - Register ID: None	3		43	43
2943	2024-05-15 09:42:12.791966+00	210	User: Ahmed Khattab - Order Code: 6c2393042023 - Date: 2023-07-09 - Register ID: None	3		43	43
2944	2024-05-15 09:42:12.79286+00	209	User: karim - Order Code: f1be7da22023 - Date: 2023-07-09 - Register ID: None	3		43	43
2945	2024-05-15 09:42:12.793624+00	208	User: karim - Order Code: ae5a39fb2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2946	2024-05-15 09:42:12.794362+00	207	User: karim - Order Code: 03dcfc182023 - Date: 2023-07-09 - Register ID: None	3		43	43
2947	2024-05-15 09:42:12.7951+00	206	User: karim - Order Code: f024d4fa2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2948	2024-05-15 09:42:12.795904+00	205	User: youssef - Order Code: 2ee5500d2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2949	2024-05-15 09:42:12.796845+00	204	User: youssef - Order Code: 68de997b2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2950	2024-05-15 09:42:12.797767+00	203	User: youssef - Order Code: 4cbce8ac2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2951	2024-05-15 09:42:12.798554+00	202	User: youssef - Order Code: d9b21ac02023 - Date: 2023-07-09 - Register ID: None	3		43	43
2952	2024-05-15 09:42:12.799331+00	201	User: youssef - Order Code: 18ba40442023 - Date: 2023-07-09 - Register ID: None	3		43	43
2953	2024-05-15 09:42:12.800216+00	200	User: youssef - Order Code: 1b6d2f962023 - Date: 2023-07-09 - Register ID: None	3		43	43
2954	2024-05-15 09:42:12.800991+00	199	User: youssef - Order Code: 7e7fce6b2023 - Date: 2023-07-09 - Register ID: None	3		43	43
2955	2024-05-15 09:42:12.801893+00	198	User: Ahmed Khattab - Order Code: f32036152023 - Date: 2023-06-12 - Register ID: None	3		43	43
2956	2024-05-15 09:42:12.802654+00	197	User: Ahmed Khattab - Order Code: 56ff59942023 - Date: 2023-06-12 - Register ID: None	3		43	43
2957	2024-05-15 09:42:12.803395+00	196	User: Ahmed Khattab - Order Code: ff2adf822023 - Date: 2023-06-12 - Register ID: None	3		43	43
2958	2024-05-15 09:42:12.804133+00	195	User: youssef - Order Code: bb5bad7a2023 - Date: 2023-05-30 - Register ID: None	3		43	43
2959	2024-05-15 09:42:12.804899+00	194	User: karim - Order Code: 0ea119482023 - Date: 2023-05-30 - Register ID: None	3		43	43
2960	2024-05-15 09:42:12.806105+00	193	User: mousa nageh - Order Code: cfbe61852023 - Date: 2023-05-23 - Register ID: None	3		43	43
2961	2024-05-15 09:42:12.807015+00	192	User: mousa nageh - Order Code: be50bc4b2023 - Date: 2023-05-23 - Register ID: None	3		43	43
2962	2024-05-15 09:42:12.807936+00	191	User: mousa nageh - Order Code: 55bacc4a2023 - Date: 2023-05-23 - Register ID: None	3		43	43
2963	2024-05-15 09:45:51.754498+00	292	User: Ahmed Khattab - Order Code: 1789fd7e2024 - Date: 2024-05-15 - Register ID: None	3		43	1
2964	2024-05-15 09:45:51.763798+00	291	User: Ahmed Khattab - Order Code: 270508862024 - Date: 2024-05-14 - Register ID: None	3		43	1
2965	2024-05-15 09:45:51.765022+00	289	User: karim - Order Code: 1fe60bcb2024 - Date: 2024-05-13 - Register ID: None	3		43	1
2966	2024-05-15 09:45:51.765953+00	287	User: karim - Order Code: fc8814802024 - Date: 2024-05-11 - Register ID: None	3		43	1
2967	2024-05-15 09:45:51.767108+00	286	User: karim - Order Code: 1618618a2024 - Date: 2024-05-07 - Register ID: None	3		43	1
2968	2024-05-15 09:45:51.76828+00	285	User: Ahmed Khattab - Order Code: ad1bf74b2024 - Date: 2024-04-30 - Register ID: None	3		43	1
2969	2024-05-15 09:45:51.769409+00	284	User: karim - Order Code: b6119cca2024 - Date: 2024-04-30 - Register ID: None	3		43	1
2970	2024-05-15 09:45:51.770371+00	283	User: Ahmed Khattab - Order Code: 1dbdaa342024 - Date: 2024-04-30 - Register ID: None	3		43	1
2971	2024-05-15 09:45:51.77135+00	282	User: Ahmed Khattab - Order Code: 071d9a052024 - Date: 2024-04-30 - Register ID: None	3		43	1
2972	2024-05-15 09:45:51.772154+00	281	User: karim - Order Code: b896023a2024 - Date: 2024-04-30 - Register ID: None	3		43	1
2973	2024-05-15 09:45:51.773204+00	280	User: karim - Order Code: 39553b1d2024 - Date: 2024-04-30 - Register ID: None	3		43	1
2974	2024-05-15 09:45:51.774183+00	279	User: karim - Order Code: 98f19cb52024 - Date: 2024-04-30 - Register ID: None	3		43	1
2975	2024-05-15 09:45:51.774981+00	278	User: karim - Order Code: f42dc84e2024 - Date: 2024-04-30 - Register ID: None	3		43	1
2976	2024-05-15 09:45:51.775952+00	277	User: karim - Order Code: 21c307562024 - Date: 2024-04-30 - Register ID: None	3		43	1
2977	2024-05-15 09:45:51.776875+00	276	User: karim - Order Code: 99d41aa32024 - Date: 2024-04-30 - Register ID: None	3		43	1
2978	2024-05-15 09:45:51.777714+00	275	User: Ahmed Khattab - Order Code: c36f21192024 - Date: 2024-04-24 - Register ID: None	3		43	1
2979	2024-05-15 09:45:51.778505+00	274	User: Ahmed Khattab - Order Code: fcfb90ee2024 - Date: 2024-04-24 - Register ID: None	3		43	1
2980	2024-05-15 09:45:51.780355+00	273	User: Ahmed Khattab - Order Code: 5d936e162024 - Date: 2024-04-24 - Register ID: None	3		43	1
2981	2024-05-15 09:45:51.781347+00	272	User: Ahmed Khattab - Order Code: f3ae4d612024 - Date: 2024-04-24 - Register ID: None	3		43	1
2982	2024-05-15 09:45:51.78217+00	271	User: Ahmed Khattab - Order Code: 6fb714e92024 - Date: 2024-04-24 - Register ID: None	3		43	1
2983	2024-05-15 09:45:51.782963+00	270	User: Ahmed Khattab - Order Code: b803ff442023 - Date: 2023-12-02 - Register ID: None	3		43	1
2984	2024-05-15 09:45:51.783879+00	269	User: Ahmed Khattab - Order Code: 249b1b2a2023 - Date: 2023-11-19 - Register ID: None	3		43	1
2985	2024-05-15 09:45:51.784723+00	268	User: Ahmed Khattab - Order Code: 12b2d56e2023 - Date: 2023-11-19 - Register ID: None	3		43	1
2986	2024-05-15 09:45:51.785524+00	267	User: Ahmed Khattab - Order Code: faf0387e2023 - Date: 2023-11-01 - Register ID: None	3		43	1
2987	2024-05-15 09:45:51.786434+00	266	User: Ahmed Khattab - Order Code: 509188a52023 - Date: 2023-10-30 - Register ID: None	3		43	1
2988	2024-05-15 09:45:51.787268+00	265	User: Ahmed Khattab - Order Code: 57df83c52023 - Date: 2023-10-30 - Register ID: None	3		43	1
2989	2024-05-15 09:45:51.788189+00	264	User: Ahmed Khattab - Order Code: be348fe02023 - Date: 2023-10-30 - Register ID: None	3		43	1
2990	2024-05-15 09:45:51.789169+00	263	User: Ahmed Khattab - Order Code: be5be63d2023 - Date: 2023-10-30 - Register ID: None	3		43	1
2991	2024-05-15 09:45:51.790105+00	262	User: Ahmed Khattab - Order Code: b982ad402023 - Date: 2023-10-30 - Register ID: None	3		43	1
2992	2024-05-15 09:45:51.791168+00	261	User: Ahmed Khattab - Order Code: b948928b2023 - Date: 2023-10-30 - Register ID: None	3		43	1
2993	2024-05-15 09:45:51.792196+00	249	User: Ahmed Khattab - Order Code: f808fb612023 - Date: 2023-10-03 - Register ID: c2fa0686-9d5a-4dfa-aabf-a4ecfa20b607	3		43	1
2994	2024-05-15 09:45:51.793016+00	248	User: Ahmed Khattab - Order Code: 4d3462272023 - Date: 2023-09-26 - Register ID: None	3		43	1
2995	2024-05-15 09:45:51.793806+00	247	User: Ahmed Khattab - Order Code: 3d64e2862023 - Date: 2023-09-17 - Register ID: None	3		43	1
2996	2024-05-15 09:45:51.794989+00	246	User: Ahmed Khattab - Order Code: bfc0bd862023 - Date: 2023-09-12 - Register ID: None	3		43	1
2997	2024-05-15 09:45:51.796+00	245	User: youssef - Order Code: e1a436c62023 - Date: 2023-09-11 - Register ID: None	3		43	1
2998	2024-05-15 09:45:51.797037+00	244	User: Ahmed Khattab - Order Code: f8fd1b892023 - Date: 2023-09-11 - Register ID: None	3		43	1
2999	2024-05-15 09:45:51.797917+00	243	User: Ahmed Khattab - Order Code: b0d45f992023 - Date: 2023-09-11 - Register ID: None	3		43	1
3000	2024-05-15 09:45:51.798774+00	242	User: youssef - Order Code: 74707f6a2023 - Date: 2023-09-10 - Register ID: None	3		43	1
3001	2024-05-15 09:45:51.799611+00	241	User: youssef - Order Code: 3ea751722023 - Date: 2023-09-10 - Register ID: None	3		43	1
3002	2024-05-15 09:45:51.800536+00	240	User: youssef - Order Code: 620d48212023 - Date: 2023-09-10 - Register ID: None	3		43	1
3003	2024-05-15 09:45:51.801449+00	239	User: youssef - Order Code: 232c5a9f2023 - Date: 2023-09-10 - Register ID: None	3		43	1
3004	2024-05-15 09:45:51.802314+00	238	User: youssef - Order Code: f71df6372023 - Date: 2023-09-10 - Register ID: None	3		43	1
3005	2024-05-15 09:45:51.80318+00	237	User: youssef - Order Code: b6add8fb2023 - Date: 2023-09-10 - Register ID: None	3		43	1
3006	2024-05-15 09:45:51.804037+00	236	User: youssef - Order Code: 6b4645af2023 - Date: 2023-08-24 - Register ID: None	3		43	1
3007	2024-05-15 09:45:51.804822+00	235	User: youssef - Order Code: a442aa3d2023 - Date: 2023-08-24 - Register ID: None	3		43	1
3008	2024-05-15 09:45:51.805579+00	234	User: youssef - Order Code: 0b0084152023 - Date: 2023-08-24 - Register ID: None	3		43	1
3009	2024-05-15 09:45:51.806316+00	233	User: youssef - Order Code: 29b98ae42023 - Date: 2023-08-24 - Register ID: None	3		43	1
3010	2024-05-15 09:45:51.807096+00	232	User: youssef - Order Code: da8be7462023 - Date: 2023-08-24 - Register ID: None	3		43	1
3011	2024-05-15 09:45:51.807854+00	231	User: youssef - Order Code: c38553412023 - Date: 2023-08-24 - Register ID: None	3		43	1
3012	2024-05-15 09:45:51.808873+00	230	User: youssef - Order Code: 3abe5b922023 - Date: 2023-08-24 - Register ID: None	3		43	1
3013	2024-05-15 09:45:51.809809+00	229	User: youssef - Order Code: 37c734e72023 - Date: 2023-08-24 - Register ID: None	3		43	1
3014	2024-05-15 09:45:51.81075+00	228	User: youssef - Order Code: 2ef3c7632023 - Date: 2023-08-24 - Register ID: None	3		43	1
3015	2024-05-15 09:45:51.811525+00	227	User: youssef - Order Code: 2f05a3382023 - Date: 2023-08-24 - Register ID: None	3		43	1
3016	2024-05-15 09:45:51.812281+00	226	User: youssef - Order Code: 1d69ded12023 - Date: 2023-08-24 - Register ID: None	3		43	1
3017	2024-05-15 09:45:51.813191+00	225	User: youssef - Order Code: 957bb5262023 - Date: 2023-08-24 - Register ID: None	3		43	1
3018	2024-05-15 09:45:51.814097+00	224	User: youssef - Order Code: cf168eff2023 - Date: 2023-08-24 - Register ID: None	3		43	1
3019	2024-05-15 09:45:51.814985+00	223	User: youssef - Order Code: a1e8d54d2023 - Date: 2023-08-24 - Register ID: None	3		43	1
3020	2024-05-15 09:45:51.815968+00	222	User: youssef - Order Code: 355e0a392023 - Date: 2023-08-24 - Register ID: None	3		43	1
3021	2024-05-15 09:45:51.816735+00	221	User: youssef - Order Code: ca2086c02023 - Date: 2023-08-24 - Register ID: None	3		43	1
3022	2024-05-15 09:45:51.817533+00	220	User: youssef - Order Code: 65e9d6d92023 - Date: 2023-08-24 - Register ID: None	3		43	1
3023	2024-05-15 09:45:51.81843+00	219	User: youssef - Order Code: 315ca4dc2023 - Date: 2023-08-24 - Register ID: None	3		43	1
3024	2024-05-15 09:45:51.819174+00	218	User: youssef - Order Code: 2486d49c2023 - Date: 2023-08-24 - Register ID: None	3		43	1
3025	2024-05-15 09:45:51.819919+00	217	User: youssef - Order Code: 23648dd62023 - Date: 2023-08-24 - Register ID: None	3		43	1
3026	2024-05-15 09:45:51.820689+00	216	User: Ahmed Khattab - Order Code: 0420516e2023 - Date: 2023-07-11 - Register ID: None	3		43	1
3027	2024-05-15 09:45:51.821505+00	215	User: Ahmed Khattab - Order Code: 08183f822023 - Date: 2023-07-11 - Register ID: None	3		43	1
3028	2024-05-15 09:45:51.822262+00	214	User: karim - Order Code: 6e4fcae32023 - Date: 2023-07-11 - Register ID: None	3		43	1
3029	2024-05-15 09:45:51.823119+00	213	User: Ahmed Khattab - Order Code: a3da629c2023 - Date: 2023-07-11 - Register ID: None	3		43	1
3030	2024-05-15 09:45:51.823867+00	212	User: karim - Order Code: 832c5aaa2023 - Date: 2023-07-11 - Register ID: None	3		43	1
3031	2024-05-15 09:45:51.824777+00	211	User: Ahmed Khattab - Order Code: d16be0b42023 - Date: 2023-07-09 - Register ID: None	3		43	1
3032	2024-05-15 09:45:51.825702+00	210	User: Ahmed Khattab - Order Code: 6c2393042023 - Date: 2023-07-09 - Register ID: None	3		43	1
3033	2024-05-15 09:45:51.826563+00	209	User: karim - Order Code: f1be7da22023 - Date: 2023-07-09 - Register ID: None	3		43	1
3034	2024-05-15 09:45:51.827345+00	208	User: karim - Order Code: ae5a39fb2023 - Date: 2023-07-09 - Register ID: None	3		43	1
3035	2024-05-15 09:45:51.828099+00	207	User: karim - Order Code: 03dcfc182023 - Date: 2023-07-09 - Register ID: None	3		43	1
3036	2024-05-15 09:45:51.828874+00	206	User: karim - Order Code: f024d4fa2023 - Date: 2023-07-09 - Register ID: None	3		43	1
3037	2024-05-15 09:45:51.829642+00	205	User: youssef - Order Code: 2ee5500d2023 - Date: 2023-07-09 - Register ID: None	3		43	1
3038	2024-05-15 09:45:51.830388+00	204	User: youssef - Order Code: 68de997b2023 - Date: 2023-07-09 - Register ID: None	3		43	1
3039	2024-05-15 09:45:51.831236+00	203	User: youssef - Order Code: 4cbce8ac2023 - Date: 2023-07-09 - Register ID: None	3		43	1
3040	2024-05-15 09:45:51.831987+00	202	User: youssef - Order Code: d9b21ac02023 - Date: 2023-07-09 - Register ID: None	3		43	1
3041	2024-05-15 09:45:51.83288+00	201	User: youssef - Order Code: 18ba40442023 - Date: 2023-07-09 - Register ID: None	3		43	1
3042	2024-05-15 09:45:51.833633+00	200	User: youssef - Order Code: 1b6d2f962023 - Date: 2023-07-09 - Register ID: None	3		43	1
3043	2024-05-15 09:45:51.834376+00	199	User: youssef - Order Code: 7e7fce6b2023 - Date: 2023-07-09 - Register ID: None	3		43	1
3044	2024-05-15 09:45:51.835119+00	198	User: Ahmed Khattab - Order Code: f32036152023 - Date: 2023-06-12 - Register ID: None	3		43	1
3045	2024-05-15 09:45:51.835874+00	197	User: Ahmed Khattab - Order Code: 56ff59942023 - Date: 2023-06-12 - Register ID: None	3		43	1
3046	2024-05-15 09:45:51.837039+00	196	User: Ahmed Khattab - Order Code: ff2adf822023 - Date: 2023-06-12 - Register ID: None	3		43	1
3047	2024-05-15 09:45:51.837803+00	195	User: youssef - Order Code: bb5bad7a2023 - Date: 2023-05-30 - Register ID: None	3		43	1
3048	2024-05-15 09:45:51.838697+00	194	User: karim - Order Code: 0ea119482023 - Date: 2023-05-30 - Register ID: None	3		43	1
3049	2024-05-15 09:45:51.839609+00	193	User: mousa nageh - Order Code: cfbe61852023 - Date: 2023-05-23 - Register ID: None	3		43	1
3050	2024-05-15 09:45:51.84036+00	192	User: mousa nageh - Order Code: be50bc4b2023 - Date: 2023-05-23 - Register ID: None	3		43	1
3051	2024-05-15 09:45:51.841146+00	191	User: mousa nageh - Order Code: 55bacc4a2023 - Date: 2023-05-23 - Register ID: None	3		43	1
3052	2024-05-15 09:46:15.978856+00	245	User: youssef - Order Code: e1a436c62023 - Date: 2023-09-11 - Register ID: None	3		43	1
3053	2024-05-15 09:46:30.01372+00	242	User: youssef - Order Code: 74707f6a2023 - Date: 2023-09-10 - Register ID: None	3		43	1
3054	2024-05-15 09:46:44.642006+00	191	User: mousa nageh - Order Code: 55bacc4a2023 - Date: 2023-05-23 - Register ID: None	3		43	1
3055	2024-05-15 09:46:56.206712+00	195	User: youssef - Order Code: bb5bad7a2023 - Date: 2023-05-30 - Register ID: None	3		43	1
3056	2024-05-15 09:46:56.209285+00	194	User: karim - Order Code: 0ea119482023 - Date: 2023-05-30 - Register ID: None	3		43	1
3057	2024-05-15 09:46:56.210408+00	193	User: mousa nageh - Order Code: cfbe61852023 - Date: 2023-05-23 - Register ID: None	3		43	1
3058	2024-05-15 09:46:56.211535+00	192	User: mousa nageh - Order Code: be50bc4b2023 - Date: 2023-05-23 - Register ID: None	3		43	1
3059	2024-05-15 09:47:03.4441+00	48167df7-8048-4dfa-99f5-95a9be38eeb9	White mac tips	3		14	43
3060	2024-05-15 09:47:03.446485+00	59d5bad2-1713-45a2-ac3b-12d9396742da	Navi Tip 30 ga 25mm	3		14	43
3061	2024-05-15 09:47:03.447635+00	6602eb8d-4194-485b-ae81-734a2288289c	Inspiral brush tips	3		14	43
3062	2024-05-15 09:47:03.448572+00	807fd9ca-1c85-4f23-941f-29035abf6251	Black Mini Brush Tips	3		14	43
3063	2024-05-15 09:47:03.449508+00	a74c0f43-2e65-455a-ad26-cdcd5ecbd9e5	Gemini Uninitiated Tip 7mm	3		14	43
3064	2024-05-15 09:47:03.450504+00	c94223f2-e770-4bfb-80ce-f34dbddaa289	Navi Tip 29g 21mm	3		14	43
3065	2024-05-15 09:47:03.451411+00	ca660de4-289b-4ae6-b223-715293fbe867	Navi Tip Fx 25 mm	3		14	43
3066	2024-05-15 09:47:03.452229+00	f3ca3322-edfb-4097-b6a1-8cfb5134e87f	NaviTips 29gg 27mm	3		14	43
3067	2024-05-15 09:47:08.325562+00	194	User: karim - Order Code: 0ea119482023 - Date: 2023-05-30 - Register ID: None	3		43	1
3068	2024-05-15 09:47:08.327777+00	193	User: mousa nageh - Order Code: cfbe61852023 - Date: 2023-05-23 - Register ID: None	3		43	1
3069	2024-05-15 09:47:08.328776+00	192	User: mousa nageh - Order Code: be50bc4b2023 - Date: 2023-05-23 - Register ID: None	3		43	1
3070	2024-05-15 09:47:20.40593+00	193	User: mousa nageh - Order Code: cfbe61852023 - Date: 2023-05-23 - Register ID: None	3		43	1
3071	2024-05-15 09:47:20.408088+00	192	User: mousa nageh - Order Code: be50bc4b2023 - Date: 2023-05-23 - Register ID: None	3		43	1
3072	2024-05-15 09:47:31.778044+00	192	User: mousa nageh - Order Code: be50bc4b2023 - Date: 2023-05-23 - Register ID: None	3		43	1
3073	2024-05-15 09:48:29.58051+00	292	User: Ahmed Khattab - Order Code: 1789fd7e2024 - Date: 2024-05-15 - Register ID: None	3		43	1
3074	2024-05-15 09:48:29.584256+00	291	User: Ahmed Khattab - Order Code: 270508862024 - Date: 2024-05-14 - Register ID: None	3		43	1
3075	2024-05-15 09:48:29.585506+00	289	User: karim - Order Code: 1fe60bcb2024 - Date: 2024-05-13 - Register ID: None	3		43	1
3076	2024-05-15 09:48:29.586545+00	287	User: karim - Order Code: fc8814802024 - Date: 2024-05-11 - Register ID: None	3		43	1
3077	2024-05-15 09:48:29.587422+00	286	User: karim - Order Code: 1618618a2024 - Date: 2024-05-07 - Register ID: None	3		43	1
3078	2024-05-15 09:48:29.58877+00	285	User: Ahmed Khattab - Order Code: ad1bf74b2024 - Date: 2024-04-30 - Register ID: None	3		43	1
3079	2024-05-15 09:48:29.589863+00	284	User: karim - Order Code: b6119cca2024 - Date: 2024-04-30 - Register ID: None	3		43	1
3080	2024-05-15 09:48:29.590663+00	283	User: Ahmed Khattab - Order Code: 1dbdaa342024 - Date: 2024-04-30 - Register ID: None	3		43	1
3081	2024-05-15 09:48:29.591709+00	282	User: Ahmed Khattab - Order Code: 071d9a052024 - Date: 2024-04-30 - Register ID: None	3		43	1
3082	2024-05-15 09:48:29.592678+00	281	User: karim - Order Code: b896023a2024 - Date: 2024-04-30 - Register ID: None	3		43	1
3083	2024-05-15 09:48:29.593472+00	280	User: karim - Order Code: 39553b1d2024 - Date: 2024-04-30 - Register ID: None	3		43	1
3084	2024-05-15 09:48:29.594247+00	279	User: karim - Order Code: 98f19cb52024 - Date: 2024-04-30 - Register ID: None	3		43	1
3085	2024-05-15 09:48:29.59503+00	278	User: karim - Order Code: f42dc84e2024 - Date: 2024-04-30 - Register ID: None	3		43	1
3086	2024-05-15 09:48:29.595802+00	277	User: karim - Order Code: 21c307562024 - Date: 2024-04-30 - Register ID: None	3		43	1
3087	2024-05-15 09:48:29.608788+00	276	User: karim - Order Code: 99d41aa32024 - Date: 2024-04-30 - Register ID: None	3		43	1
3088	2024-05-15 09:48:29.609701+00	275	User: Ahmed Khattab - Order Code: c36f21192024 - Date: 2024-04-24 - Register ID: None	3		43	1
3089	2024-05-15 09:48:29.612756+00	274	User: Ahmed Khattab - Order Code: fcfb90ee2024 - Date: 2024-04-24 - Register ID: None	3		43	1
3090	2024-05-15 09:48:29.620759+00	273	User: Ahmed Khattab - Order Code: 5d936e162024 - Date: 2024-04-24 - Register ID: None	3		43	1
3091	2024-05-15 09:48:29.621791+00	272	User: Ahmed Khattab - Order Code: f3ae4d612024 - Date: 2024-04-24 - Register ID: None	3		43	1
3092	2024-05-15 09:48:29.624387+00	271	User: Ahmed Khattab - Order Code: 6fb714e92024 - Date: 2024-04-24 - Register ID: None	3		43	1
3093	2024-05-15 09:48:29.625446+00	270	User: Ahmed Khattab - Order Code: b803ff442023 - Date: 2023-12-02 - Register ID: None	3		43	1
3094	2024-05-15 09:48:29.627426+00	269	User: Ahmed Khattab - Order Code: 249b1b2a2023 - Date: 2023-11-19 - Register ID: None	3		43	1
3095	2024-05-15 09:48:29.628469+00	268	User: Ahmed Khattab - Order Code: 12b2d56e2023 - Date: 2023-11-19 - Register ID: None	3		43	1
3096	2024-05-15 09:48:29.6293+00	267	User: Ahmed Khattab - Order Code: faf0387e2023 - Date: 2023-11-01 - Register ID: None	3		43	1
3097	2024-05-15 09:48:29.630258+00	266	User: Ahmed Khattab - Order Code: 509188a52023 - Date: 2023-10-30 - Register ID: None	3		43	1
3098	2024-05-15 09:48:29.63103+00	265	User: Ahmed Khattab - Order Code: 57df83c52023 - Date: 2023-10-30 - Register ID: None	3		43	1
3099	2024-05-15 09:48:29.631945+00	264	User: Ahmed Khattab - Order Code: be348fe02023 - Date: 2023-10-30 - Register ID: None	3		43	1
3100	2024-05-15 09:48:29.632749+00	263	User: Ahmed Khattab - Order Code: be5be63d2023 - Date: 2023-10-30 - Register ID: None	3		43	1
3101	2024-05-15 09:48:29.633641+00	262	User: Ahmed Khattab - Order Code: b982ad402023 - Date: 2023-10-30 - Register ID: None	3		43	1
3102	2024-05-15 09:48:29.634832+00	261	User: Ahmed Khattab - Order Code: b948928b2023 - Date: 2023-10-30 - Register ID: None	3		43	1
3103	2024-05-15 09:48:29.635754+00	249	User: Ahmed Khattab - Order Code: f808fb612023 - Date: 2023-10-03 - Register ID: c2fa0686-9d5a-4dfa-aabf-a4ecfa20b607	3		43	1
3104	2024-05-15 09:48:29.636761+00	248	User: Ahmed Khattab - Order Code: 4d3462272023 - Date: 2023-09-26 - Register ID: None	3		43	1
3105	2024-05-15 09:48:29.637525+00	247	User: Ahmed Khattab - Order Code: 3d64e2862023 - Date: 2023-09-17 - Register ID: None	3		43	1
3106	2024-05-15 09:48:29.638481+00	246	User: Ahmed Khattab - Order Code: bfc0bd862023 - Date: 2023-09-12 - Register ID: None	3		43	1
3107	2024-05-15 09:48:29.63945+00	244	User: Ahmed Khattab - Order Code: f8fd1b892023 - Date: 2023-09-11 - Register ID: None	3		43	1
3108	2024-05-15 09:48:29.640211+00	243	User: Ahmed Khattab - Order Code: b0d45f992023 - Date: 2023-09-11 - Register ID: None	3		43	1
3109	2024-05-15 09:48:29.641199+00	192	User: mousa nageh - Order Code: be50bc4b2023 - Date: 2023-05-23 - Register ID: None	3		43	1
3110	2024-05-15 09:48:45.87486+00	292	User: Ahmed Khattab - Order Code: 1789fd7e2024 - Date: 2024-05-15 - Register ID: None	3		43	1
3111	2024-05-15 09:48:45.877963+00	291	User: Ahmed Khattab - Order Code: 270508862024 - Date: 2024-05-14 - Register ID: None	3		43	1
3112	2024-05-15 09:48:45.879142+00	289	User: karim - Order Code: 1fe60bcb2024 - Date: 2024-05-13 - Register ID: None	3		43	1
3113	2024-05-15 09:48:45.880193+00	287	User: karim - Order Code: fc8814802024 - Date: 2024-05-11 - Register ID: None	3		43	1
3114	2024-05-15 09:48:45.881101+00	286	User: karim - Order Code: 1618618a2024 - Date: 2024-05-07 - Register ID: None	3		43	1
3115	2024-05-15 09:48:45.88201+00	285	User: Ahmed Khattab - Order Code: ad1bf74b2024 - Date: 2024-04-30 - Register ID: None	3		43	1
3116	2024-05-15 09:48:45.883049+00	284	User: karim - Order Code: b6119cca2024 - Date: 2024-04-30 - Register ID: None	3		43	1
3117	2024-05-15 09:48:45.883836+00	283	User: Ahmed Khattab - Order Code: 1dbdaa342024 - Date: 2024-04-30 - Register ID: None	3		43	1
3118	2024-05-15 09:48:45.884636+00	282	User: Ahmed Khattab - Order Code: 071d9a052024 - Date: 2024-04-30 - Register ID: None	3		43	1
3119	2024-05-15 09:48:45.885422+00	281	User: karim - Order Code: b896023a2024 - Date: 2024-04-30 - Register ID: None	3		43	1
3120	2024-05-15 09:48:45.886333+00	280	User: karim - Order Code: 39553b1d2024 - Date: 2024-04-30 - Register ID: None	3		43	1
3121	2024-05-15 09:48:45.8872+00	279	User: karim - Order Code: 98f19cb52024 - Date: 2024-04-30 - Register ID: None	3		43	1
3122	2024-05-15 09:48:45.888012+00	278	User: karim - Order Code: f42dc84e2024 - Date: 2024-04-30 - Register ID: None	3		43	1
3123	2024-05-15 09:48:45.888796+00	277	User: karim - Order Code: 21c307562024 - Date: 2024-04-30 - Register ID: None	3		43	1
3124	2024-05-15 09:48:45.890561+00	276	User: karim - Order Code: 99d41aa32024 - Date: 2024-04-30 - Register ID: None	3		43	1
3125	2024-05-15 09:48:45.89161+00	275	User: Ahmed Khattab - Order Code: c36f21192024 - Date: 2024-04-24 - Register ID: None	3		43	1
3126	2024-05-15 09:48:45.892383+00	274	User: Ahmed Khattab - Order Code: fcfb90ee2024 - Date: 2024-04-24 - Register ID: None	3		43	1
3127	2024-05-15 09:48:45.893367+00	273	User: Ahmed Khattab - Order Code: 5d936e162024 - Date: 2024-04-24 - Register ID: None	3		43	1
3128	2024-05-15 09:48:45.894205+00	272	User: Ahmed Khattab - Order Code: f3ae4d612024 - Date: 2024-04-24 - Register ID: None	3		43	1
3129	2024-05-15 09:48:45.895107+00	271	User: Ahmed Khattab - Order Code: 6fb714e92024 - Date: 2024-04-24 - Register ID: None	3		43	1
3130	2024-05-15 09:48:45.896039+00	270	User: Ahmed Khattab - Order Code: b803ff442023 - Date: 2023-12-02 - Register ID: None	3		43	1
3131	2024-05-15 09:48:45.909227+00	269	User: Ahmed Khattab - Order Code: 249b1b2a2023 - Date: 2023-11-19 - Register ID: None	3		43	1
3132	2024-05-15 09:48:45.912767+00	268	User: Ahmed Khattab - Order Code: 12b2d56e2023 - Date: 2023-11-19 - Register ID: None	3		43	1
3133	2024-05-15 09:48:45.913608+00	267	User: Ahmed Khattab - Order Code: faf0387e2023 - Date: 2023-11-01 - Register ID: None	3		43	1
3134	2024-05-15 09:48:45.921015+00	266	User: Ahmed Khattab - Order Code: 509188a52023 - Date: 2023-10-30 - Register ID: None	3		43	1
3135	2024-05-15 09:48:45.922024+00	265	User: Ahmed Khattab - Order Code: 57df83c52023 - Date: 2023-10-30 - Register ID: None	3		43	1
3136	2024-05-15 09:48:45.923022+00	264	User: Ahmed Khattab - Order Code: be348fe02023 - Date: 2023-10-30 - Register ID: None	3		43	1
3137	2024-05-15 09:48:45.923982+00	263	User: Ahmed Khattab - Order Code: be5be63d2023 - Date: 2023-10-30 - Register ID: None	3		43	1
3138	2024-05-15 09:48:45.925003+00	262	User: Ahmed Khattab - Order Code: b982ad402023 - Date: 2023-10-30 - Register ID: None	3		43	1
3139	2024-05-15 09:48:45.926562+00	261	User: Ahmed Khattab - Order Code: b948928b2023 - Date: 2023-10-30 - Register ID: None	3		43	1
3140	2024-05-15 09:48:45.927544+00	192	User: mousa nageh - Order Code: be50bc4b2023 - Date: 2023-05-23 - Register ID: None	3		43	1
3141	2024-05-15 09:49:05.804901+00	192	User: mousa nageh - Order Code: be50bc4b2023 - Date: 2023-05-23 - Register ID: None	3		43	1
3142	2024-05-15 10:00:42.871358+00	192	User: mousa nageh - Order Code: be50bc4b2023 - Date: 2023-05-23 - Register ID: None	3		43	1
3143	2024-05-15 10:00:51.03419+00	292	User: Ahmed Khattab - Order Code: 1789fd7e2024 - Date: 2024-05-15 - Register ID: None	3		43	1
3144	2024-05-15 10:00:51.037674+00	291	User: Ahmed Khattab - Order Code: 270508862024 - Date: 2024-05-14 - Register ID: None	3		43	1
3145	2024-05-15 10:00:51.038855+00	289	User: karim - Order Code: 1fe60bcb2024 - Date: 2024-05-13 - Register ID: None	3		43	1
3146	2024-05-15 10:00:51.039764+00	287	User: karim - Order Code: fc8814802024 - Date: 2024-05-11 - Register ID: None	3		43	1
3147	2024-05-15 10:00:51.040679+00	286	User: karim - Order Code: 1618618a2024 - Date: 2024-05-07 - Register ID: None	3		43	1
3148	2024-05-15 10:00:51.041688+00	285	User: Ahmed Khattab - Order Code: ad1bf74b2024 - Date: 2024-04-30 - Register ID: None	3		43	1
3149	2024-05-15 10:00:51.042569+00	284	User: karim - Order Code: b6119cca2024 - Date: 2024-04-30 - Register ID: None	3		43	1
3150	2024-05-15 10:00:51.04335+00	283	User: Ahmed Khattab - Order Code: 1dbdaa342024 - Date: 2024-04-30 - Register ID: None	3		43	1
3151	2024-05-15 10:00:51.044265+00	282	User: Ahmed Khattab - Order Code: 071d9a052024 - Date: 2024-04-30 - Register ID: None	3		43	1
3152	2024-05-15 10:00:51.045225+00	281	User: karim - Order Code: b896023a2024 - Date: 2024-04-30 - Register ID: None	3		43	1
3153	2024-05-15 10:00:51.046155+00	280	User: karim - Order Code: 39553b1d2024 - Date: 2024-04-30 - Register ID: None	3		43	1
3154	2024-05-15 10:00:51.047029+00	279	User: karim - Order Code: 98f19cb52024 - Date: 2024-04-30 - Register ID: None	3		43	1
3155	2024-05-15 10:00:51.047946+00	278	User: karim - Order Code: f42dc84e2024 - Date: 2024-04-30 - Register ID: None	3		43	1
3156	2024-05-15 10:00:51.048766+00	277	User: karim - Order Code: 21c307562024 - Date: 2024-04-30 - Register ID: None	3		43	1
3157	2024-05-15 10:00:51.049742+00	276	User: karim - Order Code: 99d41aa32024 - Date: 2024-04-30 - Register ID: None	3		43	1
3158	2024-05-15 10:00:51.05093+00	275	User: Ahmed Khattab - Order Code: c36f21192024 - Date: 2024-04-24 - Register ID: None	3		43	1
3159	2024-05-15 10:00:51.05172+00	274	User: Ahmed Khattab - Order Code: fcfb90ee2024 - Date: 2024-04-24 - Register ID: None	3		43	1
3160	2024-05-15 10:00:51.052704+00	273	User: Ahmed Khattab - Order Code: 5d936e162024 - Date: 2024-04-24 - Register ID: None	3		43	1
3161	2024-05-15 10:00:51.053656+00	272	User: Ahmed Khattab - Order Code: f3ae4d612024 - Date: 2024-04-24 - Register ID: None	3		43	1
3162	2024-05-15 10:00:51.054817+00	271	User: Ahmed Khattab - Order Code: 6fb714e92024 - Date: 2024-04-24 - Register ID: None	3		43	1
3163	2024-05-15 10:00:51.055791+00	270	User: Ahmed Khattab - Order Code: b803ff442023 - Date: 2023-12-02 - Register ID: None	3		43	1
3164	2024-05-15 10:00:51.056914+00	269	User: Ahmed Khattab - Order Code: 249b1b2a2023 - Date: 2023-11-19 - Register ID: None	3		43	1
3165	2024-05-15 10:00:51.057704+00	268	User: Ahmed Khattab - Order Code: 12b2d56e2023 - Date: 2023-11-19 - Register ID: None	3		43	1
3166	2024-05-15 10:00:51.059883+00	267	User: Ahmed Khattab - Order Code: faf0387e2023 - Date: 2023-11-01 - Register ID: None	3		43	1
3167	2024-05-15 10:00:51.06068+00	266	User: Ahmed Khattab - Order Code: 509188a52023 - Date: 2023-10-30 - Register ID: None	3		43	1
3168	2024-05-15 10:00:51.061601+00	265	User: Ahmed Khattab - Order Code: 57df83c52023 - Date: 2023-10-30 - Register ID: None	3		43	1
3169	2024-05-15 10:00:51.062386+00	264	User: Ahmed Khattab - Order Code: be348fe02023 - Date: 2023-10-30 - Register ID: None	3		43	1
3170	2024-05-15 10:00:51.063161+00	263	User: Ahmed Khattab - Order Code: be5be63d2023 - Date: 2023-10-30 - Register ID: None	3		43	1
3171	2024-05-15 10:00:51.064049+00	262	User: Ahmed Khattab - Order Code: b982ad402023 - Date: 2023-10-30 - Register ID: None	3		43	1
3172	2024-05-15 10:00:51.065022+00	261	User: Ahmed Khattab - Order Code: b948928b2023 - Date: 2023-10-30 - Register ID: None	3		43	1
3173	2024-05-15 10:00:51.065944+00	249	User: Ahmed Khattab - Order Code: f808fb612023 - Date: 2023-10-03 - Register ID: c2fa0686-9d5a-4dfa-aabf-a4ecfa20b607	3		43	1
3174	2024-05-15 10:00:51.066736+00	248	User: Ahmed Khattab - Order Code: 4d3462272023 - Date: 2023-09-26 - Register ID: None	3		43	1
3175	2024-05-15 10:00:51.067536+00	247	User: Ahmed Khattab - Order Code: 3d64e2862023 - Date: 2023-09-17 - Register ID: None	3		43	1
3176	2024-05-15 10:00:51.068291+00	246	User: Ahmed Khattab - Order Code: bfc0bd862023 - Date: 2023-09-12 - Register ID: None	3		43	1
3177	2024-05-15 10:00:51.069098+00	244	User: Ahmed Khattab - Order Code: f8fd1b892023 - Date: 2023-09-11 - Register ID: None	3		43	1
3178	2024-05-15 10:00:51.070068+00	243	User: Ahmed Khattab - Order Code: b0d45f992023 - Date: 2023-09-11 - Register ID: None	3		43	1
3179	2024-05-15 10:00:51.071052+00	241	User: youssef - Order Code: 3ea751722023 - Date: 2023-09-10 - Register ID: None	3		43	1
3180	2024-05-15 10:00:51.071935+00	240	User: youssef - Order Code: 620d48212023 - Date: 2023-09-10 - Register ID: None	3		43	1
3181	2024-05-15 10:00:51.072868+00	239	User: youssef - Order Code: 232c5a9f2023 - Date: 2023-09-10 - Register ID: None	3		43	1
3182	2024-05-15 10:00:51.073904+00	238	User: youssef - Order Code: f71df6372023 - Date: 2023-09-10 - Register ID: None	3		43	1
3183	2024-05-15 10:00:51.075071+00	237	User: youssef - Order Code: b6add8fb2023 - Date: 2023-09-10 - Register ID: None	3		43	1
3184	2024-05-15 10:00:51.076073+00	236	User: youssef - Order Code: 6b4645af2023 - Date: 2023-08-24 - Register ID: None	3		43	1
3185	2024-05-15 10:00:51.077186+00	235	User: youssef - Order Code: a442aa3d2023 - Date: 2023-08-24 - Register ID: None	3		43	1
3186	2024-05-15 10:00:51.078089+00	234	User: youssef - Order Code: 0b0084152023 - Date: 2023-08-24 - Register ID: None	3		43	1
3187	2024-05-15 10:00:51.078899+00	233	User: youssef - Order Code: 29b98ae42023 - Date: 2023-08-24 - Register ID: None	3		43	1
3188	2024-05-15 10:00:51.07972+00	232	User: youssef - Order Code: da8be7462023 - Date: 2023-08-24 - Register ID: None	3		43	1
3189	2024-05-15 10:00:51.080507+00	231	User: youssef - Order Code: c38553412023 - Date: 2023-08-24 - Register ID: None	3		43	1
3190	2024-05-15 10:00:51.081324+00	230	User: youssef - Order Code: 3abe5b922023 - Date: 2023-08-24 - Register ID: None	3		43	1
3191	2024-05-15 10:00:51.082095+00	229	User: youssef - Order Code: 37c734e72023 - Date: 2023-08-24 - Register ID: None	3		43	1
3192	2024-05-15 10:00:51.082876+00	228	User: youssef - Order Code: 2ef3c7632023 - Date: 2023-08-24 - Register ID: None	3		43	1
3193	2024-05-15 10:00:51.083665+00	227	User: youssef - Order Code: 2f05a3382023 - Date: 2023-08-24 - Register ID: None	3		43	1
3194	2024-05-15 10:00:51.084492+00	226	User: youssef - Order Code: 1d69ded12023 - Date: 2023-08-24 - Register ID: None	3		43	1
3195	2024-05-15 10:00:51.085296+00	225	User: youssef - Order Code: 957bb5262023 - Date: 2023-08-24 - Register ID: None	3		43	1
3196	2024-05-15 10:00:51.086058+00	224	User: youssef - Order Code: cf168eff2023 - Date: 2023-08-24 - Register ID: None	3		43	1
3197	2024-05-15 10:00:51.086889+00	223	User: youssef - Order Code: a1e8d54d2023 - Date: 2023-08-24 - Register ID: None	3		43	1
3198	2024-05-15 10:00:51.087735+00	222	User: youssef - Order Code: 355e0a392023 - Date: 2023-08-24 - Register ID: None	3		43	1
3199	2024-05-15 10:00:51.088596+00	221	User: youssef - Order Code: ca2086c02023 - Date: 2023-08-24 - Register ID: None	3		43	1
3200	2024-05-15 10:00:51.089404+00	220	User: youssef - Order Code: 65e9d6d92023 - Date: 2023-08-24 - Register ID: None	3		43	1
3201	2024-05-15 10:00:51.090348+00	219	User: youssef - Order Code: 315ca4dc2023 - Date: 2023-08-24 - Register ID: None	3		43	1
3202	2024-05-15 10:00:51.091122+00	218	User: youssef - Order Code: 2486d49c2023 - Date: 2023-08-24 - Register ID: None	3		43	1
3203	2024-05-15 10:00:51.092057+00	217	User: youssef - Order Code: 23648dd62023 - Date: 2023-08-24 - Register ID: None	3		43	1
3204	2024-05-15 10:00:51.09302+00	216	User: Ahmed Khattab - Order Code: 0420516e2023 - Date: 2023-07-11 - Register ID: None	3		43	1
3205	2024-05-15 10:00:51.093929+00	215	User: Ahmed Khattab - Order Code: 08183f822023 - Date: 2023-07-11 - Register ID: None	3		43	1
3206	2024-05-15 10:00:51.094712+00	214	User: karim - Order Code: 6e4fcae32023 - Date: 2023-07-11 - Register ID: None	3		43	1
3207	2024-05-15 10:00:51.095661+00	213	User: Ahmed Khattab - Order Code: a3da629c2023 - Date: 2023-07-11 - Register ID: None	3		43	1
3208	2024-05-15 10:00:51.096424+00	212	User: karim - Order Code: 832c5aaa2023 - Date: 2023-07-11 - Register ID: None	3		43	1
3209	2024-05-15 10:00:51.097324+00	211	User: Ahmed Khattab - Order Code: d16be0b42023 - Date: 2023-07-09 - Register ID: None	3		43	1
3210	2024-05-15 10:00:51.098085+00	210	User: Ahmed Khattab - Order Code: 6c2393042023 - Date: 2023-07-09 - Register ID: None	3		43	1
3211	2024-05-15 10:00:51.098844+00	209	User: karim - Order Code: f1be7da22023 - Date: 2023-07-09 - Register ID: None	3		43	1
3212	2024-05-15 10:00:51.099625+00	208	User: karim - Order Code: ae5a39fb2023 - Date: 2023-07-09 - Register ID: None	3		43	1
3213	2024-05-15 10:00:51.10041+00	207	User: karim - Order Code: 03dcfc182023 - Date: 2023-07-09 - Register ID: None	3		43	1
3214	2024-05-15 10:00:51.101214+00	206	User: karim - Order Code: f024d4fa2023 - Date: 2023-07-09 - Register ID: None	3		43	1
3215	2024-05-15 10:00:51.102022+00	205	User: youssef - Order Code: 2ee5500d2023 - Date: 2023-07-09 - Register ID: None	3		43	1
3216	2024-05-15 10:00:51.102949+00	204	User: youssef - Order Code: 68de997b2023 - Date: 2023-07-09 - Register ID: None	3		43	1
3217	2024-05-15 10:00:51.103715+00	203	User: youssef - Order Code: 4cbce8ac2023 - Date: 2023-07-09 - Register ID: None	3		43	1
3218	2024-05-15 10:00:51.104494+00	202	User: youssef - Order Code: d9b21ac02023 - Date: 2023-07-09 - Register ID: None	3		43	1
3219	2024-05-15 10:00:51.105425+00	201	User: youssef - Order Code: 18ba40442023 - Date: 2023-07-09 - Register ID: None	3		43	1
3220	2024-05-15 10:00:51.106216+00	200	User: youssef - Order Code: 1b6d2f962023 - Date: 2023-07-09 - Register ID: None	3		43	1
3221	2024-05-15 10:00:51.107089+00	199	User: youssef - Order Code: 7e7fce6b2023 - Date: 2023-07-09 - Register ID: None	3		43	1
3222	2024-05-15 10:00:51.108009+00	198	User: Ahmed Khattab - Order Code: f32036152023 - Date: 2023-06-12 - Register ID: None	3		43	1
3223	2024-05-15 10:00:51.109011+00	197	User: Ahmed Khattab - Order Code: 56ff59942023 - Date: 2023-06-12 - Register ID: None	3		43	1
3224	2024-05-15 10:00:51.109822+00	196	User: Ahmed Khattab - Order Code: ff2adf822023 - Date: 2023-06-12 - Register ID: None	3		43	1
3225	2024-05-15 10:00:51.1106+00	195	User: youssef - Order Code: bb5bad7a2023 - Date: 2023-05-30 - Register ID: None	3		43	1
3226	2024-05-15 10:00:51.11142+00	194	User: karim - Order Code: 0ea119482023 - Date: 2023-05-30 - Register ID: None	3		43	1
3227	2024-05-15 10:00:51.112348+00	193	User: mousa nageh - Order Code: cfbe61852023 - Date: 2023-05-23 - Register ID: None	3		43	1
3228	2024-05-15 12:34:32.460514+00	11	Devices	2	[{"changed": {"fields": ["Image"]}}]	19	43
3229	2024-05-16 09:01:57.561553+00	57	01028505910	3		21	43
3230	2024-05-16 09:02:06.581063+00	56	01098872271	3		21	1
3231	2024-05-16 10:37:12.216891+00	66	01098872271	3		21	1
3232	2024-05-16 10:39:07.713133+00	68	01098872271	3		21	1
3233	2024-05-16 11:18:15.47952+00	042d2ad5-c4db-4dda-9b20-c9edd306b227	Endo 1	2	[{"changed": {"fields": ["Stock"]}}]	14	43
3234	2024-05-16 11:26:08.384582+00	295	User: Ahmed Khattab - Order Code: dfa979e32024 - Date: 2024-05-16 - Register ID: None	3		43	1
3235	2024-05-16 11:47:40.960574+00	042d2ad5-c4db-4dda-9b20-c9edd306b227	Endo 1	2	[{"changed": {"fields": ["Stock"]}}]	14	43
3236	2024-05-16 11:48:03.925763+00	67ed33bc-6de3-40ff-8c01-a88382b17aa2	PERFIT set (B)	2	[{"changed": {"fields": ["Stock"]}}]	14	43
3237	2024-05-16 13:10:41.789049+00	bc06f090-897b-43d1-93d1-57a8399352bb	Skini Syringe	2	[{"changed": {"fields": ["Stock"]}}]	14	43
3238	2024-05-16 13:11:09.953611+00	630aed6f-ecb6-49e4-8450-0f993720c5cc	U Veneer Template Ref.	2	[{"changed": {"fields": ["Stock"]}}]	14	43
3239	2024-05-16 13:11:41.413387+00	a2ebe84b-5cb1-4b4d-95f7-50d195bd3ab3	Ultra Etch Ref.	2	[]	14	43
3240	2024-05-16 13:12:13.332165+00	16e91f84-28c5-4520-8f97-4bcb856c6d66	Ultra-Etch	2	[{"changed": {"fields": ["Price"]}}]	14	43
3241	2024-05-16 13:12:54.660021+00	a2ebe84b-5cb1-4b4d-95f7-50d195bd3ab3	Ultra Etch Ref.	3		14	43
3242	2024-05-16 13:13:42.070464+00	f4ebe4bc-c559-4aa4-b6cc-48fd7fa8bc66	Viscostat Clear indispense	2	[{"changed": {"fields": ["Price"]}}]	14	43
3243	2024-05-16 13:14:06.293761+00	ee138c5a-d287-44be-9b20-ba8bdc213dcd	Opalescence Boost	2	[{"changed": {"fields": ["Price"]}}]	14	43
3244	2024-05-16 13:14:27.327181+00	c343b79f-64f7-45bf-98de-a275665425d5	Metal D.Infusor Tip Viscostat ref	2	[{"changed": {"fields": ["Stock"]}}]	14	43
3245	2024-05-18 09:01:03.872786+00	1	Offers	2	[]	53	62
3246	2024-05-18 11:26:06.018643+00	19	home/home-swiper/WhatsApp_Image_2024-05-18_at_13.43.09_1.jpeg	1	[{"added": {}}]	46	43
3247	2024-05-18 11:43:53.66813+00	11	Devices	2	[{"changed": {"fields": ["Image"]}}]	19	43
3248	2024-05-18 11:49:59.749862+00	11	Devices	2	[{"changed": {"fields": ["Category details image"]}}]	19	43
3249	2024-05-18 11:51:28.354893+00	11	Devices	2	[{"changed": {"fields": ["Category details image"]}}]	19	43
3250	2024-05-18 11:54:36.593776+00	11	Devices	2	[{"changed": {"fields": ["Category details image"]}}]	19	43
3251	2024-05-18 11:55:27.638862+00	11	Devices	2	[{"changed": {"fields": ["Category details image"]}}]	19	43
3252	2024-05-18 11:56:04.511192+00	11	Devices	2	[{"changed": {"fields": ["Category image"]}}]	19	43
3253	2024-05-18 11:58:21.399041+00	11	Devices	2	[{"changed": {"fields": ["Category image"]}}]	19	43
3254	2024-05-18 12:00:00.516413+00	11	Devices	2	[{"changed": {"fields": ["Category details image"]}}]	19	43
3255	2024-05-18 12:00:30.166815+00	11	Devices	2	[{"changed": {"fields": ["Hover image"]}}]	19	43
3256	2024-05-19 07:49:35.975146+00	58	Order Code :  d33b75242024 - Date : 2024-05-18	2	[{"changed": {"name": "refund item", "object": "Order Code : d33b75242024 - EndoEze Irrigator tips - 1", "fields": ["To refund quantity"]}}]	47	31
3258	2024-05-19 12:01:23.795672+00	1	Contact us	2	[{"changed": {"fields": ["Image"]}}]	8	43
3259	2024-05-19 12:01:49.00596+00	1	Contact us	2	[{"changed": {"fields": ["Image"]}}]	8	43
3260	2024-05-19 17:26:47.913317+00	1	Contact us	2	[{"changed": {"fields": ["Image"]}}]	8	31
3261	2024-05-19 17:31:52.903887+00	1	Contact us	2	[{"changed": {"fields": ["Image"]}}]	8	31
3262	2024-05-19 17:53:50.810695+00	11	Devices	2	[{"changed": {"fields": ["Image"]}}]	19	31
3263	2024-05-20 08:52:29.713499+00	316	User: Shaker - Order Code: e9d48ac62024 - Date: 2024-05-20 - Register ID: None	2	[{"changed": {"fields": ["Order status"]}}, {"changed": {"name": "order item", "object": "User: Shaker - Order Code: e9d48ac62024 - Product Title: PT-A", "fields": ["Product title ar"]}}]	43	1
3264	2024-05-20 08:54:19.636844+00	317	User: Shaker - Order Code: 5bac02f92024 - Date: 2024-05-20 - Register ID: None	2	[{"changed": {"fields": ["Order status"]}}, {"changed": {"name": "order item", "object": "User: Shaker - Order Code: 5bac02f92024 - Product Title: Endo 1", "fields": ["Product title ar"]}}]	43	1
3265	2024-05-23 08:31:41.968589+00	14	TST	1	[{"added": {}}]	13	43
3266	2024-05-23 08:42:35.273903+00	446a342e-8e90-4285-874f-0c7907e4e458	TST Gypsum Plaster	1	[{"added": {}}, {"added": {"name": "product image", "object": "TST Gypsum Plaster - product/TST Gypsum Plaster/WhatsApp_Image_2024-05-21_at_10.16.46_2.jpeg"}}, {"added": {"name": "product image", "object": "TST Gypsum Plaster - product/TST Gypsum Plaster/WhatsApp_Image_2024-05-21_at_10.16.46.jpeg"}}, {"added": {"name": "product image", "object": "TST Gypsum Plaster - product/TST Gypsum Plaster/WhatsApp_Image_2024-05-21_at_10.16.46_1.jpeg"}}]	14	43
3267	2024-05-23 08:46:11.187266+00	71	Gypsum Plaster	1	[{"added": {}}]	18	43
3268	2024-05-23 08:47:55.185319+00	446a342e-8e90-4285-874f-0c7907e4e458	TST Gypsum Plaster	2	[{"changed": {"fields": ["Sub branch", "Weight", "Price", "Stock"]}}]	14	43
3269	2024-05-23 08:47:57.133777+00	446a342e-8e90-4285-874f-0c7907e4e458	TST Gypsum Plaster	2	[]	14	43
3270	2024-05-26 09:43:59.404996+00	1	Why KMC?	2	[{"changed": {"fields": ["About text"]}}]	9	43
3271	2024-05-26 09:44:34.284723+00	1	HomeDetails object (1)	2	[{"changed": {"fields": ["About us 1 caption", "About us 2 caption"]}}]	49	43
3272	2024-05-26 10:05:44.340984+00	1	HomeDetails object (1)	2	[{"changed": {"fields": ["Categories caption"]}}]	49	43
3273	2024-05-26 10:50:22.615063+00	1	Why KMC?	2	[{"changed": {"name": "translation", "object": "Why KMC?: \\u0641\\u064a \\u0639\\u0627\\u0645 1989\\u060c \\u0623\\u0633\\u0633 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631 \\u0648\\u0644\\u064a\\u062f \\u0643\\u0646\\u062f\\u064a\\u0644 \\u0634\\u0631\\u0643\\u0629 \\u0643\\u0646\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0629\\u060c \\u0648\\u0643\\u0627\\u0646\\u062a \\u0645\\u0642\\u0631\\u0647\\u0627 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a \\u0641\\u064a \\u0627\\u0644\\u0628\\u062f\\u0627\\u064a\\u0629 \\u0641\\u064a \\u0645\\u0635\\u0631 \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f\\u0629. \\u0645\\u0639 \\u0645\\u0631\\u0648\\u0631 \\u0627\\u0644\\u0648\\u0642\\u062a\\u060c \\u0646\\u0645\\u062a \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629 \\u0628\\u0634\\u0643\\u0644 \\u0643\\u0628\\u064a\\u0631\\u060c \\u062d\\u062a\\u0649 \\u0623\\u0635\\u0628\\u062d\\u062a \\u0634\\u0631\\u0643\\u0629 \\u0637\\u0628\\u064a\\u0629 \\u0645\\u0635\\u0631\\u064a\\u0629 \\u0628\\u0627\\u0631\\u0632\\u0629\\u060c \\u062a\\u0645\\u062a\\u0644\\u0643 \\u0639\\u062f\\u0629 \\u0641\\u0631\\u0648\\u0639 \\u0641\\u064a \\u062c\\u0645\\u064a\\u0639 \\u0623\\u0646\\u062d\\u0627\\u0621 \\u0627\\u0644\\u0628\\u0644\\u0627\\u062f\\u060c \\u0628\\u0645\\u0627 \\u0641\\u064a \\u0630\\u0644\\u0643 \\u0645\\u0635\\u0631 \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f\\u0629\\u060c \\u0627\\u0644\\u0645\\u0646\\u064a\\u0644\\u060c \\u0627\\u0644\\u0625\\u0633\\u0643\\u0646\\u062f\\u0631\\u064a\\u0629\\u060c \\u0645\\u062f\\u064a\\u0646\\u0629 \\u0646\\u0635\\u0631\\u060c \\u0648\\u0627\\u0644\\u0642\\u0635\\u0631 \\u0627\\u0644\\u0639\\u064a\\u0646\\u064a. \\u0628\\u0627\\u0644\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0625\\u0644\\u0649 \\u0630\\u0644\\u0643\\u060c \\u0642\\u0627\\u0645\\u062a \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629 \\u0628\\u062a\\u0643\\u0648\\u064a\\u0646 \\u0639\\u0644\\u0627\\u0642\\u0627\\u062a \\u062f\\u0648\\u0644\\u064a\\u0629 \\u0645\\u0639 \\u0634\\u0631\\u0643\\u0627\\u0621 \\u0641\\u064a \\u0627\\u0644\\u0648\\u0644\\u0627\\u064a\\u0627\\u062a \\u0627\\u0644\\u0645\\u062a\\u062d\\u062f\\u0629\\u060c \\u0627\\u0644\\u0645\\u0645\\u0644\\u0643\\u0629 \\u0627\\u0644\\u0645\\u062a\\u062d\\u062f\\u0629\\u060c \\u0643\\u0646\\u062f\\u0627\\u060c \\u0648\\u0627\\u0644\\u0635\\u064a\\u0646. \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0639\\u0644\\u0627\\u0642\\u0627\\u062a \\u0633\\u0627\\u0639\\u062f\\u062a \\u0641\\u064a \\u0625\\u062f\\u062e\\u0627\\u0644 \\u0627\\u0644\\u0639\\u0644\\u0627\\u0645\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u0627\\u0644\\u0639\\u0627\\u0644\\u0645\\u064a\\u0629 \\u0627\\u0644\\u0634\\u0647\\u064a\\u0631\\u0629 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u0633\\u0648\\u0642 \\u0627\\u0644\\u0645\\u0635\\u0631\\u064a\\u0629\\u060c \\u0645\\u0645\\u0627 \\u064a\\u062a\\u0645\\u0627\\u0634\\u0649 \\u0645\\u0639 \\u0645\\u0647\\u0645\\u0629 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629 \\u0644\\u062a\\u0648\\u0641\\u064a\\u0631 \\u062a\\u0643\\u0646\\u0648\\u0644\\u0648\\u062c\\u064a\\u0627 \\u0637\\u0628 \\u0627\\u0644\\u0623\\u0633\\u0646\\u0627\\u0646 \\u0627\\u0644\\u0645\\u062a\\u0637\\u0648\\u0631\\u0629 \\u0628\\u0627\\u0633\\u062a\\u0645\\u0631\\u0627\\u0631 \\u0644\\u062a\\u0644\\u0628\\u064a\\u0629 \\u0627\\u0644\\u0627\\u062d\\u062a\\u064a\\u0627\\u062c\\u0627\\u062a \\u0627\\u0644\\u0645\\u0647\\u0646\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0639\\u0645\\u0644\\u064a\\u0629 \\u0644\\u0644\\u0645\\u0633\\u062a\\u0647\\u0644\\u0643\\u064a\\u0646 \\u0627\\u0644\\u0645\\u0635\\u0631\\u064a\\u064a\\u0646.", "fields": ["Text"]}}]	9	43
3274	2024-06-04 12:12:28.841604+00	65	01028505910	2	[{"changed": {"fields": ["Is active"]}}]	21	43
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	translations	translation
7	contact_us	contactform
8	contact_us	contactus
9	about_us	aboutus
10	about_us	testimonial
11	about_us	aboutusstatistics
12	product	branch
13	product	brand
14	product	product
15	product	productimage
16	product	productvideourl
17	product	review
18	product	subbranch
19	product	type
20	product	wishlist
21	user	user
34	user	useraddress
35	user	otp
36	courses	course
37	article	article
38	cart	cart
39	cart	cartitem
40	coupon	coupon
41	general	general
42	points	points
43	order	order
44	order	orderitem
45	order	orderaddress
46	home	homeswiper
47	order	refund
48	order	refunditem
49	home	homedetails
50	product	productitem
51	footer	service
52	FAQ	faq
53	offers	offer
54	home	popularproduct
55	smsa	zone
56	smsa	zonecity
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	about_us	0001_initial	2022-03-30 15:16:08.489037+00
2	about_us	0002_auto_20220330_1200	2022-03-30 15:16:08.510933+00
3	contenttypes	0001_initial	2022-03-30 15:16:08.522574+00
4	contenttypes	0002_remove_content_type_name	2022-03-30 15:16:08.538195+00
5	auth	0001_initial	2022-03-30 15:16:08.567025+00
6	auth	0002_alter_permission_name_max_length	2022-03-30 15:16:08.588337+00
7	auth	0003_alter_user_email_max_length	2022-03-30 15:16:08.597983+00
8	auth	0004_alter_user_username_opts	2022-03-30 15:16:08.608175+00
9	auth	0005_alter_user_last_login_null	2022-03-30 15:16:08.618672+00
10	auth	0006_require_contenttypes_0002	2022-03-30 15:16:08.622443+00
11	auth	0007_alter_validators_add_error_messages	2022-03-30 15:16:08.63265+00
12	auth	0008_alter_user_username_max_length	2022-03-30 15:16:08.643335+00
13	auth	0009_alter_user_last_name_max_length	2022-03-30 15:16:08.653572+00
14	auth	0010_alter_group_name_max_length	2022-03-30 15:16:08.664284+00
15	auth	0011_update_proxy_permissions	2022-03-30 15:16:08.676834+00
16	auth	0012_alter_user_first_name_max_length	2022-03-30 15:16:08.688271+00
17	user	0001_initial	2022-03-30 15:16:08.710353+00
18	admin	0001_initial	2022-03-30 15:16:08.742252+00
19	admin	0002_logentry_remove_auto_add	2022-03-30 15:16:08.759436+00
20	admin	0003_logentry_add_action_flag_choices	2022-03-30 15:16:08.771774+00
21	contact_us	0001_initial	2022-03-30 15:16:08.789053+00
22	product	0001_initial	2022-03-30 15:16:08.845999+00
23	product	0002_auto_20220330_1504	2022-03-30 15:16:09.044315+00
24	sessions	0001_initial	2022-03-30 15:16:09.075033+00
25	translations	0001_initial	2022-03-30 15:16:09.120402+00
26	translations	0002_auto_20180920_1245	2022-03-30 15:16:09.136011+00
27	translations	0003_auto_20220330_1516	2022-03-30 15:16:09.148491+00
34	translations	0003_auto_20220330_1600	2022-03-30 16:00:56.776098+00
35	user	0002_otp_useraddress	2022-03-30 16:00:56.874036+00
36	product	0003_auto_20220331_1023	2022-03-31 10:23:38.539875+00
37	translations	0003_auto_20220331_1023	2022-03-31 10:23:38.550487+00
38	contact_us	0002_contactus_phone1	2022-03-31 10:28:24.109027+00
39	translations	0003_auto_20220331_1028	2022-03-31 10:28:24.119563+00
40	translations	0003_auto_20220331_1323	2022-03-31 13:23:20.224428+00
41	product	0004_auto_20220331_1337	2022-03-31 13:37:37.804697+00
42	translations	0003_auto_20220331_1337	2022-03-31 13:37:37.819607+00
43	translations	0003_auto_20220331_1344	2022-03-31 13:44:30.900785+00
44	translations	0003_auto_20220331_1554	2022-03-31 15:54:48.357931+00
45	translations	0003_auto_20220403_1150	2022-04-03 11:50:43.548548+00
46	courses	0001_initial	2022-04-04 07:59:25.545799+00
47	translations	0003_auto_20220404_0759	2022-04-04 07:59:25.569124+00
48	article	0001_initial	2022-04-04 08:00:46.712398+00
49	translations	0003_auto_20220404_0800	2022-04-04 08:00:46.722375+00
50	translations	0003_auto_20220404_0908	2022-04-04 09:08:50.895683+00
51	translations	0003_auto_20220407_0818	2022-04-07 08:18:04.220603+00
84	translations	0003_auto_20220407_0820	2022-04-07 08:20:56.428801+00
85	product	0005_branch_image	2022-04-07 09:48:33.85326+00
86	translations	0003_auto_20220407_0948	2022-04-07 09:48:33.866451+00
87	coupon	0001_initial	2022-04-07 13:05:31.331024+00
88	cart	0001_initial	2022-04-07 13:05:31.442941+00
89	general	0001_initial	2022-04-07 13:05:31.473418+00
90	order	0001_initial	2022-04-07 13:05:31.570944+00
91	points	0001_initial	2022-04-07 13:05:31.624172+00
92	translations	0003_auto_20220407_1305	2022-04-07 13:05:31.654661+00
93	translations	0003_auto_20220407_1315	2022-04-07 13:15:11.659271+00
94	translations	0003_auto_20220410_0810	2022-04-10 08:10:26.795842+00
95	translations	0003_auto_20220410_0848	2022-04-10 08:48:51.164843+00
96	translations	0003_auto_20220410_1052	2022-04-10 10:52:20.489524+00
97	translations	0003_auto_20220411_0820	2022-04-11 08:20:10.514407+00
98	translations	0003_auto_20220411_0824	2022-04-11 08:24:15.476517+00
99	order	0002_auto_20220411_0933	2022-04-11 09:33:55.722944+00
100	translations	0003_auto_20220411_0933	2022-04-11 09:33:55.737901+00
101	translations	0003_auto_20220411_0935	2022-04-11 09:35:26.159943+00
102	translations	0003_auto_20220411_0951	2022-04-11 09:51:24.768176+00
103	translations	0003_auto_20220411_1037	2022-04-11 10:37:03.418141+00
104	points	0002_points_used_points	2022-04-11 14:15:05.381558+00
105	translations	0003_auto_20220411_1415	2022-04-11 14:15:05.396304+00
106	translations	0003_auto_20220412_0823	2022-04-12 08:23:35.981907+00
107	product	0006_auto_20220412_0854	2022-04-12 08:54:24.21494+00
108	translations	0003_auto_20220412_0854	2022-04-12 08:54:24.228283+00
109	translations	0003_auto_20220412_1047	2022-04-12 10:47:04.96249+00
110	translations	0003_auto_20220413_0837	2022-04-13 08:37:53.273541+00
111	translations	0003_auto_20220413_1025	2022-04-13 10:25:40.185982+00
112	translations	0003_auto_20220413_1031	2022-04-13 10:31:08.082462+00
113	translations	0003_auto_20220413_1244	2022-04-13 12:44:14.675858+00
114	home	0001_initial	2022-04-13 13:05:22.816771+00
115	translations	0003_auto_20220413_1305	2022-04-13 13:05:22.845327+00
116	translations	0003_auto_20220413_1311	2022-04-13 13:11:02.674331+00
117	translations	0003_auto_20220414_0816	2022-04-14 08:16:48.967117+00
118	translations	0003_auto_20220414_0827	2022-04-14 08:27:21.350224+00
119	translations	0003_auto_20220414_0836	2022-04-14 08:36:35.768145+00
120	order	0003_auto_20220414_1007	2022-04-14 10:07:08.369042+00
121	translations	0003_auto_20220414_1007	2022-04-14 10:07:08.380717+00
122	translations	0003_auto_20220414_1017	2022-04-14 10:17:46.124548+00
123	translations	0003_auto_20220414_1025	2022-04-14 10:25:36.153013+00
124	translations	0003_auto_20220414_1035	2022-04-14 10:35:49.42612+00
125	translations	0003_auto_20220414_1040	2022-04-14 10:40:12.291591+00
126	translations	0003_auto_20220414_1047	2022-04-14 10:47:37.172421+00
127	translations	0003_auto_20220414_1200	2022-04-14 12:00:03.864521+00
128	translations	0003_auto_20220414_1224	2022-04-14 12:24:12.488893+00
129	order	0004_auto_20220414_1350	2022-04-14 13:50:48.458486+00
130	translations	0003_auto_20220414_1350	2022-04-14 13:50:48.472476+00
131	order	0005_auto_20220418_1142	2022-04-18 11:43:01.587852+00
132	translations	0003_auto_20220418_1142	2022-04-18 11:43:01.624197+00
133	translations	0003_auto_20220418_1143	2022-04-18 11:43:55.034374+00
134	translations	0003_auto_20220418_1206	2022-04-18 12:06:18.388045+00
135	translations	0003_auto_20220418_1211	2022-04-18 12:11:47.291477+00
136	translations	0003_auto_20220418_1220	2022-04-18 12:20:21.937205+00
137	translations	0003_auto_20220418_1258	2022-04-18 12:58:20.940759+00
138	translations	0003_auto_20220419_0732	2022-04-19 07:32:18.329407+00
139	translations	0003_auto_20220419_0739	2022-04-19 07:39:26.140049+00
140	translations	0003_auto_20220419_0830	2022-04-19 08:30:25.701117+00
173	translations	0003_auto_20220419_0912	2022-04-19 09:12:14.03298+00
174	translations	0003_auto_20220419_0934	2022-04-19 09:34:42.375947+00
175	translations	0003_auto_20220419_1114	2022-04-19 11:14:19.445741+00
176	translations	0003_auto_20220419_1135	2022-04-19 11:35:36.58834+00
177	translations	0003_auto_20220419_1151	2022-04-19 11:51:38.430321+00
178	translations	0003_auto_20220419_1304	2022-04-19 13:04:12.209887+00
179	translations	0003_auto_20220419_1334	2022-04-19 13:34:04.754518+00
180	translations	0003_auto_20220420_1054	2022-04-20 10:54:54.353209+00
181	translations	0003_auto_20220420_1058	2022-04-20 10:58:10.773466+00
182	translations	0003_auto_20220420_1242	2022-04-20 12:42:05.721009+00
183	translations	0003_auto_20220420_1319	2022-04-20 13:19:38.677077+00
184	translations	0003_auto_20220420_1347	2022-04-20 13:47:55.074901+00
185	translations	0003_auto_20220421_1032	2022-04-21 10:32:31.748695+00
186	translations	0003_auto_20220421_1036	2022-04-21 10:36:32.39239+00
187	translations	0003_auto_20220421_1223	2022-04-21 12:23:59.844084+00
188	translations	0003_auto_20220421_1243	2022-04-21 12:43:38.507085+00
189	translations	0003_auto_20220421_1259	2022-04-21 12:59:33.681434+00
190	translations	0003_auto_20220425_0814	2022-04-25 08:14:41.101196+00
191	translations	0003_auto_20220425_0838	2022-04-25 08:38:03.008926+00
192	translations	0003_auto_20220425_1053	2022-04-25 10:53:39.572706+00
193	translations	0003_auto_20220425_1148	2022-04-25 11:48:30.044288+00
194	translations	0003_auto_20220425_1204	2022-04-25 12:04:23.901877+00
195	translations	0003_auto_20220425_1318	2022-04-25 13:18:54.502029+00
196	translations	0003_auto_20220426_0753	2022-04-26 07:53:49.764002+00
197	translations	0003_auto_20220426_0810	2022-04-26 08:10:41.273506+00
198	translations	0003_auto_20220426_0903	2022-04-26 09:03:08.757119+00
199	translations	0003_auto_20220427_1203	2022-04-27 12:03:07.212346+00
200	translations	0003_auto_20220428_1253	2022-04-28 12:53:40.673655+00
201	translations	0003_auto_20220428_1301	2022-04-28 13:01:17.599671+00
202	translations	0003_auto_20220428_1312	2022-04-28 13:12:40.797973+00
203	translations	0003_auto_20220428_1324	2022-04-28 13:24:37.492587+00
204	translations	0003_auto_20220512_1330	2022-05-12 13:30:41.404323+00
205	translations	0003_auto_20220515_0856	2022-05-15 08:56:26.988991+00
206	translations	0003_auto_20220516_1110	2022-05-16 11:10:49.906768+00
207	coupon	0002_coupon_is_home	2022-05-16 14:32:34.389733+00
208	translations	0003_auto_20220516_1432	2022-05-16 14:32:34.473946+00
209	translations	0003_auto_20220517_0903	2022-05-17 09:03:29.592568+00
210	translations	0003_auto_20220517_1112	2022-05-17 11:12:37.267938+00
211	translations	0003_auto_20220517_1243	2022-05-17 12:43:57.810746+00
212	translations	0003_auto_20220517_1246	2022-05-17 12:46:50.793994+00
213	translations	0003_auto_20220517_1402	2022-05-17 14:02:46.1881+00
214	translations	0003_auto_20220518_1310	2022-05-18 13:10:45.93915+00
215	translations	0003_auto_20220518_1318	2022-05-18 13:18:57.321109+00
216	translations	0003_auto_20220518_1353	2022-05-18 13:53:36.395544+00
217	translations	0003_auto_20220518_1416	2022-05-18 14:16:43.78531+00
218	translations	0003_auto_20220518_1518	2022-05-18 15:18:40.601485+00
219	translations	0003_auto_20220518_1520	2022-05-18 15:20:34.129787+00
220	translations	0003_auto_20220518_1559	2022-05-18 15:59:01.959343+00
221	translations	0003_auto_20220518_1617	2022-05-18 16:17:08.005818+00
222	translations	0003_auto_20220518_1624	2022-05-18 16:24:22.665612+00
223	translations	0003_auto_20220518_1643	2022-05-18 16:43:11.281502+00
224	translations	0003_auto_20220518_1652	2022-05-18 16:53:00.859001+00
225	translations	0003_auto_20220518_1700	2022-05-18 17:00:59.010133+00
226	translations	0003_auto_20220518_1723	2022-05-18 17:23:54.461857+00
227	translations	0003_auto_20220518_1738	2022-05-18 17:38:13.882632+00
260	translations	0003_auto_20220518_1746	2022-05-18 17:46:41.535009+00
261	translations	0003_auto_20220519_0939	2022-05-19 09:39:47.355736+00
262	translations	0003_auto_20220519_1021	2022-05-19 10:21:14.29894+00
263	translations	0003_auto_20220519_1026	2022-05-19 10:26:14.467344+00
264	translations	0003_auto_20220519_1100	2022-05-19 11:00:18.191673+00
265	translations	0003_auto_20220519_1104	2022-05-19 11:04:56.550376+00
266	translations	0003_auto_20220519_1108	2022-05-19 11:08:59.438295+00
267	translations	0003_auto_20220519_1125	2022-05-19 11:25:13.629691+00
268	translations	0003_auto_20220519_1130	2022-05-19 11:30:18.803982+00
269	translations	0003_auto_20220522_0936	2022-05-22 09:36:47.416958+00
270	product	0007_auto_20220522_1118	2022-05-22 11:18:05.842863+00
271	translations	0003_auto_20220522_1118	2022-05-22 11:18:05.914055+00
272	about_us	0003_auto_20220522_1521	2022-05-22 15:21:15.599894+00
273	article	0002_auto_20220522_1521	2022-05-22 15:21:15.62666+00
274	contact_us	0003_auto_20220522_1521	2022-05-22 15:21:15.643956+00
275	courses	0002_auto_20220522_1521	2022-05-22 15:21:15.664615+00
276	order	0006_auto_20220522_1521	2022-05-22 15:21:15.695138+00
277	product	0008_auto_20220522_1521	2022-05-22 15:21:15.767311+00
278	translations	0003_auto_20220522_1521	2022-05-22 15:21:15.791024+00
279	about_us	0004_auto_20220523_0808	2022-05-23 08:08:12.940329+00
280	article	0003_auto_20220523_0808	2022-05-23 08:08:12.978039+00
281	contact_us	0004_auto_20220523_0808	2022-05-23 08:08:12.991068+00
282	courses	0003_auto_20220523_0808	2022-05-23 08:08:13.009561+00
283	order	0007_auto_20220523_0808	2022-05-23 08:08:13.035776+00
284	product	0009_auto_20220523_0808	2022-05-23 08:08:13.072388+00
285	translations	0003_auto_20220523_0808	2022-05-23 08:08:13.084494+00
286	translations	0003_auto_20220523_1439	2022-05-23 14:39:51.953325+00
287	order	0008_order_one_point_value	2022-05-26 11:40:01.554795+00
288	translations	0003_auto_20220526_1139	2022-05-26 11:40:01.632659+00
289	translations	0003_auto_20220526_1159	2022-05-26 11:59:16.809128+00
290	translations	0003_auto_20220526_1229	2022-05-26 12:29:07.450803+00
291	translations	0003_auto_20220606_1354	2022-06-06 13:54:24.985393+00
292	translations	0003_auto_20220606_1419	2022-06-06 14:19:36.118089+00
293	translations	0003_auto_20220606_1432	2022-06-06 14:32:49.706104+00
294	translations	0003_auto_20220606_1442	2022-06-06 14:42:54.645436+00
295	translations	0003_auto_20220606_1448	2022-06-06 14:48:04.991249+00
296	contact_us	0005_contactus_address_url	2022-06-06 16:04:41.889959+00
297	translations	0003_auto_20220606_1604	2022-06-06 16:04:41.908414+00
298	translations	0003_auto_20220606_1615	2022-06-06 16:15:18.399712+00
299	article	0004_remove_article_article_details_text	2022-06-07 08:43:34.859045+00
300	translations	0003_auto_20220607_0843	2022-06-07 08:43:34.889738+00
301	translations	0003_auto_20220607_1045	2022-06-07 10:45:53.842302+00
302	courses	0004_auto_20220607_1449	2022-06-07 14:49:21.939251+00
303	translations	0003_auto_20220607_1449	2022-06-07 14:49:21.964416+00
304	translations	0003_auto_20220607_1540	2022-06-07 15:40:29.730329+00
305	translations	0003_auto_20220608_0813	2022-06-08 08:13:06.32378+00
306	translations	0003_auto_20220609_0743	2022-06-09 07:43:20.268595+00
307	order	0009_orderaddress_phone_country_code	2022-06-09 11:29:51.083331+00
308	translations	0003_auto_20220609_1129	2022-06-09 11:29:51.188726+00
309	user	0003_useraddress_phone_country_code	2022-06-09 11:29:51.26274+00
310	translations	0003_auto_20220619_1254	2022-06-19 12:54:10.580161+00
311	translations	0003_auto_20220626_1053	2022-06-26 10:53:46.06763+00
312	translations	0003_auto_20220626_1513	2022-06-26 15:13:51.267838+00
313	product	0010_auto_20220627_0937	2022-06-27 09:37:43.144017+00
314	courses	0005_course_brand	2022-06-27 09:37:43.183404+00
315	home	0002_homedetails	2022-06-27 09:37:43.212151+00
316	translations	0003_auto_20220627_0937	2022-06-27 09:37:43.226867+00
317	product	0011_auto_20220627_1341	2022-06-27 13:41:58.291979+00
318	translations	0003_auto_20220627_1341	2022-06-27 13:41:58.302245+00
319	translations	0003_auto_20220628_0825	2022-06-28 08:25:45.216272+00
320	translations	0003_auto_20220628_1003	2022-06-28 10:03:25.965152+00
321	translations	0003_auto_20220629_1159	2022-06-29 11:59:19.539692+00
322	translations	0003_auto_20220629_1216	2022-06-29 12:16:29.830312+00
323	translations	0003_auto_20220629_1233	2022-06-29 12:33:29.669498+00
324	translations	0003_auto_20220703_1005	2022-07-03 10:05:51.978686+00
325	translations	0003_auto_20220804_0746	2022-08-04 07:46:11.183604+00
326	product	0012_auto_20220807_1344	2022-08-07 13:44:54.125221+00
327	cart	0002_auto_20220807_1344	2022-08-07 13:44:54.217476+00
328	order	0010_auto_20220807_1344	2022-08-07 13:44:54.249038+00
329	translations	0003_auto_20220807_1344	2022-08-07 13:44:54.255725+00
330	translations	0003_auto_20220807_1355	2022-08-07 13:55:20.524966+00
331	translations	0003_auto_20220807_1358	2022-08-07 13:58:27.689201+00
332	translations	0003_auto_20220807_1409	2022-08-07 14:09:03.061581+00
333	translations	0003_auto_20220808_0818	2022-08-08 08:18:05.093411+00
334	translations	0003_auto_20220808_0856	2022-08-08 08:56:14.534722+00
335	translations	0003_auto_20220808_1134	2022-08-08 11:34:06.931577+00
336	translations	0003_auto_20220808_1144	2022-08-08 11:44:51.433231+00
337	translations	0003_auto_20220808_1148	2022-08-08 11:48:28.710942+00
338	translations	0003_auto_20220808_1204	2022-08-08 12:04:57.411025+00
339	translations	0003_auto_20220808_1218	2022-08-08 12:18:30.870536+00
340	translations	0003_auto_20220808_1225	2022-08-08 12:25:16.125049+00
341	translations	0003_auto_20220808_1228	2022-08-08 12:28:14.724146+00
342	translations	0003_auto_20220808_1232	2022-08-08 12:32:07.084682+00
343	translations	0003_auto_20220808_1236	2022-08-08 12:37:00.469972+00
344	about_us	0005_auto_20220811_1438	2022-08-11 14:38:21.361689+00
345	cart	0003_auto_20220811_1438	2022-08-11 14:38:21.383727+00
346	translations	0003_auto_20220811_1438	2022-08-11 14:38:21.391076+00
347	translations	0003_auto_20220911_1530	2022-09-11 15:30:43.39607+00
348	translations	0003_auto_20220911_1610	2022-09-11 16:10:23.840454+00
349	about_us	0005_auto_20220811_1500	2022-09-25 15:25:14.996242+00
350	product	0012_auto_20220809_0841	2022-09-25 15:29:31.974342+00
351	cart	0002_auto_20220809_0841	2022-09-25 15:29:31.990694+00
352	cart	0003_auto_20220811_1500	2022-09-25 15:29:32.001025+00
353	order	0010_auto_20220809_0841	2022-09-25 15:29:32.012688+00
354	order	0011_remove_orderaddress_phone_country_code	2022-09-25 15:29:32.018226+00
355	order	0012_orderaddress_phone_country_code	2022-09-25 15:29:32.027063+00
356	translations	0003_auto_20220925_1529	2022-09-25 15:29:32.035585+00
357	user	0004_remove_useraddress_phone_country_code	2022-09-25 15:29:32.042809+00
358	user	0005_useraddress_phone_country_code	2022-09-25 15:29:32.049988+00
359	translations	0003_auto_20220925_1532	2022-09-25 15:32:10.383884+00
360	translations	0003_auto_20220925_1535	2022-09-25 15:35:04.683093+00
361	FAQ	0001_initial	2022-10-03 13:49:29.895978+00
362	footer	0001_initial	2022-10-03 13:49:29.923477+00
363	offers	0001_initial	2022-10-03 13:49:29.953642+00
364	product	0013_auto_20221003_1349	2022-10-03 13:49:30.050361+00
365	footer	0002_auto_20221003_1429	2022-10-03 14:29:24.364759+00
366	translations	0003_auto_20221003_1429	2022-10-03 14:29:24.39255+00
367	translations	0003_auto_20221005_1139	2022-10-05 11:40:00.183005+00
368	product	0014_type_display_ordering	2022-10-16 13:52:08.08011+00
369	translations	0003_auto_20221016_1352	2022-10-16 13:52:08.10177+00
370	translations	0003_auto_20221023_1038	2022-10-23 10:38:20.210993+00
371	translations	0003_auto_20221023_1046	2022-10-23 10:46:29.61575+00
372	translations	0003_auto_20221027_1017	2022-10-27 10:17:36.128189+00
373	order	0013_order_compelted_at	2022-11-02 18:27:03.567945+00
374	translations	0003_auto_20221102_1827	2022-11-02 18:27:03.589804+00
375	translations	0003_auto_20221103_0927	2022-11-03 09:27:39.944301+00
376	cart	0002_auto_20230517_0938	2023-05-17 11:37:35.583005+00
377	cart	0003_auto_20230517_0938	2023-05-17 11:37:35.586533+00
378	coupon	0002_coupon_users	2023-05-17 11:37:35.58913+00
379	courses	0002_auto_20230517_0938	2023-05-17 11:37:35.591665+00
380	order	0002_auto_20230517_0938	2023-05-17 11:37:35.593929+00
381	points	0002_points_user	2023-05-17 11:37:35.596958+00
382	product	0002_auto_20230517_0938	2023-05-17 11:37:35.598983+00
383	translations	0003_auto_20230517_0938	2023-05-17 11:37:35.601173+00
384	translations	0003_auto_20230517_1137	2023-05-17 11:37:58.644343+00
385	translations	0003_auto_20230605_1356	2023-06-05 13:56:01.224251+00
386	product	0003_delete_review	2023-06-12 06:57:08.564545+00
387	home	0002_auto_20230612_0657	2023-06-12 06:57:08.703111+00
388	translations	0003_auto_20230612_0657	2023-06-12 06:57:08.727778+00
389	translations	0003_auto_20230612_1050	2023-06-12 10:50:03.859559+00
390	translations	0003_auto_20230612_1612	2023-06-12 16:12:15.529038+00
391	home	0003_auto_20230713_0826	2023-07-13 08:26:36.05737+00
392	translations	0003_auto_20230713_0826	2023-07-13 08:26:36.067247+00
393	general	0002_auto_20230824_1306	2023-08-24 13:06:44.766799+00
394	order	0003_auto_20230824_1306	2023-08-24 13:06:44.877277+00
395	product	0004_remove_product_point_price	2023-08-24 13:06:44.90166+00
396	translations	0003_auto_20230824_1306	2023-08-24 13:06:44.911912+00
397	translations	0003_auto_20230824_1316	2023-08-24 13:16:31.480975+00
398	translations	0003_auto_20230824_1319	2023-08-24 13:19:56.309865+00
399	translations	0003_auto_20230910_0858	2023-09-10 08:58:56.882739+00
400	translations	0003_auto_20230914_1047	2023-09-14 10:47:30.233763+00
401	translations	0003_auto_20230914_1048	2023-09-14 10:48:26.658355+00
402	translations	0003_auto_20230914_1055	2023-09-14 10:55:25.142832+00
403	smsa	0001_initial	2023-10-17 09:45:44.971075+00
404	order	0004_auto_20231017_0948	2023-10-17 09:49:00.303619+00
405	product	0005_auto_20231017_0948	2023-10-17 09:49:00.412246+00
406	user	0002_remove_useraddress_city	2023-10-17 09:49:00.464205+00
407	user	0003_useraddress_city	2023-10-17 09:51:40.648882+00
408	translations	0003_auto_20231017_1015	2023-10-17 10:15:42.190978+00
409	about_us	0002_auto_20231030_1039	2023-10-30 10:39:52.854355+00
410	order	0005_orderitem_product_item_weight	2023-10-30 10:39:52.893801+00
411	translations	0003_auto_20231030_1039	2023-10-30 10:39:52.905114+00
412	translations	0003_auto_20231030_1041	2023-10-30 10:41:27.134898+00
413	translations	0003_auto_20240324_0859	2024-03-24 08:59:14.592685+00
414	user	0004_delete_otp	2024-03-24 08:59:14.639273+00
415	translations	0003_auto_20240326_1413	2024-03-26 14:13:42.114967+00
416	translations	0003_auto_20240326_1424	2024-03-26 14:24:57.668411+00
417	translations	0003_auto_20240326_1603	2024-03-26 16:03:28.731201+00
418	translations	0003_auto_20240331_1533	2024-03-31 15:33:59.378993+00
419	translations	0003_auto_20240331_1611	2024-03-31 16:11:55.731932+00
420	translations	0003_auto_20240331_1735	2024-03-31 17:35:01.652894+00
421	translations	0003_auto_20240331_1743	2024-03-31 17:43:50.211897+00
422	translations	0003_auto_20240331_1751	2024-03-31 17:51:25.486181+00
423	translations	0003_auto_20240405_0001	2024-04-05 00:01:23.380827+00
424	translations	0003_auto_20240408_0111	2024-04-08 01:11:49.703028+00
425	translations	0003_auto_20240408_0205	2024-04-08 02:05:23.153924+00
426	translations	0003_auto_20240408_0210	2024-04-08 02:10:17.933619+00
427	translations	0003_auto_20240408_0211	2024-04-08 02:11:42.502182+00
428	translations	0003_auto_20240408_0252	2024-04-08 02:52:44.227981+00
429	translations	0003_auto_20240408_1200	2024-04-08 12:00:04.300874+00
430	translations	0003_auto_20240408_1204	2024-04-08 12:04:22.316535+00
431	translations	0003_auto_20240501_0856	2024-05-01 08:56:54.80219+00
432	translations	0003_auto_20240507_1223	2024-05-07 12:23:18.039104+00
433	translations	0003_auto_20240507_1225	2024-05-07 12:25:09.666229+00
434	translations	0003_auto_20240507_1230	2024-05-07 12:30:37.795942+00
435	translations	0003_auto_20240507_1232	2024-05-07 12:32:08.308596+00
436	translations	0003_auto_20240507_1256	2024-05-07 12:56:09.395882+00
437	translations	0003_auto_20240507_1307	2024-05-07 13:07:57.783783+00
438	translations	0003_auto_20240508_0650	2024-05-08 06:50:57.367522+00
439	translations	0003_auto_20240508_0652	2024-05-08 06:52:38.101412+00
440	product	0006_auto_20240514_1155	2024-05-14 11:55:29.436573+00
441	translations	0003_auto_20240515_0919	2024-05-15 09:19:30.945333+00
442	translations	0003_auto_20240515_0934	2024-05-15 09:34:42.845728+00
443	translations	0003_auto_20240515_0945	2024-05-15 09:45:27.886358+00
444	points	0003_delete_points	2024-05-15 10:00:32.419359+00
445	translations	0003_auto_20240515_1000	2024-05-15 10:00:32.433705+00
446	translations	0003_auto_20240515_1001	2024-05-15 10:01:11.835898+00
447	translations	0003_auto_20240516_1038	2024-05-16 10:38:24.998389+00
448	translations	0003_auto_20240530_0812	2024-05-30 08:12:20.637831+00
449	order	0006_auto_20240530_1549	2024-05-30 12:49:42.228003+00
450	translations	0003_auto_20240530_1549	2024-05-30 12:49:42.242954+00
451	translations	0003_auto_20240602_1943	2024-06-02 16:43:47.199444+00
452	translations	0003_auto_20240603_1039	2024-06-03 07:39:56.557512+00
453	translations	0003_auto_20240603_1211	2024-06-03 09:11:22.901559+00
454	translations	0003_auto_20240603_1606	2024-06-03 13:06:30.01543+00
455	product	0007_auto_20240604_1507	2024-06-04 12:07:28.840685+00
456	translations	0003_auto_20240604_1507	2024-06-04 12:07:28.852084+00
457	translations	0003_auto_20240604_1533	2024-06-04 12:33:01.603989+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
7cxsk2ffysyk9hdhwuxj061g7ehr80hx	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nZamB:Qwxqb1q1HxyGWv0swzPteAMJL9fFZdNiqBxiz_S3nu4	2022-04-13 16:02:27.547924+00
2822v7ffz05ii942revn7gydngltlp4r	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nZq2h:X9zHa0yzNuHLxKu9GtR_KhZL0ZyTQVUc5pJstSbTpYo	2022-04-14 08:20:31.990338+00
ei75b0xu7ql234onp9qdee2bq5m1lcen	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nZqZh:4G7J-y-bfsrUcuwv0p4Y94E2fyf8CrBd371zWwyvzF0	2022-04-14 08:54:37.432275+00
lv7rvu3jz1kjxnk2hfiim5uv0omn944g	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nZrl2:rv8UW2gGnMwmFkAdNVgbmDr0Gt55q_L-f680LYt1wYE	2022-04-14 10:10:24.821904+00
qjot9sfi1xnnpnubqfu1qdaoxs1di0oo	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nZrzQ:xtQ9wmXYh7nOO-Uj8UED8qgjH-Ri7tkGkgpdNHDPlqA	2022-04-14 10:25:16.873613+00
61szg9lruyv9qmwiweln88t9c9gwkpto	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nZtzc:k4UWTZmuiWtQBht8rU2CS0HDrU_oN5ckjcDhYlWl9jU	2022-04-14 12:33:36.18953+00
t7f4otpxiibciuez1rfmuqftvtznsw09	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nZuQ4:ODEwfnR_gPBu-_Ekq1EybkhFKegzlk3_cNYjriq5rvs	2022-04-14 13:00:56.855538+00
rig9vb6mcrvpmjnp2vgwanbokftpe5p1	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1naxqU:Dn6NzoEJ_20AcZ0x5RmCSiSBTTR59ncQxqqoGD97Els	2022-04-17 10:52:34.935212+00
ltynonuuajh3rg5yoihvm99x987ftqzu	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nbj4i:IjUWXWXgABa3yWQ0YgJlO1rXG8J0O15YYjux7VTUKCw	2022-04-19 13:18:24.779958+00
6lhnr5k8xcrscfmq5nf1691r2j6vbe5e	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nc0vz:Cn-sXjU7GKg85j_K5ZqoXNy-EJXeQXdJqt1GsAxj7O0	2022-04-20 08:22:35.017785+00
rt81rtsbwtohezqcs3a94zg4nipo1t3d	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nc0wG:_7n63sP0MtTYiTkp86l4_-4f0uLWrR7EVRQE31mDMes	2022-04-20 08:22:52.398331+00
vpp7lim59olyl9znimscvgoce6vagnwf	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1ncDSG:1lIAQ3keSObRtVow1bxS90o42GM-6oDfHd9jWTDfZEU	2022-04-20 21:44:44.799658+00
1c6vsfmp2c914ssnl1p49j40cltdjk3l	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1ncOQt:-iPEDMi28Eso-Sf2heJOvpJ96kAunZfB-wK2RDJS1y0	2022-04-21 09:28:03.534092+00
mn1k9o5ujo992qxep2eqmke265p3tuv3	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1ncPL5:uZg2QBGPmY6aSSrhs5MCPmdD0O57Qnc_2yGniK4Ookg	2022-04-21 10:26:07.465095+00
re4f1okhgeet1yr4b1s9n07vui8dbhxo	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1ncRqY:4o1mXDhcYc5vv3-FdMgY3t57Ps3vjo-qo__ATHBbv1w	2022-04-21 13:06:46.667566+00
eenaoxjyvavsscrgln17uogc450y0rhn	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1ncRt9:wM5X7YMhOnxgFPgJeYAaFZMM0U9oj94ySpvyK35pdWA	2022-04-21 13:09:27.369074+00
1zrayoafbdt7nsvim1ycl4b0l1j0tm22	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nctFi:GTW2pi4-8GTgoVbH10AFrc1JIkmCSuCiok5v2tKgkic	2022-04-22 18:22:34.054352+00
flht5y6eyz3s7fd0f4ihf15fb4q7fk3v	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1ndE0Q:s0VyW-5f_lHxAHVe5y6LrKsgvVaRIt94me7beHnR-VA	2022-04-23 16:32:10.01194+00
ha410v2idrbpfev08cinfu5acytyvpvs	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1neFfj:IZ9s55B-ycYBmWnz_JjYtDd92Ah1mY66_eHSNOpRXl0	2022-04-26 12:31:03.530802+00
sfomek6vnix0iwnpl3rfud6i3pnz9c7n	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1neFfj:IZ9s55B-ycYBmWnz_JjYtDd92Ah1mY66_eHSNOpRXl0	2022-04-26 12:31:03.689831+00
8k1utb0kqbu4ir7hoebrlfhgba959mue	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1neFfj:IZ9s55B-ycYBmWnz_JjYtDd92Ah1mY66_eHSNOpRXl0	2022-04-26 12:31:03.811789+00
a1626uid3kir5yljlbtsqh006x3gxkny	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1new5C:xAoEu4fvAiIfEuW13bn-95CQyNyoqSCMQJTjvIlDeKk	2022-04-28 09:48:10.341192+00
1dvjjj2co256c40m6z57cunvxct9m1r1	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nfWSa:CPdiM_2owdKu4wEXSfAAfUPBqk3I2i6Ba9nNm39KHLM	2022-04-30 00:38:44.062095+00
7wo44o8gqsc4ksjw5i69nptjbkwjlsbg	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1ngMWX:BnOo2exRRuh5Ryb6c12BrFMNy4MoxoYGdXWsbJ-G3Wg	2022-05-02 08:14:17.395022+00
1381pjx0sqde21w2gkdmvkftbj3p8jec	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nghvQ:E2vCUxlQ3begB77rRjuY9Nzvv52KhkxC5GIdcp0YmYs	2022-05-03 07:05:24.925169+00
pokog6njhhfux9gb6kqdregs6lehk2zw	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1ngiQU:zczot6-fMHDCyhVdTrT1cbwFFjZR5KmMO7KoTOp9M_Q	2022-05-03 07:37:30.819802+00
1cv0peyyb91hxdcns7hk5qv15g86d9ua	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1o5TWc:ak6nJdP6L_Y1CcYbKxfbr9p4yT0FlpleibfoGIasVp4	2022-07-10 14:46:10.807948+00
zkg5copht2wphbun7bzcryegogodcbnc	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nh7hG:DE6BoV0y_XzwjM_cTBELQqoUgR9vML5NHLIuXBG9VTM	2022-05-04 10:36:30.764932+00
bffekjybws0qb1tav41r2i8fc9uuaslt	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nh9qx:Qai8qouKKlZeiXUWf0oBNRO8eRAkFdtGKud4rdtFB-c	2022-05-04 12:54:39.044705+00
99jt56wogemd58hd6m0uxaxkrvvl72t6	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nhRpV:EVUYlywIQjnrxzthD2jnvYP0PRQ3oGFbWP17eI1VKPg	2022-05-05 08:06:21.277453+00
1otcya1nj1ev79e8qzndv2ddnynp5cv4	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nhVSb:b5WIkf2aDdAGlluIEcOLbgjQf95SspP3jBXT5HD5_g0	2022-05-05 11:58:57.297659+00
pniqs7a39ojox3wq4s1acmtjgnxep2yg	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nixAl:mdHXNRipkk3Bi4-j5dFxTSRX99FkXx6SxixFuyQuLw8	2022-05-09 11:46:31.090457+00
6x9p0p3dtxf389e2o5z5lhvfm2v68zl6	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1njFkO:fGxVIyAw407T413vr68KELqYzdw8HgUH8X-48Grdhh8	2022-05-10 07:36:32.550108+00
a4b9drsxa3krb36uz00h58hrqomxszeu	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1njM9e:XSAytEuMSWlcUHze6J4ZZ3J0Ca6Va1yIOWGwV4fyng4	2022-05-10 14:27:02.951645+00
bdvs6tvz2xfwz4gx4jhrdd7oc5nejr0c	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nk2BU:Y3hnpR3gF4mkoptc_edpNPtaUD5Jvbk4co5QLns_xzc	2022-05-12 11:19:44.496246+00
eqx7hv6wmm8wydnesz1llvhg0lm1e8sh	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nnclF:ZRz6BGUXFmL_iT_etl17co4_Q6TGxbTUS3_5wEUivAo	2022-05-22 08:59:29.58921+00
eo3jqotqzzisb3uqxaa7b56rceh2mhbp	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1np41i:H1rcB5UZ7UCLUe-GlzaoPV63CG16mxlJkfyyiY-s348	2022-05-26 08:18:26.932351+00
63bxl1nmvavbzeec67r1x2hll0knx0cj	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1np5Lz:Es8P9G-zFyDl9rmh6kMVd1KicPP6q5gKtQY_colCywk	2022-05-26 09:43:27.716153+00
zreres0dtilogihbl9pluuhezqghwlrr	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nqbnK:W56r-y3efFx7kGZ2Ghey4c6etPdrJIxRop134hC1RmM	2022-05-30 14:33:58.343636+00
8ovlajlhdk30h5jbp1k1f26hkzlhjcm8	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nqsrl:_ePy6F7sJtattcZ-0EHkx5N1tpn8KH3qxEf-sGuTuec	2022-05-31 08:47:41.705289+00
hvkj4b5dgnjpyxjyuulvt5tb2n8czw2p	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nquo2:jC9LPv8FiQYbmNJEl7tDlEjNIaBidGdIaDqHMZE6xHk	2022-05-31 10:51:58.92175+00
2yot0m3vdlcltyk86rg3pszivzz7tdit	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nqwBq:HnducS5SinQ482LH_JJhGCdg87uZkyctWguoC-yjlr4	2022-05-31 12:20:38.14247+00
jzzkgn1g4b6lh5dbnrzxd7vgo2e2jvcz	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nrFCI:XZccM09F3yrlkgjTesTAEpYRZg7_gzp2BI6qwnF8LYM	2022-06-01 08:38:22.485123+00
445jipwlr9yi68ighoh69al4pjql8ogu	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nrFis:7RuOm0gFBdG_uAKJuaQ7ym15opquY0eYa0yZydRJFxY	2022-06-01 09:12:02.799905+00
9bx45x5zkiqqmqsnobdyz852h9588h2j	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nrG01:6OT-7uwYPaZIpXVswZneMd-8GCxbcOj8ahS1NvKIbUA	2022-06-01 09:29:45.258176+00
tb6tvfznms7kup6cq4679u115r6oabn0	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nrGiX:xzhJNbR4-2yHOQhf43PFHgbLgbAPPKoj4Yy9iS196fA	2022-06-01 10:15:45.685867+00
e9ld2xbzl1nlte0taszxe3ulun0g0l66	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nrIHj:bfOgaVxw5jxchFtviXhrjRD-GUshpZE5y4EqVJYDxkc	2022-06-01 11:56:11.094162+00
rbkz58girs2x3dia57k6bnxy6wghh135	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nrIIB:PI9TsIjBzBJwN934Rh3pVyHPVpEpYsEiIA67K9SCEZ8	2022-06-01 11:56:39.910979+00
u254cad33fl2p1125q32tn0cxmf3zzbj	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nrM34:_xwiV5CUy2gwQTTAF28tc72weCG2ZR11oSZglU6lzqw	2022-06-01 15:57:18.603353+00
arvkzmda7t4ldoz198dmpssu8qd5h78z	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nrc4X:uUbGgdy_aivDZR77H0iETMl4NXQ1hVnHXlbbJeTT1IE	2022-06-02 09:03:53.043869+00
t4vgwvbnkbtrclalvfypurvdqcoqzy5e	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nrctv:Evwn0JCWC4V_T-WxZ5qrLkeSznnO1RGh6WfkWqUstuI	2022-06-02 09:56:59.989199+00
z8y7i1izht56hmskacndn6a3wchebe90	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nsk06:lskqR9sghi71u8G4H7KhE3AnUkqXeb050ffZ-V9JPCo	2022-06-05 11:43:58.640988+00
oyy70tmenqpmmmam7jh0xer8d6vfp718	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nsmfb:OyZl0f59hbWj9l-OVcrUd_1CtHt4iR1SopgtQ7DnMv8	2022-06-05 14:34:59.898026+00
q6xslydfclro8rjbvj4r6t01dv19oj96	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1o5UNq:8KDucmTFdjPUwOcusmRI6euqMHUzh1k6Ogp1mPKdHBg	2022-07-10 15:41:10.90232+00
5ykdovy22q6gxz52jfwr7jtv510z9oyd	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nt3yD:_oTl0e4cp1Wj4-Y7a1FoJrhtjIQi6SxJ7B7Oux-d46k	2022-06-06 09:03:21.929677+00
3vf9mx8vbmx2ic3odfo1ikeop6kcnylk	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1o5lyY:jeEC2I4RA9BgEOY7glWLIsp0yJPwqUCHmINlr_wnkFE	2022-07-11 10:28:14.748987+00
ust0w7q1pldmpew0za4xbfft37zao36u	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nt4NK:b_cyrOgaO7c61PQEASpX7HOb8Ldkuj50ptj1GtfV-Co	2022-06-06 09:29:18.708338+00
ju9g17xk52gzfabodj3byr7p6p6zeksj	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1ntAUy:LY2rel-zwq5SrnSfgghY10KqSyKANnozfJlRp1vfdj4	2022-06-06 16:01:36.113362+00
g4i0lof8wc8pkr3rj4i8hxjbkel8qcbj	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1ntR1u:XSVqkoF3KAEye6kjxLD_x-qZNKmErsdibVJWk2JdoYU	2022-06-07 09:40:42.478399+00
k0qd3kkuutiuhqxh8l0dvoi8tz3ld2tr	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1ntRim:h8avaq4pnC8pBthjPLcE5hktfNbhg6uiHEzo_UbheWM	2022-06-07 10:25:00.821176+00
i7xd5aryk9abfwesnz24vt7wk7w43tkj	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1ntrxl:tBWHfVRNNOcz-hhzA6t3argfsjE82eF0KTqrtLSlDMA	2022-06-08 14:26:13.5543+00
lahzb7tz74i2k4t1g6rsopcb22qup7hu	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nuBsZ:5TiQwPZ59-ako5S3nXvdxPug7gule81C5ODq4PHVybw	2022-06-09 11:42:11.84874+00
5dm6wtepsn1ih7tnetq25n9pm6reo5nn	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nvEvp:qvOGJ2PWxVoXTS0JuQ6o_GvQEkxLenna5g2gmhMb-04	2022-06-12 09:09:53.078379+00
1s85oe4v8xw54bobg5c881flg7l9ydxs	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nx3rK:uL53Dc9ZYwE7__iREs_ZmcKtVbGw1rpgIaW1bd9AZtw	2022-06-17 09:44:46.130505+00
v0vqra925lj216b6fcljx38vo084ocgt	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nxVD5:AEyDxSaDZW42zMy7mCe73qpCE7tDSIK5J3Y0OGQ3s2k	2022-06-18 14:57:03.654697+00
u4ballapqqyoadie4zmmvaw023yflkiy	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1ny9XV:7Bjf-RC_qarhPS9MB6dy55Nmq_OGRvACd37rrgvuKuE	2022-06-20 10:00:49.44833+00
rmtry4x0x2rhrrfjy35leyfm29t9fyt3	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nyCoY:fYTJStLE3EhrpJrY6A4dSZB2UXS4_tdY5QO8tSoJzJA	2022-06-20 13:30:38.333364+00
cax8c9x6gg46me8iyip3cj7823cpi6st	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1nyWYt:gAxRhUufbRZPM0oJVTB6xRBNjm7-eEW5aoV_SBMoWQU	2022-06-21 10:35:47.150077+00
0h4sf15kx31jcm8hnsz05k0ebvepb2gv	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1o2qkz:ZrttDT5lXx9aEfdNBE5zdSYIXHI_MUgTiVX8sOl3Wwo	2022-07-03 08:58:09.883633+00
hxa7ap80wrcjbryqekx5kvhoiicnd5dx	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1o2rHd:rHMsrjPJYbLkomVRjqtFLEApF81UOwUjFKl5TVstM54	2022-07-03 09:31:53.040015+00
z7m9zetb7ep70nnrb80jr8yjbx4hjt06	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1o2rKM:9MiK8fewkjXMgU6BV5kfoiTakRlQGRDqmo3Zf8urCKw	2022-07-03 09:34:42.387993+00
m7teucqa6o949g3l9r8odixrhxna4r44	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1o53sc:h_LgKQYPKYo2UbSsEUOdQxIYY8Rat_SKhKAKWarwPPs	2022-07-09 11:23:10.560384+00
fyfxp0s5cjek848aogg7fjyvilxbkfys	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1o54Zp:FMINBwB31GK00oc46OYPPQfvj46hEAPXmLJX13SFtoU	2022-07-09 12:07:49.045759+00
b83htqu9473bao1bazf2krln67ef6zyz	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1o5NAu:UMZ7jg9gsUMzvXQOiRNKsN0AA-JkcFSASu4aEGWBTr4	2022-07-10 07:59:20.137968+00
73vm4crxa0a6w8igkrdue1cjv6uh1hjm	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1o5QZZ:TJnEJODZHtvd-b8ohotWc5SqE4ixiacvJ6HCLrrynJw	2022-07-10 11:37:01.272959+00
d50nm8akzc663pd36urmkhpf8ef5ts6h	.eJxVzM0OwiAQBOB34WwIPwtYj959BrIsW6kampT2ZHx3S9KDXme-mbeIuK0lbo2XOGVxEUaJ02-YkJ5ce5MfWO-zpLmuy5RkJ_Jom7zNmV_Xw_4dFGylr9GMiYP3ijh5UDRoyqD1AAm8VZbOnAOCA9ylyc6h202w1o6M3qH4fAEW9jhN:1o5RRw:QXItX8bWFZFlU4qIToFjJnntnci1r1hQCbbNFU83W5M	2022-07-10 12:33:12.233438+00
irri7q89m7imv00yylkc6ykitp39a4j8	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1o5TDy:-cdBc7gl-PkXvK7VAOeD-i417toMOApSB7TsYJn8zFA	2022-07-10 14:26:54.241509+00
pw74nnauply0m29wyizasglxl0fcst7d	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1o5qLM:3ZQzLwPE1_kyAoL59hQv4VyD-IwRUjOghhiQ38ZRCBc	2022-07-11 15:08:04.711008+00
1jzsouwf2y92k67xji4zpvnqh9eh2am8	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1o6WdU:QYrSQR2HdTzjwwwS_DTgAxw_UJ9DmJuSgpJYYz7LBSI	2022-07-13 12:17:36.756502+00
pptsk342xxyz36zlf0plpy1ynbf2qwux	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1o6X8F:NadS4oG-WLhYGMZYX0fLTd3crnJ2qC3gkde8ySF-1NY	2022-07-13 12:49:23.293863+00
746aic9f2qg4xw49xslz1icqx1fu3tk5	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1o6XoX:OMUBXBGs7ypKQ_QKZDEHq6KHB4nU7mbQKcY3JnxqS90	2022-07-13 13:33:05.74244+00
4evc2qglb2om0up74sllnibrur86u40b	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1o7vgx:2g8LaOr9HByl9pTuSoh-Jz3y4vH1xVGwURQZLIEcP8k	2022-07-17 09:14:59.970836+00
2s3q4p2bitlwvqyqib5nnbgo6y83gfwh	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1o7yUU:cNaf_7euEsIK_bUMOHRbIuRErhp8YiUHjuj_4ZEheXc	2022-07-17 12:14:18.059612+00
i2hllmzch4cfaocb19tnukq8usubgsc4	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1o7zIW:LSAvnQYKlgn44nfDjeID9BP4kxNCJmpvUwlATTguoy4	2022-07-17 13:06:00.169994+00
oco9f7j4nfxi2630yl78vdaqhhwifxmw	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1o8KnB:LvQ_OF2o0CX7rAel6dixH6VvxAgXgv3L1jzR4r9Kaos	2022-07-18 12:03:05.358309+00
eh9f0oqgfy22afhhzcruuivpcm1g0l36	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1o8iVc:vC2itI5enHgfol304Z6ikwi9rpR1tUXMKN93FasbkPs	2022-07-19 13:22:32.89567+00
rjgftl79czsxtcvmc0jempro4qhucxx8	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1o9xQv:Ug6wsfaFe-q0mjZzyiqn2_84bM9rPOsMrC0fix2AU7U	2022-07-22 23:30:49.463907+00
ixpd3v94uz4z1u999suppe0vvdkhrsa7	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oDiTF:72dBk1X-x_iaLTd9TVzyRXn29-49P7ZYHyCDZMJFy-o	2022-08-02 08:20:45.783329+00
alg7llrqkhfva0lo8mog08gvx2mxj9ew	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oEAze:hrbgxIkwaWVmiDI7yeRcmojyMc3aFz17sxigKu_4Kbw	2022-08-03 14:48:06.34623+00
5etg2oxkk5zmlos8u5gut8c859bg9n51	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oFV4c:spAqau_NrEhLo2UVggbh2nxXVETpmQF17m-9ORWvCeQ	2022-08-07 06:26:42.270972+00
74x2o4eugeokoknixuh57zse9ynuzasv	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oFrYx:Xie2dsrQrCIbHM_rLlQlANbwMuJ0rZLM6Fdr84mzT9U	2022-08-08 06:27:31.507069+00
mywt6f0h0dnl7kcpysswvgoojat267dq	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oFz8Y:APn7XMJ2tgghSXuX2pgDZ86_5GcAnlMjCoAqu0okpmw	2022-08-08 14:32:46.595988+00
zos74dsldcu3bczah6adt9muf5my5l98	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oGEQi:HtkBBcQ7_Wq8T1ytvKskYMxllZnxmUMz9wsBwVSZ_Pg	2022-08-09 06:52:32.62649+00
xpa7b601i7artnuh36eg98kgd9c3qzpj	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oGFRw:O9G3qXmLAxUF6NShm9VBOVZNoCAB2q90ooZKG0WBar4	2022-08-09 07:57:52.145607+00
6rkk0mtg0bdu8k3o5rirzxf34398xylx	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oGafW:-5qfoTZJA0c7bYTPdA8VEC5ocD8A6AOXastV6dSaieU	2022-08-10 06:37:18.052893+00
0d29h2bn5nt521wucyv9gaargzm5ln0t	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oI2Uj:uybKWpUH0z5fVMdWFpnnPGjfJGQ_EVARqt_iiGNcq_U	2022-08-14 06:32:09.389135+00
ls7qrzf4af7pyaqacsmaw686s41o7kwk	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oIBAZ:DwjcY-iE2kdX02Z93QT6qm5eb9Et421YojqaV0_Exhg	2022-08-14 15:47:55.980812+00
9rp9f3qbtyc023fd2fs620r3nx6og4nd	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oIW25:Cr4Roq3hIpeeAaS1CIC9xoAijnwfefZ_JKgJkIj0iyY	2022-08-15 14:04:33.279389+00
z0aago9sabel8pdz0h14l65msll5gdaa	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oIll6:J7CzpLFJBlb-XC2DRYIsYIpXZIDo0lcHVIm5Xb8NE-g	2022-08-16 06:52:04.876261+00
lrj2zlx0r43xvyj54s4k9u6hzhardpwl	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oJBB3:62Cfz4ftuuFOAmnclmILWlBtru6X1BSufbYWy9mRapg	2022-08-17 10:00:33.918468+00
haq88bi56w6q2f8m8i80jthpljhlpo46	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oJBPW:tkNH1BIher89Lz0LJhSfjOI7RkHRqIt14jIHr-i0Jvg	2022-08-17 10:15:30.273828+00
xi1biq6l5ff866jt4jzqfhncslzp6vow	.eJxVzM0OwiAQBOB34WwIPwtYj959BrIsW6kampT2ZHx3S9KDXme-mbeIuK0lbo2XOGVxEUaJ02-YkJ5ce5MfWO-zpLmuy5RkJ_Jom7zNmV_Xw_4dFGylr9GMiYP3ijh5UDRoyqD1AAm8VZbOnAOCA9ylyc6h202w1o6M3qH4fAEW9jhN:1oJBZk:dZZK-QxeygixKfKmVy_SSQ3mKLNyvj3TQHRzGBwAM5Q	2022-08-17 10:26:04.538503+00
wuiddpbee0q2koy4znnxulhafu7erw2n	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oJEGW:A_DvGMDOZXBeLcknRbt-v_ZMyA_bFzLAtXNsOEngF9Q	2022-08-17 13:18:24.461301+00
4c5mgms153qdicb63y5k79hsznnnri1v	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oJGEl:xYnnPnZx2gsfBRIn_ZSb9idlKq2Sxcb0tzaLauHgyHk	2022-08-17 15:24:43.97718+00
t0mt3q9dnmh9krcycao4b0jf3wraq3zw	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oJUW4:c5TBlpnECArWYpVmfpxAcxbpYJCa_FP2-TISt1BAjt0	2022-08-18 06:39:32.076745+00
z9qw8owxhauf3db3503n7wnrn1dgidmv	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oKDPr:7SJjN57fMA_utQGdb3wdIrE436k7a_p3ghsHW_1r3oM	2022-08-20 06:36:07.144188+00
k2bl92i2awpqvz1faovo5e6up6hhxecr	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oKZyp:mZXXC7uWSCCo9cl52g68mqxw3cMmf1yT3ONz5j_3mh8	2022-08-21 06:41:43.071624+00
qjoaa7zm3lk3o9sg59tgml3o323wk1jf	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oLKuX:_sQ8hwFmXYtHEdWuUUJaFz0cat34l-Yr5Bx1gwl_pvQ	2022-08-23 08:48:25.38409+00
ku3ijmii4t2nmgxfre7k2bpcghw2nykn	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oM9QW:BU2U0CCJmFK6kQGcJ5xaPULOIG861q2opeTlkgwd7u4	2022-08-25 14:44:48.342148+00
l3yij14g3uahxl5eaxfnfo7zfmy5lo1y	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oNB9g:hX2rMHjNr3TwOMoTBMUuyqviuVW9NPItn2CYHjPDRq0	2022-08-28 10:47:40.608551+00
udxa9dfxv4f9vzca0nlrrwvudkn6f7ls	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oTNx1:gDmAh7y67UlLKtfzFbOPNQ8_IfhdCnvqOB0LY8sZxu8	2022-09-14 13:40:15.563737+00
rlu2fpunbskdns86ugbc3gm8ym8ed6mk	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oYSC9:nVS1S4-VszoxbOw3VQWgPa_ZZ_ROwqWPWh74RFdccPk	2022-09-28 13:12:49.424572+00
h6hlt1pndqw6t6ou8zs7v83k1ku8r3uo	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oYThB:f2Z1H7nlZ4aG753qhj-uDcwOBp95RpVzKhnQmS1YoBs	2022-09-28 14:48:57.150581+00
devaztfa7hxqz3c1m64wfm429014ww00	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oZptW:e-I9m92MyPJHXlSnfVuhoFSvsSYffWDUAF7M4JfkzDI	2022-10-02 08:43:18.124769+00
q8gg682eoci2xutxnjlgrhbcjd2xoyex	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oZt2i:IdUDN5_fF3fzTZUOhf-f3PEjkYEhioRKfKuLnKt9Upk	2022-10-02 12:05:00.774867+00
pgkwafrgsr2r4g9zp1m1won6xjgzx1wr	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oZt3J:8zDAza-7m3bkVfHanZPLB-mpY5ghQfloCw2owoADq8M	2022-10-02 12:05:37.552312+00
jp9bb8ey6mr5x3o7o3pnzglrlb8x7oq4	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oazBz:6qGyxImi9QB7dTyhZdlnwgTywHTfj0JHT-PA2IRWBKY	2022-10-05 12:51:07.244043+00
e6m77l715rgaaimtmbibztwhf2dqvj82	.eJxVjEsOAiEQBe_C2hB-2uDSvWcgTdPIqIFkmFkZ766TzEK3r6reS0RclxrXwXOcsjgLq8Xhd0xID24byXdsty6pt2WektwUudMhrz3z87K7fwcVR_3WqExwKpjiHZHlRNYQkD8l0AqLD6jSMTkdTAYKyME79BlBGy4FFFjx_gAJITg4:1obOFU:q6rJ4L0_2qsPLPerdNWtNrhxfcNsdpxqwAS_vKchRek	2022-10-06 15:36:24.300324+00
mwj55ehojfjvyzgdcixpbvrv6kimnmvj	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1ocjQH:Buzq6HPwzvXZI2A1gb8yDie617rt-srTwSaCJMPjh0Q	2022-10-10 08:25:05.574479+00
2vwxsyyntv7pkreman4adnb6xu6e4ckg	.eJxVjEsOAiEQBe_C2hB-2uDSvWcgTdPIqIFkmFkZ766TzEK3r6reS0RclxrXwXOcsjgLq8Xhd0xID24byXdsty6pt2WektwUudMhrz3z87K7fwcVR_3WqExwKpjiHZHlRNYQkD8l0AqLD6jSMTkdTAYKyME79BlBGy4FFFjx_gAJITg4:1odpKd:SjhH5STcaxmuyBoM9tCcc3yp2MRcDVXYwbyZitIxu1g	2022-10-13 08:55:47.138839+00
nrh64awog7gdizyvt43e170qzufdg4qe	.eJxVjEsOAiEQBe_C2hB-2uDSvWcgTdPIqIFkmFkZ766TzEK3r6reS0RclxrXwXOcsjgLq8Xhd0xID24byXdsty6pt2WektwUudMhrz3z87K7fwcVR_3WqExwKpjiHZHlRNYQkD8l0AqLD6jSMTkdTAYKyME79BlBGy4FFFjx_gAJITg4:1odqxW:IYa2XtZuKs7aUGFf6b2T2JsoKiFgLZW44ZOP9T28sZY	2022-10-13 10:40:02.760809+00
0xlbrtwwc101z8ocf8ztpf7sxqhg0f72	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1ohS9G:t-c-41EJ9A4citam9xzyU6FQWriQbNDRonv2AmlOXg8	2022-10-23 08:59:02.035195+00
yppjo83ab0vm6wo57dc8xxxtipg6yt3d	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1ohS9G:t-c-41EJ9A4citam9xzyU6FQWriQbNDRonv2AmlOXg8	2022-10-23 08:59:02.548697+00
d7hkbntjpp9phvs1q9n8kfhxszmd2wwc	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1ohVP1:JKbzuEufdaOOb7Y3z0MUmZLfxV86Bjq0YY64Y3uGafs	2022-10-23 12:27:31.809676+00
hai0782tken39y529923yokqgpi25syj	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1ohVyT:JGZFF0czTKP8Sn3LU7g39U6KtE3Akq7R5n7ETzFdtd8	2022-10-23 13:04:09.19451+00
1khnpzghtovh1juz5vua43yutv3n552g	.eJxVjEsOAiEQBe_C2hB-2uDSvWcgTdPIqIFkmFkZ766TzEK3r6reS0RclxrXwXOcsjgLq8Xhd0xID24byXdsty6pt2WektwUudMhrz3z87K7fwcVR_3WqExwKpjiHZHlRNYQkD8l0AqLD6jSMTkdTAYKyME79BlBGy4FFFjx_gAJITg4:1oitay:5Y1B6DqkJReyx_Pxu_J6f1Jv3yDV7evTpt3R6XLc8QU	2022-10-27 08:29:36.111326+00
n7a5ks52b1qsbzi6tuarlo6jb1vom7mc	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1oiu8o:vnShV58p424jykp7rRTlYNPQEHYgnBwRXjYiBeZH5Wg	2022-10-27 09:04:34.936643+00
17xibo7s5y9jmeyzanrk4487j65ogq49	.eJxVjEsOAiEQBe_C2hB-2uDSvWcgTdPIqIFkmFkZ766TzEK3r6reS0RclxrXwXOcsjgLq8Xhd0xID24byXdsty6pt2WektwUudMhrz3z87K7fwcVR_3WqExwKpjiHZHlRNYQkD8l0AqLD6jSMTkdTAYKyME79BlBGy4FFFjx_gAJITg4:1oiuJY:PlRLgfgbNR8bu9YPbr-ZjWzM6zhYAKg2AomZ5_SQhnE	2022-10-27 09:15:40.334718+00
1mc3a6jbmggmvqu5j0h08aukfp78u9uj	.eJxVjEsOAiEQBe_C2hB-2uDSvWcgTdPIqIFkmFkZ766TzEK3r6reS0RclxrXwXOcsjgLq8Xhd0xID24byXdsty6pt2WektwUudMhrz3z87K7fwcVR_3WqExwKpjiHZHlRNYQkD8l0AqLD6jSMTkdTAYKyME79BlBGy4FFFjx_gAJITg4:1ojxZP:WeBYOODjb2wQ-Dg_4h-FvQ2gN_hY9Rw68bvBFWZGqGM	2022-10-30 06:56:23.998865+00
coqshpiro9g0rhwahhr7gaf55i7juigt	.eJxVjEsOAiEQBe_C2hB-2uDSvWcgTdPIqIFkmFkZ766TzEK3r6reS0RclxrXwXOcsjgLq8Xhd0xID24byXdsty6pt2WektwUudMhrz3z87K7fwcVR_3WqExwKpjiHZHlRNYQkD8l0AqLD6jSMTkdTAYKyME79BlBGy4FFFjx_gAJITg4:1olRNt:sIveoHmho4vOj0LIDAZkVp4QxqzvT7RUIzO3xtQUy1s	2022-11-03 08:58:37.985027+00
dru78stt046ugtq4wqu3ca8xp61m8jia	.eJxVjEsOAiEQBe_C2hB-2uDSvWcgTdPIqIFkmFkZ766TzEK3r6reS0RclxrXwXOcsjgLq8Xhd0xID24byXdsty6pt2WektwUudMhrz3z87K7fwcVR_3WqExwKpjiHZHlRNYQkD8l0AqLD6jSMTkdTAYKyME79BlBGy4FFFjx_gAJITg4:1olSgO:ipOprZ4cagKOTR4JP1EHChVOxQvqA5VmkXzutjScVl0	2022-11-03 10:21:48.053332+00
26zjcqv5ok11bvpnw9pvglqi4e2tf9qg	.eJxVjEsOAiEQBe_C2hB-2uDSvWcgTdPIqIFkmFkZ766TzEK3r6reS0RclxrXwXOcsjgLq8Xhd0xID24byXdsty6pt2WektwUudMhrz3z87K7fwcVR_3WqExwKpjiHZHlRNYQkD8l0AqLD6jSMTkdTAYKyME79BlBGy4FFFjx_gAJITg4:1omX48:_jZkLVqFOOUyfgAGhXGzkjzwSXxlo32gbavD_ZQnp48	2022-11-06 09:14:44.207897+00
88li6wzcsy7a8hr73u99a623177q064z	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1omXZL:IbfmzfJ0mafhXddX5Ag8i3eSc5l5jv43ly4MViis0M4	2022-11-06 09:46:59.483517+00
gm794advl5adxxq209h7g5p31dyqyn71	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1omXZL:IbfmzfJ0mafhXddX5Ag8i3eSc5l5jv43ly4MViis0M4	2022-11-06 09:46:59.871443+00
hpjithjpvs9eb42iw6y100mit7fxf64o	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1omXdR:JDPHNmKnzKICDQrMsJYyuqewfLZvM3l9Q2BlxiptIic	2022-11-06 09:51:13.271659+00
s8p3mo9afyurhw05nhcsfvf0i37zw1kx	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1onyYp:gn8NSpSTpcv59cglGF5PUbLDfMoIlEzDrscgn5YHoyk	2022-11-10 08:48:23.264917+00
8n1o9x9kaz4yex87jadbqwq7m2k2fuky	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1onypM:oTnYjOuvVjdvDi6G5hBeRzvQmKVO9PLZtOdl_3JUPKg	2022-11-10 09:05:28.775642+00
4w9h7l90cu19ammsbuz1la35yf8us876	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1onywo:Ax9MEltn1LjCqey1nSSQFTKd-802IysgN-GD9UnRoeo	2022-11-10 09:13:10.55427+00
xcdfgtdnrxmk0tt0kuot5h01vk67h7wu	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1onzQi:1FfVJQ8_djpxRvRrmgDaP-qCl32S_9GUFOcSdjS3qUI	2022-11-10 09:44:04.745323+00
sxagv5p5oualzx9alrkxv6a9w6hmxlv1	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1op2z6:9KgGV5Xjnxj04U2DtOLw7focyNyR_8pN-eYwIjPe6R8	2022-11-13 07:43:56.026423+00
7obhkxpf62ysc2du2tm0ag7tm1ayu5oz	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1op40q:oT_99WNB8T1zcg2ruNslomsXqafRhXAb0qsVCkJwY4Q	2022-11-13 08:49:48.447956+00
lhx3buurts0tn34mhly5csxlapfo27td	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1pYqKA:VDnS5d4JdxA773yrqmRldKka4vuHS-tbutKdlDm5MAY	2023-03-19 15:30:58.83519+00
ideyiwilj2xqaj0lc4yprgvbw3j8cqwf	.eJxVjEsOAiEQBe_C2hB-2uDSvWcgTdPIqIFkmFkZ766TzEK3r6reS0RclxrXwXOcsjgLq8Xhd0xID24byXdsty6pt2WektwUudMhrz3z87K7fwcVR_3WqExwKpjiHZHlRNYQkD8l0AqLD6jSMTkdTAYKyME79BlBGy4FFFjx_gAJITg4:1pt1SM:rbwKDdnSIrIbZwzKwBGugWXWEC6U4sBdOihOBLy_ZMo	2023-05-14 07:26:50.956961+00
2lb4375eb2duuvfiyd4f7kn67hpgdptk	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1pt63U:LrAUGy5Ah0HJ_MHpY_Zq1L6vUSKm98hyrSEflcLGPbg	2023-05-14 12:21:28.771984+00
6hq4zr5isn1jcyk4y5n5vbgpccuh6ud1	.eJxVjEsOAiEQBe_C2hB-2uDSvWcgTdPIqIFkmFkZ766TzEK3r6reS0RclxrXwXOcsjgLq8Xhd0xID24byXdsty6pt2WektwUudMhrz3z87K7fwcVR_3WqExwKpjiHZHlRNYQkD8l0AqLD6jSMTkdTAYKyME79BlBGy4FFFjx_gAJITg4:1pxk7g:nJjQCBXduKcesZ3DsqTB0vK1rsT7IarcY4a7A8V66K0	2023-05-27 07:57:00.678814+00
16me92loynft5087cgomfp7j7fp05urz	.eJxVjEsOAiEQBe_C2hB-2uDSvWcgTdPIqIFkmFkZ766TzEK3r6reS0RclxrXwXOcsjgLq8Xhd0xID24byXdsty6pt2WektwUudMhrz3z87K7fwcVR_3WqExwKpjiHZHlRNYQkD8l0AqLD6jSMTkdTAYKyME79BlBGy4FFFjx_gAJITg4:1py8tw:ksFaeBOfMD8jMrw0zukp67GyDawyq5AH4AjvGjZPbmo	2023-05-28 10:24:28.068113+00
fy48j6aqn3oys72b81xxk6y1ah8jhc4c	.eJxVjDsOwjAQBe_iGlm217-lpOcMln-LA8iR4qRC3B0ipYD2zcx7sRC3tYVt1CVMhZ2ZZKffLcX8qH0H5R77beZ57usyJb4r_KCDX-dSn5fD_TtocbRvDTJFj0jOUVWeBGhNiAl9NiKTsQWcUlZ6lZ0w4LVBW0kjmJxQgXPs_QHJADa1:1sE1ni:11v_Gbnt1aeiwtbPgXpAO0YREWX4VRcO813MBtf798E	2024-06-17 07:08:14.668138+00
l5a8mx1onuqvgaerx6i0hxde0ekjnnlg	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1pzFUN:79ZAls3MgLDHlpo9JeMP91AjIy8KqpqY-mIouJjQfxc	2023-05-31 11:38:39.901757+00
xu6g92f4raqsg9we9a4dwvxgxw12s2g4	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1pzaLK:t_vFoYCYmD9v7wKvDeW8h-xaMjt7L2qh20pt3WH2gHc	2023-06-01 09:54:42.141828+00
aj1kx56gjrcmu2o4l6lankme2l1d3mw4	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1pzaeo:Btzx-Baf9Dbm1MgDZIFRGbsj7KVNeMyn-cmvtV7du14	2023-06-01 10:14:50.174109+00
d74trq7qm5dx6ae22y5mh2i14vvsj76d	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1q5jLS:7DyGdPnUrm62VLWSo2j-LKN3K6Xw3Xp8PM4v_szcj2o	2023-06-18 08:44:14.213546+00
avht7vq2s1n0m8qv5y54pwzihh1t91cr	.eJxVjEsOAiEQBe_C2hB-2uDSvWcgTdPIqIFkmFkZ766TzEK3r6reS0RclxrXwXOcsjgLq8Xhd0xID24byXdsty6pt2WektwUudMhrz3z87K7fwcVR_3WqExwKpjiHZHlRNYQkD8l0AqLD6jSMTkdTAYKyME79BlBGy4FFFjx_gAJITg4:1q6VNf:MNvWKBMMRVB0iULTL3yB9enJEUb0T5gk7jsVcTdc8dE	2023-06-20 12:01:43.876345+00
cmxk9ebmxmnk49gm2xrxeloti6gmdesa	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1q6pxY:iRg_gElS_CSiZsGh-EGWebF9lAq83VSVjl7Ni0BYvyw	2023-06-21 10:00:08.935036+00
074102d4mz1px5o4gkhon90lx7y3vav5	.eJxVjEsOAiEQBe_C2hB-2uDSvWcgTdPIqIFkmFkZ766TzEK3r6reS0RclxrXwXOcsjgLq8Xhd0xID24byXdsty6pt2WektwUudMhrz3z87K7fwcVR_3WqExwKpjiHZHlRNYQkD8l0AqLD6jSMTkdTAYKyME79BlBGy4FFFjx_gAJITg4:1q8eKQ:tM51PIapGrvyt31CHAry1rXzCiGWEFwd1PX6bbkM50A	2023-06-26 09:59:14.547457+00
knofo19j6c08pnd6q5pgzijk8fxztr8u	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1q8eXy:HfEcu1ItNdsJVfWEs8ITPkusguo1CSNmQbgHuHB8uFA	2023-06-26 10:13:14.496896+00
do4ak7bbcedv5m2kxq969490erdi6gg1	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1qAqHJ:Kn0U_mT2kXSQLGdgFRsB4z2p48Qjz8E6gEvSe4xOpMY	2023-07-02 11:09:05.28037+00
mb1fauxloegb2j05oa6xihcjva9urnf0	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1qDLDJ:-XaC9C0a3aMJYoa2PNaoZl_F72hsddyu-6-JjGSrFE8	2023-07-09 08:35:17.869382+00
qgei1oedte8zuuahe0n11z596knessoi	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1qDf4n:ka8wArvVS19LqGNlvrLUYMw3ugu3hUjioEAkd3YMRJ8	2023-07-10 05:47:49.426014+00
6xtntyu2rm6dgwjkepgi03aixo1ljsmy	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1qJ8WD:BiE4FIGxm5ch_r1a8AhDI_KfBeM3UmeoTjltq9KXpKo	2023-07-25 08:14:45.286082+00
zx95wb2teimkwbt2c5s4n4sxwim843i2	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1qJrKw:nCrTbFNIu7tNTD6mCngcZ1QqcSSczunU7Lj18jA46CQ	2023-07-27 08:06:06.548442+00
shel5bbjlrukawd3yguqfe1rks1xf953	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1qJrTn:-ZlC7yzDr6HZF7wTLdVZKzBv2zrrPCTYaZULuiTiJCQ	2023-07-27 08:15:15.455558+00
nqm327njev0uevw60opjfsp27c7urm6r	.eJxVjEsOAiEQBe_C2hB-2uDSvWcgTdPIqIFkmFkZ766TzEK3r6reS0RclxrXwXOcsjgLq8Xhd0xID24byXdsty6pt2WektwUudMhrz3z87K7fwcVR_3WqExwKpjiHZHlRNYQkD8l0AqLD6jSMTkdTAYKyME79BlBGy4FFFjx_gAJITg4:1qOYgN:rWIBmKY6mI2IgYiWUy83Fk23WjhLGgQ-8EXRLnMskUM	2023-08-09 07:11:39.587039+00
k5uc2csr6e4fmjnlnmo50tljuus480k2	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1qSCbW:zujpI-XfMWevfieE7sORV5O-E6zUR0w5t1HokxnAdug	2023-08-19 08:25:42.185122+00
r97gnnf2n3faaytcn7w3r1wyhwqew1vy	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1qY086:Et1KRLJwpn7bAYbc8BnvlGxtrth0nGc3oTMuyDKwMJc	2023-09-04 08:19:18.765879+00
onfggv4mi772nm7f9x6hczk8b42ywkx2	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1qY1ev:z9mLKKQjgjVnqpmSO4Oj76zOMWkQBo3kKSGcNiEd7Qs	2023-09-04 09:57:17.511403+00
f2ck5g350l0brldc320mi2hrizpgxb0f	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1qY2Uz:KTVayUdLvP5z4Nd34l1pRGoUu3MhQS-5dXobSXW1jFQ	2023-09-04 10:51:05.27783+00
6hm34es94zrdhylnor5h85fnrfst8dwm	.eJxVjEsOAiEQBe_C2hB-2uDSvWcgTdPIqIFkmFkZ766TzEK3r6reS0RclxrXwXOcsjgLq8Xhd0xID24byXdsty6pt2WektwUudMhrz3z87K7fwcVR_3WqExwKpjiHZHlRNYQkD8l0AqLD6jSMTkdTAYKyME79BlBGy4FFFjx_gAJITg4:1qYNEt:VFmg9i0hdkcQj7sV5bMB01mMfHXVxC83lxLtEUHLBAk	2023-09-05 08:59:51.043704+00
qwj95f84cwyfeed0gq5lquzavorarpk5	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1qZ7PA:75etqyiol_CVcxpvWVjnchxVA3bM5j5g1vS5TNH40TU	2023-09-07 10:17:32.856204+00
48qxznpmx0urfie26woh2a0qm6fkvw9z	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1qcjDe:pDnxHs9od8zBoaNRpyiYpkn4zcElIVg6Xtw3wsxLKDw	2023-09-17 09:16:34.062311+00
zf0tgxjnykvd6ewvfy57lg1epf6r7p1a	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1qff9C:yPhBfh-wkiUE5XORLIuVoiVdhALPwputoKZ5M7_t4Pk	2023-09-25 11:32:06.703656+00
u4lt0gggjh0gk0o06n3278ab10eb5ibj	.eJxVjEsOAiEQBe_C2hB-2uDSvWcgTdPIqIFkmFkZ766TzEK3r6reS0RclxrXwXOcsjgLq8Xhd0xID24byXdsty6pt2WektwUudMhrz3z87K7fwcVR_3WqExwKpjiHZHlRNYQkD8l0AqLD6jSMTkdTAYKyME79BlBGy4FFFjx_gAJITg4:1qhUJn:uoAoTZRhwxhBRrSV6v7cLN15xI50sTU3NVPbIPhevHs	2023-09-30 12:22:35.186103+00
llswt3ovkit8dw9ebzq97wltuwgdc9c1	.eJxVjEsOAiEQBe_C2hB-2uDSvWcgTdPIqIFkmFkZ766TzEK3r6reS0RclxrXwXOcsjgLq8Xhd0xID24byXdsty6pt2WektwUudMhrz3z87K7fwcVR_3WqExwKpjiHZHlRNYQkD8l0AqLD6jSMTkdTAYKyME79BlBGy4FFFjx_gAJITg4:1qhqW2:-Rf1HorL5vmmmbvgvlu0E4qnuqp4R1CJQojAy_zK5LY	2023-10-01 12:04:42.07293+00
r21smyjul75od5rnu8iryr0mvcvansfm	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1qiXHz:Sa_7bUoeICLibld4ZezjvwqnaFHEifcwJeAPWwvBTZY	2023-10-03 09:45:03.452188+00
rputw5kzghkj75k4vtpmajxtnedrg3uh	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1qjyNa:QpPcWxBcXtvMIMMr3Ffom0Jv-MuB_ZOSwwCgVpucips	2023-10-07 08:52:46.498629+00
9xbymsshi9xkon5ysnbqget7astd76gh	.eJxVjEsOAiEQBe_C2hB-2uDSvWcgTdPIqIFkmFkZ766TzEK3r6reS0RclxrXwXOcsjgLq8Xhd0xID24byXdsty6pt2WektwUudMhrz3z87K7fwcVR_3WqExwKpjiHZHlRNYQkD8l0AqLD6jSMTkdTAYKyME79BlBGy4FFFjx_gAJITg4:1qnZVP:Hb5AzL64mZpQ2Lso3k9LfHJgRFWuz2I7dvHVRIVSBKk	2023-10-17 07:07:43.937564+00
u4s4zrt3h8sq7mvqgwfxpecytijv4ex4	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1qnafU:zyNFqYXwWOlE_uh93ojOrHMniVSfmHK2FmuZR_GO0nY	2023-10-17 08:22:12.46096+00
i31pxi46hlsohkxh5q9cb5csiy552yzq	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1qnahK:C4x9kKVsm5lg4TdfQB2R5lAl99dllRUIpfxjoRT5lig	2023-10-17 08:24:06.214761+00
yploirh2bqdv6zd0dp5o8axjt5u721xv	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1qrakx:c_X57TBj-hJ8TDDUin0L8TkMpsvPQciVecXSSzQQOqA	2023-10-28 09:16:23.747198+00
3gs1n8k88x5egzx6qeqxg8b2kgu00842	.eJxVjEsOAiEQBe_C2hB-2uDSvWcgTdPIqIFkmFkZ766TzEK3r6reS0RclxrXwXOcsjgLq8Xhd0xID24byXdsty6pt2WektwUudMhrz3z87K7fwcVR_3WqExwKpjiHZHlRNYQkD8l0AqLD6jSMTkdTAYKyME79BlBGy4FFFjx_gAJITg4:1qrbLk:vaG8TRdZnHxZOjBx2M3SuAPvoZNXcyj27Rc5I-8eRyU	2023-10-28 09:54:24.80102+00
nukqxmmad1f9xdfzrb3632xszyj8ay2b	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1qsgiq:WD0uofjz0A5JNa4oRv7B_hw6mivEahPMBW1BbGtxnCo	2023-10-31 09:50:44.557635+00
8mkd8nlxa5vujd9csmtal2l9fk4q74w7	.eJxVjEsOAiEQBe_C2hB-2uDSvWcgTdPIqIFkmFkZ766TzEK3r6reS0RclxrXwXOcsjgLq8Xhd0xID24byXdsty6pt2WektwUudMhrz3z87K7fwcVR_3WqExwKpjiHZHlRNYQkD8l0AqLD6jSMTkdTAYKyME79BlBGy4FFFjx_gAJITg4:1qwgS9:EjpWGp5_xGJjetWKxMASaes1MavelnW5mEmTnMorr0c	2023-11-11 10:22:01.295109+00
oolkgi0e2ipxdcbj3hmzsmj9lrxbxzwq	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1qx3Bm:PBfCjSvwBq-RBD-iADxzZpTYzX8x8q3had55oEB_-0A	2023-11-12 10:38:38.461874+00
bf1fcxkt0poddcgddvb4xrvredghq2vb	.eJxVjMsOgjAQRf-la9OUOgytS_d8A5lHK6gpCYWV8d-VhIVu7znnvsxA2zoOW03LMKm5GPTm9DsyySOVneidym22Mpd1mdjuij1otf2s6Xk93L-Dker4rQNThIAImNQ1XUalnERAO-VzYIganAo0SIixUWmBvc-txEDZtQ7M-wMhAjh2:1sEQvS:6d45SeEDTPxARO1kH3-wBK-IgnQC02l9T994xhWSPrg	2024-06-18 09:57:54.603024+00
7ylwz20ctowqlk8wjmewgs1oo5aqwao5	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1qx49Z:9D4skY7j-Xsj8HfljnpLpWF3uqGUXLUW_OAEMxlWAkE	2023-11-12 11:40:25.349952+00
6kql34lls3va9vl0ahos17dmmz85k1ip	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1qxPXu:PZPV4DsDrkLS8lISfQQ3DdyC0_KJ1teAMHrdmGUc-SA	2023-11-13 10:30:58.500507+00
nm9mwwy9sf6anl9d72c6ox4ibgm3z996	.eJxVjEsOAiEQBe_C2hB-2uDSvWcgTdPIqIFkmFkZ766TzEK3r6reS0RclxrXwXOcsjgLq8Xhd0xID24byXdsty6pt2WektwUudMhrz3z87K7fwcVR_3WqExwKpjiHZHlRNYQkD8l0AqLD6jSMTkdTAYKyME79BlBGy4FFFjx_gAJITg4:1qxk0U:tWTA6AtFYb5dwvh71VDaLdwZYN-CTPonJRsvHz-sTiU	2023-11-14 08:21:50.874861+00
tfxifjk8gp9o00qh2p2mngebujt6dse3	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1qxlI4:KYbjIYRD3oMwScrl4AcU71AUH6uhN0PbkAUfycBlqlw	2023-11-14 09:44:04.806897+00
8vv62rcxpg5qvgq46mgzmvbkp7gs721j	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1qy8IE:72FIzXOmMfz0XVWs-nMTGUaReKtK1H1K2IisdeBQqNg	2023-11-15 10:17:46.219811+00
coc2azrtmtwbe0l48p647y0a739hhadr	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1r4goE:OBromzHyKwRF045hrEjV9TziaGuq8-_PVa6EcRcVSi8	2023-12-03 12:21:54.619804+00
0j19kyx89h27y6gbqhxb5sisa2ouofzz	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1rEp9T:I_OVB3C5R7jUfbxlBUElRYkkt7hYf25qgf2Yi1OKTYA	2023-12-31 11:17:43.68102+00
s1xio6lfxic12336opih5b2ccyftitso	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1rFAm5:UzOyGVpNRDGTnH5vyu7V-jAR5TOlWFMtz3fXaufIyp4	2024-01-01 10:23:01.512283+00
mj0bm31a3s2387pniqwkjdq64e4wmi5d	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1rFXg1:HZfRmkUSiLdyLYAqJDVCY28CFZAtiQB3I-qACAw9VLk	2024-01-02 10:50:17.751941+00
iehip8ik3b9ztakobcvnwcs44ehlmpdo	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1rITp0:U9Il44Fw2KvgT0UG6Fp3P5zeV4Cu0dkXlKHVlhiN_bw	2024-01-10 13:19:42.247607+00
xfncbqlmnkjf54qmykbrcqjhj4zyiuvg	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1rIoFk:sx6XilNrpLdRn7VJB0ytx5vQVT-sGCsTAz8w3xPGOJM	2024-01-11 11:08:40.432047+00
bnzdybir7tf90di9dx0wg1ra3dr2cuok	.eJxVjEsOAiEQBe_C2hB-2uDSvWcgTdPIqIFkmFkZ766TzEK3r6reS0RclxrXwXOcsjgLq8Xhd0xID24byXdsty6pt2WektwUudMhrz3z87K7fwcVR_3WqExwKpjiHZHlRNYQkD8l0AqLD6jSMTkdTAYKyME79BlBGy4FFFjx_gAJITg4:1rJJ18:2fdA0z5z-cG93lXMyKKLTJrpf5-KWkVQkL1gt7jh_go	2024-01-12 19:59:38.307753+00
6zcn8g2rvljsb3r11rfatrco8gz0fdqu	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1rJJce:7ulOhIzNmlNWvs3N-8prUG6UD1NJz2_t7NEvqxr7Gmw	2024-01-12 20:38:24.061118+00
dcsekr0rh12ow8ffd24063jz7p1fgnvq	.eJxVjEEOwiAQRe_C2hCmTBFcuu8ZyAxMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56wuCq06_Y5M6SFlJ_lO5VZ1qmVdZta7og_a9FCzPK-H-3cwUZu-tdBoiWHssxELHXqyZjyj4ywozoRgHPedoAXfe0aT2DsBhyF0EgKAen8AD-o3eg:1rKIbg:v4hRYquILT85Elsi57t01V-nHcbNiTlyy3cf-KB7C0o	2024-01-15 13:45:28.109971+00
p18z5tktqkyygmjfikyq0agoyy9hy996	.eJxVjEsOAiEQBe_C2hB-2uDSvWcgTdPIqIFkmFkZ766TzEK3r6reS0RclxrXwXOcsjgLq8Xhd0xID24byXdsty6pt2WektwUudMhrz3z87K7fwcVR_3WqExwKpjiHZHlRNYQkD8l0AqLD6jSMTkdTAYKyME79BlBGy4FFFjx_gAJITg4:1rbxsl:D3mG4ivKAooOl65vLxw60FkOh-9dhhPfCMOlVKYLHzE	2024-03-04 07:16:07.487508+00
yl9znf7g5u74nekkbvh2ulnpl07z9ldq	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1rbxsl:1oaeAFLiA_MzCUVl2uhHWRhHHdMCqf05HAd_HfXgtbQ	2024-03-04 07:16:07.572643+00
5vm7whmks0o30s6i7t4wtb5ionr4flno	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1rf3ur:Y38S5ExfrR_QTBoswtV0Lz1ZwDrzr-ICvaSRWgq9aOA	2024-03-12 20:19:05.864363+00
2cmohs7vdbf15m2df9sx0m2ylqsp0liv	.eJxVjDEOwjAMRe-SGUWxGqcOIztniOzEpQXUSk07VdwdReoA63_v_cMk3rcx7VXXNBVzNWAuv5twfuncQHny_FhsXuZtncQ2xZ602vtS9H073b-DkevY6mEg1JjBYSD2HTqgjJmBpAf0UZTEUwQuoXfYgXInSBI0ZPFRyXy-2og3sg:1rp65w:_X8klfftIAzGO-9s40HAOj8q3dicq_23HoOEYlFkm9s	2024-04-09 12:40:00.825316+00
3qhn5d20vbrjtvnkz7bboob2gg8tklrb	.eJxVjEEOwiAQRe_C2hAcQMCl-56BDAwjVUOT0q6MdzckXej2v_f-W0Tctxr3XtY4k7gKo8Xpd0yYn6UNQg9s90XmpW3rnORQ5EG7nBYqr9vh_h1U7HXUShEoHS6OnWJgBT4RMGQCpzU4DNobj9YGOhN6QGeAtQpswbALXny-7EM3Ig:1rtG3y:VJaDHyg0OFD-NVxDx8CeAImrEJSjMNly42RaL2nRavc	2024-04-21 00:07:10.831329+00
hrs5b61segbuf4yo8dltwrnibcn0g6iu	.eJxVjEEOwiAQRe_C2hAcQMCl-56BDAwjVUOT0q6MdzckXej2v_f-W0Tctxr3XtY4k7gKo8Xpd0yYn6UNQg9s90XmpW3rnORQ5EG7nBYqr9vh_h1U7HXUShEoHS6OnWJgBT4RMGQCpzU4DNobj9YGOhN6QGeAtQpswbALXny-7EM3Ig:1rtG75:W8PBMhvNXj8iqm5s3UkBFV8uxU1F57hK6IilY8ndsL0	2024-04-21 00:10:23.750701+00
seeczpsw0anw7ixobxkypv9oiqfdh29y	.eJxVjEEOwiAQRe_C2hAcQMCl-56BDAwjVUOT0q6MdzckXej2v_f-W0Tctxr3XtY4k7gKo8Xpd0yYn6UNQg9s90XmpW3rnORQ5EG7nBYqr9vh_h1U7HXUShEoHS6OnWJgBT4RMGQCpzU4DNobj9YGOhN6QGeAtQpswbALXny-7EM3Ig:1rtO3Y:t6C-t22LeO8LgFF_6AkZU1lg8Ve0fKdyQOSkDnrhxz4	2024-04-21 08:39:16.184106+00
zaowtx6n1pb1v5v2ug3vqjeijezyl9nt	.eJxVjEEOwiAQRe_C2hAcQMCl-56BDAwjVUOT0q6MdzckXej2v_f-W0Tctxr3XtY4k7gKo8Xpd0yYn6UNQg9s90XmpW3rnORQ5EG7nBYqr9vh_h1U7HXUShEoHS6OnWJgBT4RMGQCpzU4DNobj9YGOhN6QGeAtQpswbALXny-7EM3Ig:1rtdOr:zLDRMAy5MEdvCzxCOaCfM81v4lPywj41QooqlyxdJkQ	2024-04-22 01:02:17.558771+00
c52l88wi8wqa2aisxox46a3cpqqnzund	.eJxVjMsOwiAQRf-FtSG8mbp07zeQgQGpGkhKuzL-uzbpQrf3nHNfLOC21rCNvISZ2JlJdvrdIqZHbjugO7Zb56m3dZkj3xV-0MGvnfLzcrh_BxVH_da52KLzJEEXIZSMNnoPyjlBzipCiFi0BSrgFRhvDGllvVcoIJmJErL3B9DoN1I:1rtlXp:sv344Zu5Vlkx4HWt0wpLJmZNogARGNTdiQlrtJS2P0U	2024-04-22 09:44:05.726635+00
laegq9ex0lsoy15tfp57gcfygfxgy4sq	.eJxVjEEOwiAQRe_C2hAcQMCl-56BDAwjVUOT0q6MdzckXej2v_f-W0Tctxr3XtY4k7gKo8Xpd0yYn6UNQg9s90XmpW3rnORQ5EG7nBYqr9vh_h1U7HXUShEoHS6OnWJgBT4RMGQCpzU4DNobj9YGOhN6QGeAtQpswbALXny-7EM3Ig:1ryXG2:qUGRaE25wLoLP-pM5Yenq9jyYViXtGmn-NTvAXEfVCM	2024-05-05 13:29:26.949579+00
j9ef4nenpyqtegk3jnezucysxbjn8bca	.eJxVjMsOwiAQRf-FtSG8mbp07zeQgQGpGkhKuzL-uzbpQrf3nHNfLOC21rCNvISZ2JlJdvrdIqZHbjugO7Zb56m3dZkj3xV-0MGvnfLzcrh_BxVH_da52KLzJEEXIZSMNnoPyjlBzipCiFi0BSrgFRhvDGllvVcoIJmJErL3B9DoN1I:1rzEeu:9AIHi8KoE_05xEqpX81zVleyg_HUmi6jB8f9QmLYhhw	2024-05-07 11:50:00.183527+00
5eljb6k4s59c7fmr14knsdfv3bal0ys1	.eJxVjMsOwiAQRf-FtSG8mbp07zeQgQGpGkhKuzL-uzbpQrf3nHNfLOC21rCNvISZ2JlJdvrdIqZHbjugO7Zb56m3dZkj3xV-0MGvnfLzcrh_BxVH_da52KLzJEEXIZSMNnoPyjlBzipCiFi0BSrgFRhvDGllvVcoIJmJErL3B9DoN1I:1rzGjk:K7ow4Ka7n1kbDb-iRSicuyAk7xpJeu2GJMYuMBraTpI	2024-05-07 14:03:08.671927+00
oimr6o621e03iubjoiplkux6gjgy7map	.eJxVjEEOwiAQRe_C2hAcQMCl-56BDAwjVUOT0q6MdzckXej2v_f-W0Tctxr3XtY4k7gKo8Xpd0yYn6UNQg9s90XmpW3rnORQ5EG7nBYqr9vh_h1U7HXUShEoHS6OnWJgBT4RMGQCpzU4DNobj9YGOhN6QGeAtQpswbALXny-7EM3Ig:1s0ylb:0DgvHDf5qnAeVhos3b17Lit6WCtA4ADCAcFoZ9cDVb4	2024-05-12 07:16:07.869964+00
3iz7ea72okzjpdh7anrrifegpl6v27ea	.eJxVjMsOwiAQRf-FtSFQYACX7v0GMsMMtmrapI-V8d-1SRe6veec-1IFt7Uv2yJzGVidlbPq9DsS1oeMO-E7jrdJ12lc54H0ruiDLvo6sTwvh_t30OPSf-sWIEWABBkTJMzNOe6qB065Wu9M7pqJQSh4iiZRzBW8yVRZmMSjVe8P5o83yA:1s1kVo:RT6aAZ4zq3wkUysQW-o14UCWKrgPz3yPRRECdR-Jmu0	2024-05-14 10:15:00.494713+00
1292jqkyfbwrv5tsw5i7qc49p8y54jrj	.eJxVjEEOwiAQRe_C2hAcQMCl-56BDAwjVUOT0q6MdzckXej2v_f-W0Tctxr3XtY4k7gKo8Xpd0yYn6UNQg9s90XmpW3rnORQ5EG7nBYqr9vh_h1U7HXUShEoHS6OnWJgBT4RMGQCpzU4DNobj9YGOhN6QGeAtQpswbALXny-7EM3Ig:1s2SXn:omlM-ygXRKzs1-iSSw4MEjUTwvoDZaD0Y3ITkJfDqsc	2024-05-16 09:15:59.471466+00
h7rso9zqq9hfbiw18vy2mgm5uz51khgp	.eJxVjMsOwiAQRf-FtSFQYACX7v0GMsMMtmrapI-V8d-1SRe6veec-1IFt7Uv2yJzGVidlbPq9DsS1oeMO-E7jrdJ12lc54H0ruiDLvo6sTwvh_t30OPSf-sWIEWABBkTJMzNOe6qB065Wu9M7pqJQSh4iiZRzBW8yVRZmMSjVe8P5o83yA:1s4Hel:LO9sEbSexTniIdX2CjyXa0r-k482XNoww8vmrLkeFns	2024-05-21 10:02:43.975853+00
c32pxhuv4cgiizruqllorpw02sik03m2	.eJxVjEEOwiAQRe_C2hAcQMCl-56BDAwjVUOT0q6MdzckXej2v_f-W0Tctxr3XtY4k7gKo8Xpd0yYn6UNQg9s90XmpW3rnORQ5EG7nBYqr9vh_h1U7HXUShEoHS6OnWJgBT4RMGQCpzU4DNobj9YGOhN6QGeAtQpswbALXny-7EM3Ig:1s4HxZ:6rLm_4RVIh6JSVVl2uIolbbKqFZCFt-ke-hFmffUUY4	2024-05-21 10:22:09.253819+00
9nr5djryxhkz4y68p9kmzrfggy1df0j3	.eJxVjEEOwiAQRe_C2hAcQMCl-56BDAwjVUOT0q6MdzckXej2v_f-W0Tctxr3XtY4k7gKo8Xpd0yYn6UNQg9s90XmpW3rnORQ5EG7nBYqr9vh_h1U7HXUShEoHS6OnWJgBT4RMGQCpzU4DNobj9YGOhN6QGeAtQpswbALXny-7EM3Ig:1s4JW2:upD8DLb5UaltwlPake3Kus9WdcDjtAGai-jXXSRZnVM	2024-05-21 12:01:50.43278+00
syiz9x2njsz1bxqqgpe6qlu7qg90qsnl	.eJxVjMsOwiAQRf-FtSG8mbp07zeQgQGpGkhKuzL-uzbpQrf3nHNfLOC21rCNvISZ2JlJdvrdIqZHbjugO7Zb56m3dZkj3xV-0MGvnfLzcrh_BxVH_da52KLzJEEXIZSMNnoPyjlBzipCiFi0BSrgFRhvDGllvVcoIJmJErL3B9DoN1I:1s4KZ4:erq16GYnVC73Oyh96E0Ijma2QQGhJHCuPwWwmrPm8gw	2024-05-21 13:09:02.287196+00
6ubyur7k2xg5yrm05b0vpi1t5851v10y	.eJxVjMsOwiAQRf-FtSG8mbp07zeQgQGpGkhKuzL-uzbpQrf3nHNfLOC21rCNvISZ2JlJdvrdIqZHbjugO7Zb56m3dZkj3xV-0MGvnfLzcrh_BxVH_da52KLzJEEXIZSMNnoPyjlBzipCiFi0BSrgFRhvDGllvVcoIJmJErL3B9DoN1I:1s4KZg:bikDgL1r9j8BE4_dx3mtHWggkrVdZWp-BpGUfnMStyc	2024-05-21 13:09:40.779558+00
jxwtmwf26mishodncw6fmhtce9vd9ywf	.eJxVjMsOwiAQRf-FtSG8mbp07zeQgQGpGkhKuzL-uzbpQrf3nHNfLOC21rCNvISZ2JlJdvrdIqZHbjugO7Zb56m3dZkj3xV-0MGvnfLzcrh_BxVH_da52KLzJEEXIZSMNnoPyjlBzipCiFi0BSrgFRhvDGllvVcoIJmJErL3B9DoN1I:1s4KZv:dyWurL0SA5TJUM_9RWMfsuiP-sDRiz-kut_d87ymTIo	2024-05-21 13:09:55.142046+00
qki8efbdsqd8e3e9gp9sxp7gaeox41eh	.eJxVjMsOwiAQRf-FtSFQYACX7v0GMsMMtmrapI-V8d-1SRe6veec-1IFt7Uv2yJzGVidlbPq9DsS1oeMO-E7jrdJ12lc54H0ruiDLvo6sTwvh_t30OPSf-sWIEWABBkTJMzNOe6qB065Wu9M7pqJQSh4iiZRzBW8yVRZmMSjVe8P5o83yA:1s4LU0:wD71rZrbA4Wim3reV5-Z2fzz5byk3t-PbU-5hiX51l4	2024-05-21 14:07:52.290786+00
1qwh3l5r3yq7oeyvanf61s57xkaggx77	.eJxVjEEOwiAQRe_C2hAcQMCl-56BDAwjVUOT0q6MdzckXej2v_f-W0Tctxr3XtY4k7gKo8Xpd0yYn6UNQg9s90XmpW3rnORQ5EG7nBYqr9vh_h1U7HXUShEoHS6OnWJgBT4RMGQCpzU4DNobj9YGOhN6QGeAtQpswbALXny-7EM3Ig:1s4LuO:AszMDXogi9V2n_DAxb_bf4g8zOL1VeCm4anYmnc_pRc	2024-05-21 14:35:08.82531+00
im47fmhiv4532qkr8zbt38qbipdmebdn	.eJxVjMsOwiAQRf-FtSG8mbp07zeQgQGpGkhKuzL-uzbpQrf3nHNfLOC21rCNvISZ2JlJdvrdIqZHbjugO7Zb56m3dZkj3xV-0MGvnfLzcrh_BxVH_da52KLzJEEXIZSMNnoPyjlBzipCiFi0BSrgFRhvDGllvVcoIJmJErL3B9DoN1I:1s4bBJ:HCX4oEfd4kAbRD-PmbvxxWdjVsBuZiHC_7-O9rvAJWo	2024-05-22 06:53:37.476025+00
mfuq95klfy75cj9z5grkupwr4yx02qqe	.eJxVjEEOwiAQRe_C2hAcQMCl-56BDAwjVUOT0q6MdzckXej2v_f-W0Tctxr3XtY4k7gKo8Xpd0yYn6UNQg9s90XmpW3rnORQ5EG7nBYqr9vh_h1U7HXUShEoHS6OnWJgBT4RMGQCpzU4DNobj9YGOhN6QGeAtQpswbALXny-7EM3Ig:1s68lO:KGo5in73a3kz-Pi7oGLCFZVv77Rv6fjEMkJA2xKhvac	2024-05-26 12:57:14.039729+00
pdvgmemj1v11lz680mm70qwcturekfvz	.eJxVjDsOAiEUAO9CbQggn4elvWcgD3jIqoFk2a2MdzckW2g7M5k3C7hvNeyD1rBkdmFWsdMvjJie1KbJD2z3zlNv27pEPhN-2MFvPdPrerR_g4qjzi9qhZLAUDEmeX0GF71LFqzS4ARo6wisMQhQhJdSUdZJFQEGHRYE9vkC5YQ3QQ:1s6RIN:xVAloPWhyI4Q72zJSw93cI84lChZssRm2JtyGM2A9Gg	2024-05-27 08:44:31.622756+00
2a47bqq6kzqmi0mxfvnec66ndaklpleo	.eJxVjDsOAiEUAO9CbQggn4elvWcgD3jIqoFk2a2MdzckW2g7M5k3C7hvNeyD1rBkdmFWsdMvjJie1KbJD2z3zlNv27pEPhN-2MFvPdPrerR_g4qjzi9qhZLAUDEmeX0GF71LFqzS4ARo6wisMQhQhJdSUdZJFQEGHRYE9vkC5YQ3QQ:1s6V12:bXsrrJPJQhkUYkHfnbPk9VmUfGiPDKFdpQW4OwJ0Vv0	2024-05-27 12:42:52.113724+00
sh7wsd7pm9auj1nv2wg02q05s0a5bj0z	.eJxVjEEOwiAQRe_C2hAcQMCl-56BDAwjVUOT0q6MdzckXej2v_f-W0Tctxr3XtY4k7gKo8Xpd0yYn6UNQg9s90XmpW3rnORQ5EG7nBYqr9vh_h1U7HXUShEoHS6OnWJgBT4RMGQCpzU4DNobj9YGOhN6QGeAtQpswbALXny-7EM3Ig:1s6mbG:pHB9U31hUPJzNlS09AdCLkYWHaniHAX7rOEC0OFQJIA	2024-05-28 07:29:26.95311+00
m4b253vt76jwvfikirer4s3hogbgahvl	.eJxVjMsOwiAQRf-FtSG8mbp07zeQgQGpGkhKuzL-uzbpQrf3nHNfLOC21rCNvISZ2JlJdvrdIqZHbjugO7Zb56m3dZkj3xV-0MGvnfLzcrh_BxVH_da52KLzJEEXIZSMNnoPyjlBzipCiFi0BSrgFRhvDGllvVcoIJmJErL3B9DoN1I:1s6sWl:JSgOpumxCq5SxcIIA3uc-Au4LJc8fOXIQCqm3JzAuXk	2024-05-28 13:49:11.881778+00
6zy3te2vdmc4yxeim4v064vpmh4znrpz	.eJxVjMsOwiAQRf-FtSG8mbp07zeQgQGpGkhKuzL-uzbpQrf3nHNfLOC21rCNvISZ2JlJdvrdIqZHbjugO7Zb56m3dZkj3xV-0MGvnfLzcrh_BxVH_da52KLzJEEXIZSMNnoPyjlBzipCiFi0BSrgFRhvDGllvVcoIJmJErL3B9DoN1I:1s7AUQ:X5zliQj3u71M7YjVmFWm-MFuATuLFf19GG04o5ganLI	2024-05-29 08:59:58.314117+00
d011d0qvbwqrinpelddvub8pk8k2ii7h	.eJxVjMsOwiAQRf-FtSG8mbp07zeQgQGpGkhKuzL-uzbpQrf3nHNfLOC21rCNvISZ2JlJdvrdIqZHbjugO7Zb56m3dZkj3xV-0MGvnfLzcrh_BxVH_da52KLzJEEXIZSMNnoPyjlBzipCiFi0BSrgFRhvDGllvVcoIJmJErL3B9DoN1I:1s7AW5:Jzf80fBmJIc2LUSBvCIDdajI8kqMXggkppukQxb7Gbg	2024-05-29 09:01:41.459429+00
6pue0aba41nrnpd0nbxs4l1zyufugphp	.eJxVjMsOwiAQRf-FtSG8mbp07zeQgQGpGkhKuzL-uzbpQrf3nHNfLOC21rCNvISZ2JlJdvrdIqZHbjugO7Zb56m3dZkj3xV-0MGvnfLzcrh_BxVH_da52KLzJEEXIZSMNnoPyjlBzipCiFi0BSrgFRhvDGllvVcoIJmJErL3B9DoN1I:1s7B5B:-gFEDILECg95jrfqjTZRLkBVOoxutSNN-HCoPWaLd1U	2024-05-29 09:37:57.724919+00
zxoyb2j0vfh65fc6w3oltwa10rm4x9y3	.eJxVjEEOwiAQRe_C2hAcQMCl-56BDAwjVUOT0q6MdzckXej2v_f-W0Tctxr3XtY4k7gKo8Xpd0yYn6UNQg9s90XmpW3rnORQ5EG7nBYqr9vh_h1U7HXUShEoHS6OnWJgBT4RMGQCpzU4DNobj9YGOhN6QGeAtQpswbALXny-7EM3Ig:1s7B7l:PSIT8sYwRyo-4TgVjvZN0sQyihpk_ehgpRjBH4DCbJo	2024-05-29 09:40:37.197784+00
v011s53ifomsqpugnsam7gjlwsqn7kvt	.eJxVjEEOwiAQRe_C2hAcQMCl-56BDAwjVUOT0q6MdzckXej2v_f-W0Tctxr3XtY4k7gKo8Xpd0yYn6UNQg9s90XmpW3rnORQ5EG7nBYqr9vh_h1U7HXUShEoHS6OnWJgBT4RMGQCpzU4DNobj9YGOhN6QGeAtQpswbALXny-7EM3Ig:1s7Wze:BZ3OyxtV4aZgSf5YLgwu-beWOGi9c0cNx7Md6gcypb4	2024-05-30 09:01:42.457323+00
r2r5yil0mf0wyet9avy3aodc1632nme7	.eJxVjDsOAiEUAO9CbQggn4elvWcgD3jIqoFk2a2MdzckW2g7M5k3C7hvNeyD1rBkdmFWsdMvjJie1KbJD2z3zlNv27pEPhN-2MFvPdPrerR_g4qjzi9qhZLAUDEmeX0GF71LFqzS4ARo6wisMQhQhJdSUdZJFQEGHRYE9vkC5YQ3QQ:1s7Yib:PGCqZzZ2rILSoYENDL7CsEeoUZ60tS_BWBEvm80gHJ8	2024-05-30 10:52:13.556043+00
f6x3r41yrluxvgd308oiek04fduhy2ap	.eJxVjDsOAiEUAO9CbQggn4elvWcgD3jIqoFk2a2MdzckW2g7M5k3C7hvNeyD1rBkdmFWsdMvjJie1KbJD2z3zlNv27pEPhN-2MFvPdPrerR_g4qjzi9qhZLAUDEmeX0GF71LFqzS4ARo6wisMQhQhJdSUdZJFQEGHRYE9vkC5YQ3QQ:1s7Z2U:U_Y-1xqIoKTZWgaiooXPB6irO22acW-LzGqfTEs4UNA	2024-05-30 11:12:46.075832+00
ywuk87b0ff1dkk6sg8blnhcc1p432kkt	.eJxVjDsOwjAQBe_iGlnxb-1Q0nMGaze7IQFkS3FSIe4OkVJA-2bmvVTGbZ3y1mTJM6uzckadfkfC4SFlJ3zHcqt6qGVdZtK7og_a9LWyPC-H-3cwYZu-dSeWaRhHGzrsgSCiOKBk0UBK4sY-oHhvYkzBe8vggjUIxD2liMik3h8QhTg5:1sERfb:2W3_cJbefLBgUFAS7A3ZU6fs2wWcdLtOOlPGUwIKU7Y	2024-06-18 10:45:35.577739+00
9rcotj7ivs3pdexu5r4mxforlikfpe6d	.eJxVjMsOwiAQRf-FtSG8mbp07zeQgQGpGkhKuzL-uzbpQrf3nHNfLOC21rCNvISZ2JlJdvrdIqZHbjugO7Zb56m3dZkj3xV-0MGvnfLzcrh_BxVH_da52KLzJEEXIZSMNnoPyjlBzipCiFi0BSrgFRhvDGllvVcoIJmJErL3B9DoN1I:1s7ZSA:vceW9Wy8Pr_frZDnudLKuC16Z8EZad-omefTwbw_cRA	2024-05-30 11:39:18.417449+00
b8sjn65xckjmwy61gr61iszw7mzfh5qe	.eJxVjDsOwjAQBe_iGln-fyjpcwZr115wANlSnFSIu0OkFNC-mXkvlmBba9oGLWku7MyMZqffESE_qO2k3KHdOs-9rcuMfFf4QQefeqHn5XD_DiqM-q2toABOUyZVlBNGRA_FeWMdaWUdoIwhe4NFKtQxCCmstpokRsSr8Ya9P_CsN0E:1sESMc:umUofWVdS7WI6dsArOxcyPtIJP3CV58MdsU0s9RxkVI	2024-06-18 11:30:02.895105+00
wblrdccdrpefbmh1ewl3r026iidl46zt	.eJxVjDsOAiEUAO9CbQggn4elvWcgD3jIqoFk2a2MdzckW2g7M5k3C7hvNeyD1rBkdmFWsdMvjJie1KbJD2z3zlNv27pEPhN-2MFvPdPrerR_g4qjzi9qhZLAUDEmeX0GF71LFqzS4ARo6wisMQhQhJdSUdZJFQEGHRYE9vkC5YQ3QQ:1s7c36:ZHuyMkNQZlkrVEBkXAwSva2OFOHdgt4LZl6e1sr5cS4	2024-05-30 14:25:36.3214+00
a49o0ndxqihdryw0mjts8bfbwij5gme1	.eJxVjEEOwiAQRe_C2hAcQMCl-56BDAwjVUOT0q6MdzckXej2v_f-W0Tctxr3XtY4k7gKo8Xpd0yYn6UNQg9s90XmpW3rnORQ5EG7nBYqr9vh_h1U7HXUShEoHS6OnWJgBT4RMGQCpzU4DNobj9YGOhN6QGeAtQpswbALXny-7EM3Ig:1s8bXy:OQXjR9ccsLfXUGCOOcbTQPHixT5WqY_ISVEkygaleqI	2024-06-02 08:05:34.484992+00
tvgd3g0wafmy9fpceq7tlaxgoqe9pnah	.eJxVjMsOwiAQRf-FtSFQYACX7v0GMsMMtmrapI-V8d-1SRe6veec-1IFt7Uv2yJzGVidlbPq9DsS1oeMO-E7jrdJ12lc54H0ruiDLvo6sTwvh_t30OPSf-sWIEWABBkTJMzNOe6qB065Wu9M7pqJQSh4iiZRzBW8yVRZmMSjVe8P5o83yA:1s8kIF:q_s-lUfSD_qYWDl4TmjZgciGicCEeX3CeRrARUZa__k	2024-06-02 17:25:55.50984+00
xbzoqn6mjyqhec2wlobgrz97mx48qpgl	.eJxVjDsOwjAQBe_iGln-fyjpcwZr115wANlSnFSIu0OkFNC-mXkvlmBba9oGLWku7MyMZqffESE_qO2k3KHdOs-9rcuMfFf4QQefeqHn5XD_DiqM-q2toABOUyZVlBNGRA_FeWMdaWUdoIwhe4NFKtQxCCmstpokRsSr8Ya9P_CsN0E:1sCga6:44XeF1pbD7rcXhbplLLf43mx__pvVt38DGd0tVhBHJ8	2024-06-13 14:16:38.99792+00
\.


--
-- Data for Name: footer_service; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.footer_service (id, title, description, slug) FROM stdin;
3	Return Policy	1. With the exception of situations where a product is fake, defective, or materially different from what the customer ordered, products sold on the website are subject to a 14 (fourteen) calendar days return policy as long as they are in their original packaging and condition when purchased and received. Any orders placed on ‘Materials’ cannot be refunded.\r\n\r\n2. Upon arrangement through KMC’s customer support team, there will be a courier pickup and return to ensure a full refund is given to the customer and vendor must accept refund. In the case that these conditions are satisfied, KMC will not charge any penalty costs.\r\n\r\n3. Shipping charges wil be placed on vendors in the case that items are defective, fake or materially different from what the customers ordered, in all other cases, shipping charges belonging to the return of an item will be placed on customers.	return-policy
2	Privacy Policy	This privacy policy for KMC describes the ways in which your data is collected, as well as, how and why we may process your information. Please read the following.\r\n   ● Personal information is gathered upon use and navigation on the website although sensitive information is not accessed.\r\n   ● Information collected excludes revealing your specific identity (name or contact information) although may include device usage information \r\n         as well as location, IP adress information about how and when you use our services and other technical information. This is used mainly for \r\n         maintain security and operation of the website and internal analytics and reporting.\r\n   ● Personal information is shared with buisiness transfers, affiliations and business partners.\r\n   ● We may use tracking technologies like cookies to collect and store information\r\n   ● Information is kept for as long as needed for purposes set in this privacy policy. When there is no legitimate business need to store your \r\n         information, it will either be deleted or anonymized. If it not\r\npossible because information has been stored in archived, then information will be held securely.\r\n● Account may be reviewed, changed or terminated at anytime.\r\n● You have the right to use the “do not track” feature to not have your online data collected.\r\n● You have the right to access personal information collected from you, change or delete it.	privacy-policy
1	Terms & Conditions Policy	1. AGREEMENT TO TERMS AND CONDITIONS\r\nThese Terms of Use constitute a legally binding agreement made between you, either personally or on behalf of an entity, and Kandil Medical Company concerning your access and use of the website and any other media form, mobile website or mobile application related to the site. Your agreement to these terms means you have read, understood and is bound by these Terms and Conditions. IF YOU DO NOT AGREE WITH ALL OF THESE TERMS OF USE, THEN YOU ARE PROHIBITED FROM USING THE SITE AND YOU MUST DISCONTINUE USE IMMEDIATELY.\r\nAdditional terms and conditions or documents that the site may post are hereby expressly incorporated herein by reference. We reserve the right, in our sole discretion, to change or amend these Terms of Use at any time and for any reason. You shall be informed of any revisions by the "Last updated" date of these Terms of Use, and you waive any right to explicit notice of each change. Please make sure to check the appropriate Terms each time you use our site to determine which ones are currently in place. Continued use of the site after the date that revised terms are posted, means that you are deemed to have accepted and been made aware of these changed.\r\n\r\n2. INTELLECTUAL PROPERTY RIGHTS\r\nThis website site is our property and all source code, databases, functionality, software, website designs, audio, video, text, photographs, and graphics on the site (website “content”). Trademarks, service marks, and logos (“marks”) contained therein are owned and licensed to us, and are protected by copyright and trademark laws. The content provided on the site is for your information and personal use only. Except as expressly provided in these Terms of Use, no content or marks may be copied, reproduced, aggregated, republished, uploaded, posted, publicly displayed, encoded, translated, transmitted, distributed, sold, licensed, or otherwise exploited for any commercial purpose whatsoever, without our express prior written permission.\r\n\r\n3. USER REPRESENTATIONS\r\nBy using the website, you warrant that: (1) any information you provide at registration will be true, accurate, current, and complete; (2) you will preserve the accuracy of such information and promptly update such registration information as needed: (3) You are of legal age and agree to abide by these terms of use: (4) You are not a minor in the country where you reside, or if you are, you have parental consent to access the Site; (5) You won't use a bot, script, or other automated or nonhuman method to access the website; (6) You won't use the website for any unlawful or unauthorised purposes; and (7) You won't use the website in a way that violates any laws or regulations that may be in effect.\r\nWe have the right to suspend or terminate your account and bar you from using the site in the present or the future if you give any information that is untrue, inaccurate, or incomplete.\r\n\r\n4. PROHIBITED ACTIVITIES\r\nYou may not access or use the site for any purpose other than that for which we make the site available. The Site may not be used in connection with any commercial endeavors except those that are specifically endorsed or approved by us.\r\nAs a user of the Site, you agree not to:\r\n- Attempt to learn sensitive account information, such as user passwords, by tricking, defrauding, or misleading us and other users.\r\n- Use our support services improperly or submit fabricated reports of abuse or misconduct.\r\n - Upload or transmit (or attempt to upload or transmit) any viruses, Trojan horses, or other content that interferes with anyone's uninterrupted use and enjoyment of the site or that modifies, impairs, disrupts, alters, or interferes with the use, features, functions, operation, or maintenance of the site. This includes using excessive capitalization and spamming (repeatedly posting the same message).\r\n- Attempting to use another user's account or impersonate that user.\r\n- Harass, irritate, threaten, or otherwise cause distress to any of our employees or agents who are assisting you in using any part of the site.\r\n- Copying or altering the website's code, including but not limited to JavaScript, Flash, PHP, or HTML.\r\n- Decipher, decompile, disassemble, or reverse engineer any of the software that makes up or in any way is a component of the website, unless expressly prohibited by applicable law.\r\n- Any unlawful use of the website is prohibited, as is the automated or deceptive creation of user accounts or the electronic collection of users' usernames and/or email addresses for the purpose of sending unsolicited email.\r\n- Use the site as part of any effort to compete with us\r\n\r\n5. GUIDELINES FOR REVIEWS\r\nOn the website, we may provide you spaces to post reviews or ratings. You must abide by the following standards before publishing a review: (1) You must have first-hand knowledge of the person or entity being reviewed. (2) Your reviews must not use derogatory language or be abusive, racist, or hateful. (3) Your reviews must not make any references to discrimination on the basis of religion, race, gender, national origin, age, marital status, sexual orientation, or disability. (4) Your reviews must not make any references to illegal activity,(5) When submitting negative reviews, you should not be associated with rival businesses; (6) you should not draw any judgments about the legality of conduct; (7) and you must not make any false or misleading claims.\r\nWe have the right to approve, reject, or remove reviews. Even if someone finds reviews unpleasant or inaccurate, we are under no obligation to screen or delete them. We take no responsibility for any reviews or for any ensuing liabilities, claims, or losses.\r\n\r\n6. SITE MANGEMENT\r\nWe reserve the right to: (1) monitor the site for violations of these terms and conditions; (2) take appropriate legal action against anyone who, in our sole discretion, violates the law or these terms, including reporting such user to law enforcement authorities; (3) in our sole discretion and without limitation, refuse, restrict access to, limit the availability of, or disable (to the extent technologically feasible) any of your contributions; (4) in our sole discretion and without limitation, notice, or liability, to remove from the site or otherwise disable all files and content that are excessive in size or are in any way burdensome to our systems; and (5) otherwise manage the site in a manner designed to protect our rights and property and to facilitate the proper functioning of the site.\r\n\r\n7. TERM AND TERMINATION\r\nFor as long as you use the site, these terms of use will be in full force and effect. APART FROM ANY OTHER PROVISION OF THESE TERMS OF USE, WE RESERVE THE RIGHT TO, IN OUR SOLE DISCRETION AND WITHOUT NOTICE OR LIABILITY, DENY ACCESS TO AND USE OF THE SITE (INCLUDING BLOCKING CERTAIN IP ADDRESSES), TO ANY PERSON FOR ANY REASON OR FOR NO REASON, INCLUDING WITHOUT LIMITATION FOR BREACH OF ANY REPRESENTATION, WARRANTY. IN OUR SOLE DISCRETION, WE MAY TERMINATE YOUR USE OR PARTICPATION OF THE SITE AT ANY TIME, OR DELETE YOUR ACCOUNT TOGETHER WITH ANY CONTENT YOU HAVE POSTED. IF WE TERMINATE OR SUSPEND YOUR ACCOUNT FOR ANY REASON, YOU ARE PROHIBITED FROM REGISTERING AND CREATING A NEW ACCOUNT UNDER YOUR NAME, A FAKE OR BORROWED NAME, OR THE NAME OF A THIRD PARTY. WE ALSO RESERVE THE RIGHT TO TAKE APPROPRIATE LEGAL ACTION INCLUDING PURSUING CIVIL, CRIMINAL AND INJUNCTIVE REDRESS WITHOUT LIMITATION.\r\n\r\n8. MODIFICATIONS AND INTERUPTIONS\r\nThe site's contents are subject to change, modification, or removal at any time and without prior notice for any reason. Additionally, we retain the right to change or stop offering the site altogether at any time without prior notice. Any time the site is altered, its price is changed, it is suspended, or it is discontinued, we won't be held responsible to you or any other person. We cannot guarantee that the site will always be accessible. We might encounter hardware, software, or other issues or need to carry out site maintenance, which would cause disruptions, delays, or mistakes.You acknowledge that we are under no obligation to compensate you for any loss, damage, or inconvenience resulting from your inability to use or access the site while it is unavailable or in the event that it is discontinued. Nothing in these Terms of Use shall be deemed to oblige us to provide any updates, releases, or corrections in connection with the site or to maintain and support the site.\r\n\r\n9. GOVERNING LAW\r\nThe laws of Egypt shall apply to the interpretation and enforcement of these Terms. You and Kandil Medical Centre hereby expressly agree that any disagreement relating to these terms shall be resolved exclusively by Egyptian courts, with no right of appeal.\r\n\r\n10. USER DATA\r\nFor the purpose of managing the site's performance, we will keep track of some of the information you send to the site, as well as information on how you use the site. You acknowledge and consent that we may access, store, process, and utilise any information and personal data you give in accordance with the Privacy Policy's guidelines and your preferences (including settings). By offering recommendations or other feedback about the Site, you consent to our using and sharing it for any reason without paying you anything. You acknowledge that we are not responsible for any loss or corruption of such data, and you hereby release us from any claims you may have about such loss or corruption.\r\n\r\n11. PRIVACY POLICY\r\nYou consent to be governed by our Privacy Policy, which is included in these Terms of Use, by using the Site. Please be aware that Egypt is where the site is located. By continuing to use the Site, you are transferring your data to Egypt and agreeing to have it transferred to and processed in Egypt if you are accessing the site from any other part of the world where the laws or other requirements governing personal data collection, use, or disclosure differ from those that apply in Egypt.	terms-conditions-policy
\.


--
-- Data for Name: general_general; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.general_general (id, tax_percentage, point_value) FROM stdin;
1	14	0.100000000000000006
\.


--
-- Data for Name: home_homedetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.home_homedetails (id, categories_caption, about_us_1_caption, about_us_2_caption, about_us_1_image, about_us_2_image, about_us_title) FROM stdin;
1	Explore our extensive selection of top-quality dental equipment, materials, and devices. Browse through our inventory to discover the premium supplies you require.	In 1989, Dr. Waleed Kandil established Kandil Medical Company, originally headquartered in Heliopolis. Over time, KMC has expanded significantly, emerging as a prominent Egyptian medical enterprise with multiple branches across the nation, including Heliopolis, El Manial, Alexandria, Nasr City, and El Qasr El-Ainy. Additionally, the company has forged international connections with partners in the US, UK, Canada, and China. This outreach has facilitated the introduction of renowned multinational brands into the Egyptian market, aligning with the company's mission to continually provide cutting-edge dental technology to meet the professional and practical needs of Egyptian consumers.		home/home-details/Untitled_design_3.png		About us
\.


--
-- Data for Name: home_homeswiper; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.home_homeswiper (id, media, link, mobile_view_media) FROM stdin;
17	home/home-swiper/choose_between_wide_variety_of_brands.mp4	\N	home/home-swiper/choose_between_wide_variety_of_brands_4.mp4
19	home/home-swiper/WhatsApp_Image_2024-05-18_at_13.43.09_1.jpeg	\N	
\.


--
-- Data for Name: home_popularproduct; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.home_popularproduct (id, product_id) FROM stdin;
4	042d2ad5-c4db-4dda-9b20-c9edd306b227
5	0d2091b5-aecc-4346-9230-8692fb4a6258
6	10c5f969-8707-4049-a1c8-6c02bd0b08c0
7	dfe5c687-7434-4aad-8b7d-7d292eb5d245
8	b41dfafc-d47a-40a5-998f-ebd9024b64c7
\.


--
-- Data for Name: offers_offer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.offers_offer (id, title, image) FROM stdin;
1	Offers	offers/OFFERS_3.png
\.


--
-- Data for Name: order_order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_order (id, code, price_paid, total_price, created_at, order_status, payment_type, transaction_id, delivery_date, coupon_id, user_id, tax_value, registered_order_id, compelted_at, awb, number_of_boxes, order_weight, shipping_fees, shipping_status, discount) FROM stdin;
293	e4f6e7602024	334.04000000000002	334.04000000000002	2024-05-16 10:48:07.337637+00	Ordered	Cash On Delivery	\N	\N	\N	67	35	\N	\N	290878817070	1	1	84.0400000000000063	Preparing For Delivery	0
294	b7ea11be2024	1710.20000000000005	1710.20000000000005	2024-05-16 11:06:17.175778+00	Ordered	Credit Card	\N	\N	\N	63	229.599999999999994	\N	\N	290878819144	2	1.72500000000000009	70.2000000000000028	Preparing For Delivery	0
311	2112e15a2024	129051.899999999994	129051.899999999994	2024-05-20 06:42:25.792483+00	Transaction Failed	Credit Card	\N	\N	\N	69	18018	\N	\N	290879431679	1	19.9600000000000009	351.899999999999977	Preparing For Delivery	0
296	7dbdd8e92024	9209	9209	2024-05-16 11:16:27.82066+00	Ordered	Credit Card	\N	\N	\N	67	1281	\N	\N	290878820419	1	0.770000000000000018	59	Preparing For Delivery	0
297	bb40a1872024	1710.20000000000005	1710.20000000000005	2024-05-18 09:54:29.51698+00	Ordered	Credit Card	\N	\N	\N	63	229.599999999999994	\N	\N	290879111231	2	1.72500000000000009	70.2000000000000028	Preparing For Delivery	0
298	77fa6d5e2024	1710.20000000000005	1710.20000000000005	2024-05-18 09:54:50.715475+00	Ordered	Credit Card	\N	\N	\N	63	229.599999999999994	\N	\N	290879111264	2	1.72500000000000009	70.2000000000000028	Preparing For Delivery	0
299	2f9f161a2024	6059	6059	2024-05-18 09:54:51.60601+00	Ordered	Credit Card	\N	\N	\N	67	840	\N	\N	290879111275	1	0.689999999999999947	59	Preparing For Delivery	0
300	37bd78fa2024	1710.20000000000005	1710.20000000000005	2024-05-18 09:55:03.384793+00	Ordered	Credit Card	\N	\N	\N	63	229.599999999999994	\N	\N	290879111303	2	1.72500000000000009	70.2000000000000028	Preparing For Delivery	0
301	6800018f2024	6059	6059	2024-05-18 09:55:08.707652+00	Ordered	Credit Card	\N	\N	\N	67	840	\N	\N	290879111314	1	0.689999999999999947	59	Preparing For Delivery	0
302	58c6d4052024	6059	6059	2024-05-18 09:55:16.014729+00	Ordered	Credit Card	\N	\N	\N	67	840	\N	\N	290879111325	1	0.689999999999999947	59	Preparing For Delivery	0
303	de7ea4732024	1710.20000000000005	1710.20000000000005	2024-05-18 09:55:16.874098+00	Ordered	Credit Card	\N	\N	\N	63	229.599999999999994	\N	\N	290879111336	2	1.72500000000000009	70.2000000000000028	Preparing For Delivery	0
304	742990cc2024	6059	6059	2024-05-18 09:55:24.069533+00	Ordered	Credit Card	\N	\N	\N	67	840	\N	\N	290879111358	1	0.689999999999999947	59	Preparing For Delivery	0
305	f4c9ca582024	1710.20000000000005	1710.20000000000005	2024-05-18 09:55:24.507517+00	Ordered	Credit Card	\N	\N	\N	63	229.599999999999994	\N	\N	290879111369	2	1.72500000000000009	70.2000000000000028	Preparing For Delivery	0
306	47cdad2a2024	6059	6059	2024-05-18 09:55:35.326063+00	Ordered	Credit Card	\N	\N	\N	67	840	\N	\N	290879111380	1	0.689999999999999947	59	Preparing For Delivery	0
307	05e319ad2024	9209	9209	2024-05-18 09:56:58.994094+00	Transaction Failed	Credit Card	\N	\N	\N	31	1281	\N	\N	290879111496	1	0.770000000000000018	59	Preparing For Delivery	0
319	0c17f78c2024	129051.899999999994	129051.899999999994	2024-05-20 09:09:05.791425+00	Transaction Failed	Credit Card	\N	\N	\N	69	18018	\N	\N	290879448077	1	19.9600000000000009	351.899999999999977	Preparing For Delivery	0
312	a6163e3a2024	129051.899999999994	129051.899999999994	2024-05-20 06:44:37.356926+00	Transaction Failed	Credit Card	\N	\N	\N	69	18018	\N	\N	290879431928	1	19.9600000000000009	351.899999999999977	Preparing For Delivery	0
308	d33b75242024	316	316	2024-05-18 10:03:20.584162+00	Refund requested	Credit Card	TX-883098737	\N	\N	31	35.9799999999999969	a296b3eb-b9e5-4ed0-915d-7b34c795a39b	2024-05-18	290879112249	2	0.400000000000000022	59	Preparing For Delivery	0
309	f6319f192024	1809	1809	2024-05-19 12:01:53.93698+00	Ordered	Credit Card	\N	\N	\N	69	245	\N	\N	290879312939	1	0.395000000000000018	59	Preparing For Delivery	0
310	0efd01712024	1809	1809	2024-05-19 12:07:13.173325+00	Ordered	Credit Card	\N	\N	\N	69	245	\N	\N	290879314440	1	0.395000000000000018	59	Preparing For Delivery	0
320	376f144c2024	129051.899999999994	129051.899999999994	2024-05-20 09:15:24.679367+00	Ordered	Credit Card	\N	\N	\N	69	18018	\N	\N	290879449156	1	19.9600000000000009	351.899999999999977	Preparing For Delivery	0
313	6826c3d42024	129051.899999999994	129051.899999999994	2024-05-20 08:33:39.584441+00	Transaction Failed	Credit Card	\N	\N	\N	69	18018	\N	\N	290879444718	1	19.9600000000000009	351.899999999999977	Preparing For Delivery	0
314	1339d8352024	129051.899999999994	129051.899999999994	2024-05-20 08:34:15.819003+00	Ordered	Credit Card	\N	\N	\N	69	18018	\N	\N	290879444751	1	19.9600000000000009	351.899999999999977	Preparing For Delivery	0
315	4a19d45b2024	129051.899999999994	129051.899999999994	2024-05-20 08:35:06.717033+00	Ordered	Credit Card	\N	\N	\N	69	18018	\N	\N	290879444812	1	19.9600000000000009	351.899999999999977	Preparing For Delivery	0
316	e9d48ac62024	132279.698000000004	132279.698000000004	2024-05-20 08:49:19.324183+00	Paid	Cash On Delivery	\N	\N	\N	69	18018	\N	2024-05-20	290879446295	1	19.9600000000000009	3579.69799999999987	Preparing For Delivery	0
321	a9f877672024	616	616	2024-05-27 07:50:41.326926+00	Ordered	Credit Card	\N	\N	\N	51	75.5999999999999943	\N	\N	290880572517	6	2.10000000000000009	76	Preparing For Delivery	0
317	5bac02f92024	9438.44100000000071	9438.44100000000071	2024-05-20 08:53:37.490094+00	Paid	Cash On Delivery	\N	\N	\N	69	1281	\N	2024-05-20	290879446700	1	0.770000000000000018	288.440999999999974	Preparing For Delivery	0
318	9e4d3d6c2024	129051.899999999994	129051.899999999994	2024-05-20 09:05:13.260544+00	Ordered	Credit Card	\N	\N	\N	69	18018	\N	\N	290879447689	1	19.9600000000000009	351.899999999999977	Preparing For Delivery	0
322	e862d6252024	616	616	2024-05-27 13:05:57.525247+00	Ordered	Credit Card	\N	\N	\N	51	75.5999999999999943	\N	\N	290880636441	6	2.10000000000000009	76	Preparing For Delivery	0
323	096f125a2024	520.600000000000023	520.600000000000023	2024-05-30 08:02:40.338554+00	Ordered	Credit Card	\N	\N	\N	51	63	\N	\N	290881341642	5	1.75	70.5999999999999943	Preparing For Delivery	0
324	5b1fa4a02024	136654.700000000012	136654.700000000012	2024-05-30 12:50:20.197965+00	Ordered	Cash On Delivery	\N	\N	\N	69	18844	\N	\N	290881400144	2	20.9250000000000007	2054.69999999999982	Preparing for Delivery	0
328	1b7ed0a12024	397326.599999999977	397326.599999999977	2024-06-03 09:15:12.055308+00	Ordered	Cash On Delivery	\N	\N	\N	69	54749.8000000000029	\N	\N	290882348715	74	84.730000000000004	6256.60000000000036	Preparing for Delivery	0
325	de9301ff2024	130665.800000000003	130665.800000000003	2024-06-02 16:45:08.899052+00	Ordered	Cash On Delivery	\N	\N	\N	69	18018	\N	\N	290882189047	1	19.9600000000000009	1965.79999999999995	Preparing for Delivery	0
326	34d948db2024	130665.800000000003	130665.800000000003	2024-06-03 07:41:08.687154+00	Ordered	Cash On Delivery	\N	\N	\N	69	18018	\N	\N	290882321509	1	19.9600000000000009	1965.79999999999995	Preparing for Delivery	0
327	3e2f8ae12024	279	279	2024-06-03 09:06:17.240447+00	Cancelled	Credit Card	\N	\N	\N	43	30.8000000000000007	\N	\N	290882347520	1	0.299999999999999989	59	-	0
329	9d37799c2024	125896.5	125896.5	2024-06-03 11:26:56.062372+00	Cancelled	Credit Card	\N	\N	\N	51	17547.5999999999985	\N	\N	290882376400	50	33.2000000000000028	556.5	-	0
330	bd98c5212024	291.5	291.5	2024-06-03 13:21:28.601024+00	Ordered	Cash On Delivery	\N	\N	\N	43	30.8000000000000007	\N	\N	290882395555	1	0.299999999999999989	71.5	Preparing for Delivery	0
331	4d6c15132024	6753.10000000000036	6753.10000000000036	2024-06-04 11:39:27.667215+00	Transaction Failed	Credit Card	\N	\N	\N	31	936.600000000000023	\N	\N	290882643048	2	1.2649999999999999	63.1000000000000014	-	0
\.


--
-- Data for Name: order_orderaddress; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_orderaddress (id, name, phone, country, city, address, order_id, phone_country_code, apartment, building, floor) FROM stdin;
278	Salma Muhammed	01020069210	Egypt	Cairo	محمد شفيق عطا متفرع من سكة الوايلي حدائق القبة	293	+20	15	71	4
279	Alaa	01062101256	Egypt	Cairo	7 Mostafa el nashas st	294	+20	6	7	3
307	khled khled	01157968553	Egypt	new cairo	aaaaa	322	+20	1	1	1
281	Salma Muhammed	01020069210	Egypt	Cairo	محمد شفيق عطا متفرع من سكة الوايلي حدائق القبة	296	+20	15	71	4
282	Alaa	01062101256	Egypt	Cairo	7 Mostafa el nashas st	297	+20	6	7	3
283	Alaa	01062101256	Egypt	Cairo	7 Mostafa el nashas st	298	+20	6	7	3
284	Salma Muhammed	01020069210	Egypt	Cairo	محمد شفيق عطا متفرع من سكة الوايلي حدائق القبة	299	+20	15	71	4
285	Alaa	01062101256	Egypt	Cairo	7 Mostafa el nashas st	300	+20	6	7	3
286	Salma Muhammed	01020069210	Egypt	Cairo	محمد شفيق عطا متفرع من سكة الوايلي حدائق القبة	301	+20	15	71	4
287	Salma Muhammed	01020069210	Egypt	Cairo	محمد شفيق عطا متفرع من سكة الوايلي حدائق القبة	302	+20	15	71	4
288	Alaa	01062101256	Egypt	Cairo	7 Mostafa el nashas st	303	+20	6	7	3
289	Salma Muhammed	01020069210	Egypt	Cairo	محمد شفيق عطا متفرع من سكة الوايلي حدائق القبة	304	+20	15	71	4
290	Alaa	01062101256	Egypt	Cairo	7 Mostafa el nashas st	305	+20	6	7	3
291	Salma Muhammed	01020069210	Egypt	Cairo	محمد شفيق عطا متفرع من سكة الوايلي حدائق القبة	306	+20	15	71	4
292	karim kandil	01121135548	Egypt	Cairo	8 MOHAMED YOUSSEF EL KADY - NASR CITY	307	+20	6	8	3
293	karim kandil	01121135548	Egypt	Cairo	8 MOHAMED YOUSSEF EL KADY - NASR CITY	308	+20	6	8	3
294	Youssef Shaker	01098872271	Egypt	Cairo	58 Baron City, El Khalifa	309	+20	32	58	3
295	Youssef Shaker	01098872271	Egypt	Cairo	58 Baron City, El Khalifa	310	+20	32	58	3
296	Youssef Shaker	01098872271	Egypt	Cairo	58 Baron City, El Khalifa	311	+20	32	58	3
297	Youssef Shaker	01098872271	Egypt	Cairo	58 Baron City, El Khalifa	312	+20	32	58	3
298	Youssef Shaker	01098872271	Egypt	Cairo	58 Baron City, El Khalifa	313	+20	32	58	3
299	Youssef Shaker	01098872271	Egypt	Cairo	58 Baron City, El Khalifa	314	+20	32	58	3
300	Youssef Shaker	01098872271	Egypt	Cairo	58 Baron City, El Khalifa	315	+20	32	58	3
301	Youssef Shaker	01098872271	Egypt	Cairo	58 Baron City, El Khalifa	316	+20	32	58	3
302	Youssef Shaker	01098872271	Egypt	Cairo	58 Baron City, El Khalifa	317	+20	32	58	3
303	Youssef Shaker	01098872271	Egypt	Cairo	58 Baron City, El Khalifa	318	+20	32	58	3
304	Youssef Shaker	01098872271	Egypt	Cairo	58 Baron City, El Khalifa	319	+20	32	58	3
305	Youssef Shaker	01098872271	Egypt	Cairo	58 Baron City, El Khalifa	320	+20	32	58	3
306	khled khled	01157968553	Egypt	new cairo	aaaaa	321	+20	1	1	1
308	khled khled	01157968553	Egypt	new cairo	aaaaa	323	+20	1	1	1
309	Youssef Shaker	01098872271	Egypt	Cairo	58 Baron City, El Khalifa	324	+20	32	58	3
310	Youssef Shaker	01098872271	Egypt	Cairo	58 Baron City, El Khalifa	325	+20	32	58	3
311	Youssef Shaker	01098872271	Egypt	Cairo	58 Baron City, El Khalifa	326	+20	32	58	3
312	ahmed khattab	01009947991	Egypt	Cairo	west somid, district 4, block 19/15, villa 4, 6th of october	327	+20	1	4	1
313	Youssef Shaker	01098872271	Egypt	Cairo	58 Baron City, El Khalifa	328	+20	32	58	3
314	khled khled	01157968553	Egypt	new cairo	aaaaa	329	+20	1	1	1
315	ahmed khattab	01009947991	Egypt	Cairo	west somid, district 4, block 19/15, villa 4, 6th of october	330	+20	1	4	1
316	karim kandil	01121135548	Egypt	Cairo	8 MOHAMED YOUSSEF EL KADY - NASR CITY	331	+20	6	8	3
\.


--
-- Data for Name: order_orderitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_orderitem (id, product_title_en, product_image, quantity, price, status, order_id, product_title_ar, product_uuid, product_item_title, product_item_type, product_item_weight, product_item_id) FROM stdin;
542	Mitex Serrated Straight Elevator	product/Mitex Serrated Straight Elevator/Mitex_serrated_straight_elevator.jpeg	1	250	Ordered	293	\N	0c204162-1302-4b04-a189-517f1ad78561	\N	\N	1	\N
543	Dream Condenser	product/Dream Condenser/Dream_condenser.jpeg	1	40	Ordered	294	\N	b4d4a5a0-3bb9-4155-9372-e442e2622f80	\N	\N	0.450000000000000011	\N
544	PERFIT set (B)	product/PERFIT set (B)/Set_B.jpeg	1	1600	Ordered	294	\N	67ed33bc-6de3-40ff-8c01-a88382b17aa2	\N	\N	1.27499999999999991	\N
547	Endo 1	product/Endo 1/荡洗器_ENDO_1_啄木鸟英文单页_190304.png	1	9150	Ordered	296	\N	042d2ad5-c4db-4dda-9b20-c9edd306b227	\N	\N	0.770000000000000018	\N
548	Dream Condenser	product/Dream Condenser/Dream_condenser.jpeg	1	40	Ordered	297	\N	b4d4a5a0-3bb9-4155-9372-e442e2622f80	\N	\N	0.450000000000000011	\N
549	PERFIT set (B)	product/PERFIT set (B)/Set_B.jpeg	1	1600	Ordered	297	\N	67ed33bc-6de3-40ff-8c01-a88382b17aa2	\N	\N	1.27499999999999991	\N
550	Dream Condenser	product/Dream Condenser/Dream_condenser.jpeg	1	40	Ordered	298	\N	b4d4a5a0-3bb9-4155-9372-e442e2622f80	\N	\N	0.450000000000000011	\N
551	PERFIT set (B)	product/PERFIT set (B)/Set_B.jpeg	1	1600	Ordered	298	\N	67ed33bc-6de3-40ff-8c01-a88382b17aa2	\N	\N	1.27499999999999991	\N
552	Apex Blue	product/Apex Blue/Apex_Blue.jpeg	1	6000	Ordered	299	\N	07368b73-d58c-4720-8933-f8429a60da3d	\N	\N	0.689999999999999947	\N
553	Dream Condenser	product/Dream Condenser/Dream_condenser.jpeg	1	40	Ordered	300	\N	b4d4a5a0-3bb9-4155-9372-e442e2622f80	\N	\N	0.450000000000000011	\N
554	PERFIT set (B)	product/PERFIT set (B)/Set_B.jpeg	1	1600	Ordered	300	\N	67ed33bc-6de3-40ff-8c01-a88382b17aa2	\N	\N	1.27499999999999991	\N
555	Apex Blue	product/Apex Blue/Apex_Blue.jpeg	1	6000	Ordered	301	\N	07368b73-d58c-4720-8933-f8429a60da3d	\N	\N	0.689999999999999947	\N
556	Apex Blue	product/Apex Blue/Apex_Blue.jpeg	1	6000	Ordered	302	\N	07368b73-d58c-4720-8933-f8429a60da3d	\N	\N	0.689999999999999947	\N
557	Dream Condenser	product/Dream Condenser/Dream_condenser.jpeg	1	40	Ordered	303	\N	b4d4a5a0-3bb9-4155-9372-e442e2622f80	\N	\N	0.450000000000000011	\N
558	PERFIT set (B)	product/PERFIT set (B)/Set_B.jpeg	1	1600	Ordered	303	\N	67ed33bc-6de3-40ff-8c01-a88382b17aa2	\N	\N	1.27499999999999991	\N
559	Apex Blue	product/Apex Blue/Apex_Blue.jpeg	1	6000	Ordered	304	\N	07368b73-d58c-4720-8933-f8429a60da3d	\N	\N	0.689999999999999947	\N
560	Dream Condenser	product/Dream Condenser/Dream_condenser.jpeg	1	40	Ordered	305	\N	b4d4a5a0-3bb9-4155-9372-e442e2622f80	\N	\N	0.450000000000000011	\N
561	PERFIT set (B)	product/PERFIT set (B)/Set_B.jpeg	1	1600	Ordered	305	\N	67ed33bc-6de3-40ff-8c01-a88382b17aa2	\N	\N	1.27499999999999991	\N
562	Apex Blue	product/Apex Blue/Apex_Blue.jpeg	1	6000	Ordered	306	\N	07368b73-d58c-4720-8933-f8429a60da3d	\N	\N	0.689999999999999947	\N
563	Endo 1	product/Endo 1/荡洗器_ENDO_1_啄木鸟英文单页_190304.png	1	9150	Ordered	307	\N	042d2ad5-c4db-4dda-9b20-c9edd306b227	\N	\N	0.770000000000000018	\N
564	Ultra-Etch	product/Ultra-Etch/Ultra_Etch_1.jpeg	1	220	Refund Requested	308	\N	16e91f84-28c5-4520-8f97-4bcb856c6d66	\N	\N	0.299999999999999989	\N
565	EndoEze Irrigator tips	product/EndoEze Irrigator tips/Endo-Eze_Irrigator_Tip.png	1	37	Refund Requested	308	\N	141f2ff2-d24b-4722-b023-7ed84a1211ca	\N	\N	0.100000000000000006	\N
566	Sof-Tray classic sheets 1 ml pack	product/Sof-Tray classic sheets 1 ml/Sof-Tray_Classic_Sheets_5.png	1	1750	Ordered	309	\N	c33c46ec-7ddc-446d-863b-040a2569befc	\N	\N	0.395000000000000018	\N
567	Sof-Tray classic sheets 1 ml pack	product/Sof-Tray classic sheets 1 ml/Sof-Tray_Classic_Sheets_5.png	1	1750	Ordered	310	\N	c33c46ec-7ddc-446d-863b-040a2569befc	\N	\N	0.395000000000000018	\N
568	PT-A	product/PT-A/PT-A_3.png	1	128700	Ordered	311	\N	02ffb0de-2d99-46a5-86ab-26493f8528bc	\N	\N	19.9600000000000009	\N
569	PT-A	product/PT-A/PT-A_3.png	1	128700	Ordered	312	\N	02ffb0de-2d99-46a5-86ab-26493f8528bc	\N	\N	19.9600000000000009	\N
570	PT-A	product/PT-A/PT-A_3.png	1	128700	Ordered	313	\N	02ffb0de-2d99-46a5-86ab-26493f8528bc	\N	\N	19.9600000000000009	\N
571	PT-A	product/PT-A/PT-A_3.png	1	128700	Ordered	314	\N	02ffb0de-2d99-46a5-86ab-26493f8528bc	\N	\N	19.9600000000000009	\N
572	PT-A	product/PT-A/PT-A_3.png	1	128700	Ordered	315	\N	02ffb0de-2d99-46a5-86ab-26493f8528bc	\N	\N	19.9600000000000009	\N
573	PT-A	product/PT-A/PT-A_3.png	1	128700	Ordered	316	PT-A	02ffb0de-2d99-46a5-86ab-26493f8528bc	\N	\N	19.9600000000000009	\N
574	Endo 1	product/Endo 1/荡洗器_ENDO_1_啄木鸟英文单页_190304.png	1	9150	Ordered	317	Endo 1	042d2ad5-c4db-4dda-9b20-c9edd306b227	\N	\N	0.770000000000000018	\N
575	PT-A	product/PT-A/PT-A_3.png	1	128700	Ordered	318	\N	02ffb0de-2d99-46a5-86ab-26493f8528bc	\N	\N	19.9600000000000009	\N
576	PT-A	product/PT-A/PT-A_3.png	1	128700	Ordered	319	\N	02ffb0de-2d99-46a5-86ab-26493f8528bc	\N	\N	19.9600000000000009	\N
577	PT-A	product/PT-A/PT-A_3.png	1	128700	Ordered	320	\N	02ffb0de-2d99-46a5-86ab-26493f8528bc	\N	\N	19.9600000000000009	\N
578	Mitex Tweezer Without Lock	product/Mitex Tweezer Without Lock/Mitex_tweezer_without_lock_1.jpeg	6	90	Ordered	321	\N	08100b85-8b18-4e30-9a0b-f82d9941f3a2	\N	\N	0.349999999999999978	\N
579	Mitex Tweezer Without Lock	product/Mitex Tweezer Without Lock/Mitex_tweezer_without_lock_1.jpeg	6	90	Ordered	322	\N	08100b85-8b18-4e30-9a0b-f82d9941f3a2	\N	\N	0.349999999999999978	\N
580	Mitex Tweezer Without Lock	product/Mitex Tweezer Without Lock/Mitex_tweezer_without_lock_1.jpeg	5	90	Ordered	323	\N	08100b85-8b18-4e30-9a0b-f82d9941f3a2	\N	\N	0.349999999999999978	\N
581	PT-A	product/PT-A/PT-A_3.png	1	128700	Ordered	324	\N	02ffb0de-2d99-46a5-86ab-26493f8528bc	\N	\N	19.9600000000000009	\N
582	Led-F	product/Led-F/1_XIpge6k.png	1	5900	Ordered	324	\N	0d2091b5-aecc-4346-9230-8692fb4a6258	\N	\N	0.964999999999999969	\N
583	PT-A	product/PT-A/PT-A_3.png	1	128700	Ordered	325	\N	02ffb0de-2d99-46a5-86ab-26493f8528bc	\N	\N	19.9600000000000009	\N
584	PT-A	product/PT-A/PT-A_3.png	1	128700	Ordered	326	\N	02ffb0de-2d99-46a5-86ab-26493f8528bc	\N	\N	19.9600000000000009	\N
585	Ultra-Etch	product/Ultra-Etch/Ultra_Etch_1.jpeg	1	220	Ordered	327	\N	16e91f84-28c5-4520-8f97-4bcb856c6d66	\N	\N	0.299999999999999989	\N
586	PT-A	product/PT-A/PT-A_3.png	3	128700	Ordered	328	\N	02ffb0de-2d99-46a5-86ab-26493f8528bc	\N	\N	19.9600000000000009	\N
587	Mitex Egg Burnisher	product/Mitex Egg Burnisher/Mitex_egg_burnisher.jpeg	71	70	Ordered	328	\N	09865735-20dd-4dac-8b4c-bca2db20ee22	\N	\N	0.349999999999999978	\N
588	Mitex Egg Burnisher	product/Mitex Egg Burnisher/Mitex_egg_burnisher.jpeg	12	70	Ordered	329	\N	09865735-20dd-4dac-8b4c-bca2db20ee22	\N	\N	0.349999999999999978	\N
589	Mitex Serrated Straight Elevator	product/Mitex Serrated Straight Elevator/Mitex_serrated_straight_elevator.jpeg	18	250	Ordered	329	\N	0c204162-1302-4b04-a189-517f1ad78561	\N	\N	1	\N
590	Mitex High Quality Osteotome Kit 6 Pcs	product/Mitex High Quality Osteotome Kit 6 Pcs/Mitex_HQ_osteotome_kit_6_pcs.jpeg	20	6000	Ordered	329	\N	1bac82fa-09fc-4380-bb67-c1bf1527b2de	\N	\N	0.550000000000000044	\N
591	Ultra-Etch	product/Ultra-Etch/Ultra_Etch_1.jpeg	1	220	Ordered	330	\N	16e91f84-28c5-4520-8f97-4bcb856c6d66	\N	\N	0.299999999999999989	\N
592	UltraPak Cord	product/UltraPack cord/Ultrapak-cord-group_TM-highdef.jpeg	1	790	Ordered	331	\N	10c5f969-8707-4049-a1c8-6c02bd0b08c0	#0	Size	0.299999999999999989	44
593	Led-F	product/Led-F/1_XIpge6k.png	1	5900	Ordered	331	\N	0d2091b5-aecc-4346-9230-8692fb4a6258	\N	\N	0.964999999999999969	\N
\.


--
-- Data for Name: order_refund; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_refund (id, created, modified, reason, order_id) FROM stdin;
58	2024-05-18 10:14:54.945119+00	2024-05-19 07:49:35.968539+00	\N	308
\.


--
-- Data for Name: order_refunditem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_refunditem (id, requested_quantity, refunded_quantity, reason, to_refund_quantity, order_item_id, refund_id) FROM stdin;
77	1	0	Doesn't need it anymore	0	564	58
76	1	0	Doesn't need it anymore	0	565	58
\.


--
-- Data for Name: product_branch; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_branch (id, name, type_id, image) FROM stdin;
9	Steam Sterilizers	11	
10	Cosmetics	12	
11	Periodontics	11	
12	Endodontics	11	
13	Air Purifiers and thermometers	11	
14	Fixed Prosthodontics	12	
15	Radiology	11	
16	Laser	11	
17	Others	11	
21	Tissue management	12	
22	purifiers	11	
19	preparation	12	
8	Operative	11	
20	whitening	12	
23	Surgical	13	
\.


--
-- Data for Name: product_brand; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_brand (id, name, image) FROM stdin;
4	Woson	\N
5	Philips Zoom	\N
6	Vericom	
7	Ultradent	
8	Renhe	
3	Woodpecker	brand/Woodpecker/WP_logo_6CFRKG6_1.png
9	Dream	
10	Mitex	
11	Mitex High Quality	
12	Fengdan	
13	HUGE	
14	TST	
\.


--
-- Data for Name: product_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_product (id, title, description, price, sale_price, stock, rate, is_archived, created_at, branch_id, brand_id, sub_branch_id, type_id, product_item_title, number_of_boxes, weight) FROM stdin;
f6033476-e780-4579-849e-79249898c646	Dream Elevator EPXO	Dream Elevator EPXO	150	0	20	3	f	2023-06-25 08:45:31.158949+00	23	9	51	13	\N	1	0.149999999999999994
bbacf9b0-9f84-4680-b2c5-830feda86cfe	Permaseal	-PermaSeal composite sealer is a light-cured, methacrylate-based, unfilled resin. Its low viscosity allows excellent penetration, and the ultrathin layer minimizes the need for occlusal adjustment.\r\n-Bonds to composite and etched enamel\r\n-Seals microcracks and strengthens restorations\r\n-Protects and revitalizes composite restorations\r\n-Certified gluten free	975	0	10	3	f	2023-06-07 11:11:21.012339+00	8	7	44	12	\N	1	0.200000000000000011
344b0ada-ad4a-44d0-8926-45747d63fc3d	QL2028I	-Full Functioning control panel \r\n\r\n-Light arm : Aluminum-Alloy material, Flexible movement and stable positioning \r\n\r\n-Multi functioning foot pedal \r\n\r\n-Led sensor light with yellow and white light mix \r\n\r\n-Rotary glass cuspidor \r\n\r\n-Hanging delivery tray\r\n\r\n-	134500	0	10	3	f	2024-05-08 13:28:58.558531+00	17	12	67	11	Color	1	217
3f109677-dbe7-419a-8538-e7b7eda4b4f5	U Veneer Extra Kit	-Uveneer Extra templates expand on the original Uveneer system, offering an innovative new esthetic in a wider variety of sizes for more versatility and less finishing time.\r\n-Creates predictable, reproducible, natural-looking composite restorations\r\n-Prevents the oxygen inhibition layer during curing, resulting in a hard, glossy surface\r\n-Allows light to pass through the template to the composite for effective curing\r\n-Works with any preferred composite\r\n-Releases easily from cured composite resin\r\n-Requires minimal adjusting or polishing, saving time\r\n-Facilitates application on individual or multiple teeth\r\n-Autoclavable and reusable, making it a cost-effective choice\r\n-Uveneer Extra templates offer additional sizes for more patients, including Extra Large, Large, Medium, and Square	34400	0	1	3	f	2023-06-10 19:09:02.066848+00	8	7	19	12	\N	1	0.320000000000000007
58ca7c3c-7822-47ca-b73e-62fea5e6e07e	Viscostat	-Causes profound hemostasis\r\n-Stops bleeding in seconds, saving chair time\r\n-Provides unsurpassed kindness to hard and soft tissues\r\n-Eliminates sulcular fluid contamination for optimal bonding\r\n-Decreases costly impression remakes\r\n-Certified gluten free	425	0	5	5	f	2023-05-25 11:08:10.309816+00	21	7	34	12	\N	1	0.349999999999999978
91a103f0-ac9f-46fc-9512-10fdb6b92fc4	Black Micro Fx Tip	-Accommodates various viscosities\r\n-Flocked tip fans out to spread materials in a thin, uniform layer\r\n-22 ga tip\r\n-Single-use only	45	0	5	3	f	2023-06-10 18:22:41.848364+00	17	7	43	12	\N	1	0.100000000000000006
c381faaa-2d04-4727-9ff7-aa50315f6b8e	Ultradent L.C Block Out Resin	-Ultradent™ LC Block-Out Resin provides reservoir space for whitening trays and so much more\r\n-Low viscosity for easy flow\r\n-Blue pigment for easy visibility\r\n-Great utility resin with numerous uses\r\n-Certified gluten free	350	0	5	3	f	2023-06-07 10:40:15.087899+00	20	7	40	12	\N	1	0.100000000000000006
bc06f090-897b-43d1-93d1-57a8399352bb	Skini Syringe	-Generates pressure in the syringe with low force to the plunger, resulting in more precise -apical delivery\r\n-Low waste\r\n-Content: 0.5 ml	33	0	5	3	f	2023-06-10 18:28:33.658829+00	12	7	44	12	\N	1	1
f4ebe4bc-c559-4aa4-b6cc-48fd7fa8bc66	Viscostat Clear indispense	-Clear hemostatic gel is recommended for anterior restorations because it quickly eliminates minor bleeding without leaving any residue\r\n-stops all minor intraoral bleeding, but designed specifically for the esthetic zone\r\n-Transparent gel leaves no residue and rinses off with ease\r\n-Convenient direct delivery eliminates waste\r\n-Non-drip gel is viscous yet spreadable\r\n-Does not interfere with bonding1\r\n-Certified gluten free	3950	0	2	3	f	2023-06-08 11:13:31.306945+00	21	7	34	12	\N	1	0.800000000000000044
038e714d-6a4d-444a-9129-fc87231c1f7a	Wodo A2	-Maximized performance for the professional and comfort for the patient.\r\n\r\n-Chair with 3 programmable working positions that automate the set’s performance.\r\n\r\n-Seat-back up-down movements, return to zero and Trendelenburg anti-collapse position activated by electronic controls and ergonomic joystick pedal on the base of the chair.\r\n\r\n-Stop-system safety device that protects the patient from involuntary movements of the chair during procedures with high or low rotation.  \r\n\r\n-Electronic controls on the equipment and auxiliary unit for all movements and functions of the set.\r\nChair pedal for adjusting seat and back positions, zero return and Trendelenburg anti-collapse.\r\n\r\n-Pneumatic pedal adheres to the floor with progressive activation of the tips, key that cuts or releases water and button that activates an air jet to dry the oral cavity.\r\n\r\n-As standard, it comes with A2 version equipment, large work tray, negatoscope and PAD with electronic control of all chair functions, equipment, assistant unit and reflector.\r\n\r\n-Assistant auxiliary unit with 2 venturi suckers, also compatible with high-power suction, triple syringe and free terminal for optional fourth tip, electronic function control and water heater boiler in the cup holder.\r\n\r\n-Equipped with a multifaceted shadowless natural LED light reflector, side handles and switches, on-off sensor and minimum, medium and maximum intensity adjustment.\r\n\r\n-Comes with a finely finished metal base stool and adjustments for seat height and backrest approximation and retraction.\r\n\r\n-Composition of the Wodo Classic set: chair, equipment, auxiliary unit, reflector and stool.	145000	0	7	3	f	2024-05-08 12:18:21.005467+00	17	4	67	11	color	1	386
3e47d619-a402-437f-88c4-6a6a21543682	Prop Gard Ref	-Prop Gard mouth prop’s wedge design prevents contamination from tongue and mouth closure and also helps protect the tongue from trauma.\r\n-Use soft when some jaw relief is needed\r\n-Use firm when optimal opening needs to be maintained	105	0	5	3	f	2023-06-10 18:33:10.427587+00	19	7	46	12	\N	1	0.130000000000000004
7faa53b5-945e-403c-a25d-077e7df0626f	Jiffy Polisher cups 20pk	-Excellent for contouring, finishing, and polishing composites.\r\n-Polishing cups feature a flared, flexible, thin wall design ideal for polishing near gingiva,labial surfaces, and easily covers all tooth surfaces\r\n-Features unique polishing brushes that facilitate unsurpassed polishing\r\n-Unique disk shape gives you leverage on working surfaces\r\n-Autoclavable	2275	0	1	3	f	2023-06-08 10:46:57.210351+00	8	7	36	13	\N	1	0.5
877bab2d-716a-458d-9f98-1b36a738223d	Iso Block	-IsoBlock disposable bite blocks relax the lips and cheeks, allowing full access to facial and buccal surfaces for in-office whitening, Class V restorations, veneers, ortho bracket cementation, and more.\r\n-Extremely comfortable\r\n-Provides bilateral support with tongue restraint	90	0	10	3	f	2023-06-07 10:56:13.398624+00	19	7	46	12	\N	1	0.5
c3f223f2-923d-41fd-aad8-a7edd3ce1e35	PermaFlo Pink	- PermaFlo Pink composite features a unique masking ability that provides an attractive solution for prevalent gingival recession.\r\n-Light-cured, radiopaque, methacrylate-based flowable composite\r\n-Average particle size is 1µm\r\n-Thixotropic\r\n-68% filled\r\n-Certified gluten free	900	0	2	3	f	2023-06-07 11:34:34.061502+00	8	7	18	12	\N	1	0.299999999999999989
c65297ad-8096-4a04-81ac-90a5f7c5c9d1	Opalescence Pocket Tray	-Opalescence Pocket Tray Cases can help your patients easily store and protect their custom whitening trays. \r\n-Protect custom whitening trays when not in use\r\n-Flat, pocket-sized design\r\n-Inside dimensions: 7.5 x 7 x 1.5 cm\r\n-Available in three colors: green,and blue	30	0	5	3	f	2023-06-07 11:14:08.103197+00	20	7	40	12	Colors	1	0.450000000000000011
e2de746a-d381-43d5-8c5d-4e158156777a	Opalescence PF 20%	-Opalescence teeth whitening gel contains PF (potassium nitrate and fluoride)\r\n-Opalescence whitening gel is made up of at least 20% water which helps prevent dehydration.\r\n-Day or night wear\r\n-Sticky, viscous gel won’t migrate to soft tissues and ensures tray stays securely in place\r\nVegan—no animal products used\r\n-Certified gluten free\r\n-Certified kosher	320	0	5	3	f	2023-06-10 18:18:30.297593+00	20	7	30	12	\N	1	0.349999999999999978
630aed6f-ecb6-49e4-8450-0f993720c5cc	U Veneer Template Ref.	-Creates predictable, reproducible, natural-looking composite restorations\r\n-Prevents the oxygen inhibition layer during curing, resulting in a hard, glossy surface\r\n-Allows light to pass through the template to the composite for effective curing\r\n-Works with any preferred composite\r\n-Releases easily from cured composite resin\r\n-Requires minimal adjusting or polishing, saving time\r\n-Facilitates application on individual or multiple teeth\r\n-Autoclavable and reusable, making it a cost-effective choice	1800	0	5	3	f	2023-06-10 19:04:32.421636+00	8	7	19	12	\N	1	1
5cb76719-aabd-4056-bccd-4d2dc49352a7	UltraEz	-Quickly treats sensitivity from tooth whitening, toothbrush abrasion, root exposure, and thermal and chemical changes\r\n- potassium nitrate and fluoride, which have been shown to help decrease sensitivity1\r\n-Can be used before and after whitening treatments\r\n-Vegan—no animal products\r\n-Certified gluten free\r\n-Certified kosher	455	0	10	3	f	2023-06-07 11:37:55.329933+00	20	7	8	12	\N	1	0.25
79b5c943-441a-4074-a96b-644702352d36	Porcelain Etch	-Porcelain Etch is used to etch porcelain veneers, crowns, bridges, inlays, onlays, and fractured dental porcelain\r\n-Porcelain Etch is a viscous, buffered 9% hydrofluoric acid\r\n-Etch is easy to control and place\r\n-Will not stain composite or resin cement\r\n-Certified gluten free	850	0	10	3	f	2023-06-07 11:01:11.699355+00	14	7	16	12	\N	1	0.200000000000000011
e1699a31-8ba1-4ebc-87df-cc471b5fb1a0	Silane	-Silane used with Porcelain Etch and a quality bonding resin, yields the highest bond strength to porcelain\r\n-Silane is a single-component solution\r\n-Yields highest porcelain-to-resin bond strengths\r\n-Certified gluten free	475	0	10	3	f	2023-06-07 11:04:09.154404+00	14	7	42	12	\N	1	0.200000000000000011
f15092bf-fc31-446d-9822-d843a9d684b5	Black Micro Tip	-Provides pinpoint precision\r\n-Narrow cannula accurately delivers materials\r\n-22 ga cannula\r\n-Single-use only	18	0	5	3	f	2023-06-10 18:20:51.098709+00	17	7	43	12	\N	1	0.100000000000000006
ebf165fd-f821-4212-83b2-d9497392c468	Apex Gold Plus III	-Dual Function\r\n-Sixth Generation\r\n-Accuracy 97%\r\n-Battery 750 mAh\r\n\r\nThe main technical specifications:\r\n-Battery: 3.6V/750mAh \r\n-Adapter: ~100V-240V 50Hz/60Hz\r\n-Consumption power: ≤0.5W\r\n-Screen: 4.5’’ LCD\r\n-Buzzer alert: The buzzer will alert when the endo file is less than 2mm to  4the apex. \r\n-Operation condition a) Environment temperature: +5℃～+40℃\r\nb) Relative humidity: 30% ~75%. c)\r\n-Atmosphere pressure: 70kPa～106kPa	10400	0	21	5	f	2023-05-22 08:31:53.473764+00	12	3	12	11	\N	1	0.880000000000000004
07368b73-d58c-4720-8933-f8429a60da3d	Apex Blue	-Fourth generation\r\n-High quality screen\r\n-Accuracy 97%\r\n-Battery 750 mAh\r\n-Most Economical Device	6000	0	0	5	f	2023-05-22 08:23:43.347308+00	12	3	12	11	\N	1	0.689999999999999947
e2bfb134-5da4-452a-a70d-d55cccb82bd0	MotoPex	-First brushless endomotor\r\n-High durability\r\n-Built in Apex locator\r\n-Silent motor\r\n-360 degrees rotatable contra-angle\r\n-Lithium battery of 2000 mAh\r\n\r\nPrimary technical parameters:\r\n-Output: DC5V/1A\r\n-Torque rang: 0.4Ncm-5.0Ncm（4mNm ~ 50mNm）\r\n-Speed rang: 100rpm~1200rpm\r\n-Wireless charging(only for Ai-Motor)  Frequency range: 112-205KHz   \r\n-Maximum RF output power of the product: 9.46dBuA/m@3m	30400	0	20	3	f	2023-05-22 09:52:32.535945+00	12	3	14	11	\N	1	0.895000000000000018
141f2ff2-d24b-4722-b023-7ed84a1211ca	EndoEze Irrigator tips	-Great for endodontic procedures\r\n-Flexible, strong cannulae\r\n-Bend easily\r\n-Single-use only	37	0	4	3	f	2023-06-07 10:15:39.008942+00	12	7	43	12	\N	1	0.100000000000000006
042d2ad5-c4db-4dda-9b20-c9edd306b227	Endo 1	-Activation and Irrigation of the root canal.\r\n-It has 3 tips: E93, E96 and E98.\r\n-Detachable handpiece head\r\n-intelligent micro computer automatic control \r\n\r\nBasic Technical Specifications\r\n\r\n-Dimensions: 246mm×25mm×25mm\r\n-Net weight: 99g\r\n-Capacity: 750mAh\r\n-Power adapter: \r\n-Input: ~100V-240V 50Hz/60Hz 0.5-0.2A \r\nOutput: DC 5V/1A Build-in fuse: T1A 250V	9150	0	0	5	f	2023-05-22 13:52:26.611481+00	12	3	24	11	\N	1	0.770000000000000018
f20d3aff-3d7a-4a65-8b57-ad141a13b32b	Endo Gold	-Speed 100 rpm to 1200 rpm\r\n-Torque up to 5 N/cm\r\n-The Endo Gold is the most economic of its family	12200	0	20	5	f	2023-05-22 08:55:21.287405+00	12	3	13	11	\N	1	0.839999999999999969
683de5a1-7d57-4438-b63f-aedf8e03d376	Ai-Motor	-Brushless Endomotor\r\n-Built in apex locator\r\n-wireless charging\r\n\r\nPrimary technical parameters:\r\n-Battery :Lithium battery in motor handpiece: 3.7V /2000mAh\r\n-Power adapter (Model: ADS-6AM-06N 05050/UE08WCP- 050100SPA) \r\n-Input: ~100V-240V 50Hz/60Hz 0.4A Max \r\n-Output: DC5V/1A\r\n-Torque rang: 0.4Ncm-5.0Ncm（4mNm ~ 50mNm）\r\n-Speed rang: 100rpm~1200rpm\r\n-Wireless charging(only for Ai-Motor)  Frequency range: 112-205KHz   \r\n-Maximum RF output power of the product: 9.46dBuA/m@3m	42000	0	20	5	f	2023-05-22 12:48:06.498503+00	12	3	14	11	\N	1	0.885000000000000009
8e712346-8c8b-4b20-bcb1-03ccfc0e00ea	King Kong (German Bearings)	-German Bearings\r\n-Anti-Drop Contra-Angle\r\n-Push button Contra-Angle	4750	0	20	5	f	2023-05-22 16:40:51.472932+00	8	3	5	11	\N	1	0.170000000000000012
9d8c389c-2813-4dd5-9116-1ea2697fbf34	Anteaus	-Cutting force 94.6%\r\n-Torque up to 7.5 gf.cm	4500	0	20	5	f	2023-05-22 16:42:56.554587+00	8	3	5	11	\N	1	0.154999999999999999
d8df3e11-b619-47ba-847b-34ae8b29c9f5	i-Scan	-Powerful processing capability (8 core CP)\r\n-Ultra high resolution captive touch screen\r\n-Powerful Algorithm (Enhances details)\r\n-Powerful software ( 8 core CPU )\r\n-Ultra-thin and flexible plates ( 0.4 mm )\r\n\r\nPrimary technical parameters:\r\n-Environment temperature: 5℃ ~ 40℃\r\n-Relative humidity: 30% ~ 75%\r\n-Atmospheric pressure: 70kPa ~ 106kPa\r\n\r\nOperation environment:\r\n-Environment temperature: 5℃ ~ 40℃\r\n-Relative humidity: 30% ~ 75%\r\n-Atmospheric pressure: 70kPa ~ 106kPa	210000	0	20	5	f	2023-05-22 16:20:27.93888+00	15	3	27	11	\N	1	10.7449999999999992
3a48b362-1765-408a-a61d-4ca37b0b840f	Permashade Translucent	-Medium viscosity keeps veneer from drifting prior to cure\r\n-Use for porcelain, zirconia, composite, and other indirect veneers\r\n-Upon curing, low shrinkage stress prevents strain on the veneer1\r\n-Available in four VITA shade options: Translucent, Opaque White, A2, and B1	785	0	5	5	f	2023-05-25 12:22:24.267408+00	14	7	15	12	\N	1	0.149999999999999994
71ee3003-0bb0-4daa-b25b-a14480c6d316	Diamond Polish Mint	-High-grade white microcrystalline diamond particles\r\n-Unsurpassed esthetic polish\r\n-Ideal for porcelain or composite restorations\r\n-Mint flavored\r\n-Certified gluten free	1050	0	5	5	f	2023-05-25 09:29:13.583702+00	17	7	28	12	Mint flavor	1	0.25
79c34e7b-35e7-48ea-bf99-e50a83395a57	Seek caries indicator	-Stains demineralized dentin\r\n-Provides precise, mess-free delivery\r\n-Available in dark green for working near pulp\r\n-Certified gluten free	420	0	10	5	f	2023-05-25 10:30:39.781034+00	19	7	32	12	\N	1	0.5
7a1bd1f9-e7f1-45c3-b98e-7f805379083d	Sable seek	-Stains demineralized dentin\r\n-Provides precise, mess-free delivery\r\n-Available in dark green for working near pulp\r\n-Certified gluten free	420	0	10	5	f	2023-05-25 10:26:17.018847+00	19	7	32	12	\N	1	0.200000000000000011
b28a8793-e9d0-4347-b694-07ad41f51069	UltraPak E Cord	-Ultrapak cord is made of 100% cotton, knitted into thousands of tiny loops to form long, interlocking chains.\r\n-The original—and smallest—knitted cord\r\n-Provides rapid tissue displacement, detailed margins, and quality impressions\r\n-Facilitates easy packing and stays placed better than any twisted or braided cord\r\n-Compresses upon packing then expands for optimal retraction\r\n-Does not entangle in diamond bur\r\n-Bright colors facilitate easy location and removal\r\n-Available with or without epinephrine*\r\n-High carbon steel blade ensures a clean cut\r\n-Thin plastic gate prevents cord from falling into the bottle upon cutting\r\n-Ruler printed on label provides easy cord measurement	990	0	15	3	f	2023-06-11 12:56:21.146713+00	19	7	47	12	Size	1	0.349999999999999978
96b49989-4417-41ef-b92c-56c3fb4ff5c8	Omni Matrix	-Innovative shape allows superior procedural visibility and patient comfort\r\n-Ultra-thin burnishable stainless steel adapts to all preparations\r\n-Unique winged and wingless styles meet individual case needs\r\n-Disposable design saves you time and money\r\n-Available in stainless steel and mylar	80	0	8	5	f	2023-05-25 09:49:35.770994+00	19	7	29	13	\N	1	0.5
dd9bb348-8a3a-4537-93ad-d8dadfadea9d	Opalescence Endo	-35% hydrogen peroxide\r\n-Easy to place inside pulp chamber\r\n-1–5 day treatment\r\n-Certified gluten free\r\n-Certified kosher	1100	0	5	5	f	2023-05-25 09:58:12.845692+00	20	7	8	12	\N	1	0.450000000000000011
b0b8a4f7-2d77-4818-82d5-f62641287601	Omni Matrix kit/48	-Innovative shape allows superior procedural visibility and patient comfort\r\n-Ultra-thin burnishable stainless steel adapts to all preparations\r\n-Unique winged and wingless styles meet individual case needs\r\n-Disposable design saves you time and money\r\n-Available in stainless steel and mylar	4025	0	30	3	f	2023-05-25 09:52:16.034408+00	19	7	29	13	\N	1	1
dfe5c687-7434-4aad-8b7d-7d292eb5d245	UltraCal XS	-UltraCal XS paste elevates the dentin pH to alkaline, making it the ideal medium to be used as an interappointment dressing in clinical situations \r\n-Radiopaque\r\n-High pH\r\n-Superior at delivery control\r\n-Certified gluten free	460	0	8	3	f	2023-05-25 10:48:13.073925+00	12	7	33	12	\N	1	0.25
ee138c5a-d287-44be-9b20-ba8bdc213dcd	Opalescence Boost	-Chemically activated, so no light is needed\r\n-Powerful 40% hydrogen peroxide gel\r\n-Opalescence teeth whitening gel contains PF (potassium nitrate and fluoride)\r\n-Fresh chemical for each application\r\n-Precise delivery\r\n-Easy to see for complete removal\r\n-Two to three 20-minute applications\r\n-Thicker formula prevents the gel from running\r\n-No refrigeration required prior to mixing\r\n-Vegan—no animal products\r\n-Certified gluten free	2750	0	10	5	f	2023-05-25 10:03:53.532079+00	20	7	31	12	\N	1	0.450000000000000011
ef8ed366-4704-490a-9231-bbca77053143	PermaFlo A2	-PermaFlo flowable composite is light-cured, radiopaque and methacrylate-based\r\n-High-fill, high-flow formula\r\n-Highly radiopaque\r\n-Fluoride-releasing formulation\r\n-Superior polishability\r\n-Strong and wear resistant\r\n-Certified gluten free	1155	0	2	3	f	2023-06-07 11:29:55.273816+00	8	7	18	12	\N	1	0.25
baedc9b4-d471-4195-8772-af0e7afd36ff	Dream Amalgam Carrier	Dream Amalgam Carrier	100	0	20	3	f	2023-06-25 09:01:31.280655+00	8	9	52	13	\N	1	0.110000000000000001
72b805d2-12f5-4606-887d-c97175e7abba	U600	-Smart touch system\r\n-Waterproof design\r\n-Effective and thorough endodontic irrigation\r\n-Automatic water supply system\r\n-5 tips along with  1 irrigation tip\r\n-Mode: Scaling, Perio & Endo\r\n\r\nPrimary technical parameters:\r\n-Main unit input: 220-240V~ 50Hz/60Hz 150mA \r\n-Output primary tip vibration excursion: ≤90μm\r\n-Output half-excursion force: <2N \r\n-Output tip vibration frequency: 28kHz±3kHz\r\n-Output power: 3W to 20W\r\n-Main unit fuse: T0.5AL 250V\r\n-Water pressure: 0.01MPa to 0.5MPa\r\n-Weight of main unit: 1.8kg	18500	0	20	5	f	2023-05-24 11:40:26.022786+00	11	3	10	11	\N	1	3.75499999999999989
c0e2f3d9-71df-4a35-9503-b63a86b34cae	Dream Mirror Hand	Dream Mirror Hand	40	0	20	3	f	2023-06-25 09:54:44.870672+00	8	9	54	13	\N	1	0.450000000000000011
e093e5f8-4513-49cc-b4f4-bb2996ec72e3	Dream Curved Root Fragment Forceps	Curved Root Fragment Forceps	350	0	0	3	f	2023-06-25 08:42:51.631467+00	23	9	50	13	\N	1	0.349999999999999978
f118bce2-7f85-46cf-8f77-a24568b2069b	Viscostat Clear	-Stops all minor intraoral bleeding, but designed specifically for the esthetic zone\r\n-Transparent gel leaves no residue and rinses off with ease\r\n-Convenient direct delivery eliminates waste\r\n-Non-drip gel is viscous yet spreadable\r\n-Does not interfere with bonding1\r\n-Certified gluten free	475	0	2	3	f	2023-05-25 10:53:33.569381+00	21	7	34	12	\N	1	0.165000000000000008
2fb8b9d9-68bf-4036-884e-6c7be7e4ae8e	Dream Plastic Filling Instrument	Dream Plastic Filling Instrument	40	0	20	3	f	2023-06-25 09:30:57.883493+00	8	9	52	13	\N	1	0.450000000000000011
d7c4a204-eb6b-4503-ac77-002f67200f9d	Dream conical Burnisher	Dream conical Burnisher	40	0	20	3	f	2023-06-25 09:27:37.675454+00	8	9	52	13	\N	1	0.450000000000000011
b3516012-b5b7-4ef9-a4ba-caea0c80d2a1	Dream Elevator kit 8 Pcs	Dream Elevator kit 8 Pcs	1100	0	20	3	f	2023-06-25 08:48:20.244369+00	23	9	51	13	\N	1	1.25
d836fe46-0be4-4832-834b-e2577ab2b67b	Dream Carver Hollen Back	Dream Carver Hollen Back	40	0	20	3	f	2023-06-25 09:23:58.06809+00	8	9	52	13	\N	1	0.450000000000000011
08e0a9ea-7a5a-47fc-9bc9-836db8dcf639	Sof-Tray Classic sheets 2ml pack	-Sof-Tray Classic Sheets are specifically designed to create custom-made whitening trays for patients interested in take-home whitening treatments.\r\n-Available in Regular, Medium, and Heavy thicknesses\r\n-Heavy (0.080") for severe bruxers' whitening trays	2510	0	2	5	f	2023-06-04 10:53:51.211904+00	19	7	40	12	\N	1	0.680000000000000049
50556a75-a48a-42fa-9027-a9ae100e6e0c	Sof-Tray Classic Sheets 1.5 ml Pack	-Sof-Tray Classic Sheets are specifically designed to create custom-made whitening trays for patients interested in take-home whitening treatments.\r\n\r\n-Medium (0.060") for bruxers’ whitening trays	2000	0	2	5	f	2023-06-04 10:52:07.226623+00	19	7	40	12	\N	1	0.530000000000000027
6a1c7ec4-1a7f-4593-b60f-6e965ee119d3	Opalustre	-One-appointment results\r\n-Removes superficial white and brown imperfections\r\n-Provides minimally invasive treatment for fluorosis\r\n-Hydrochloric acid aids in chemical stain removal\r\n-Silicon carbide microparticles provide gentle mechanical abrasion\r\n-Less than 0.2mm enamel removal\r\n-Comes in a direct delivery for an easy and mess-free technique\r\n-OpalCups minimize splatter\r\n-Unique offering is a “practice building” product\r\n-Certified gluten free	1810	0	10	3	f	2023-06-07 11:08:38.323092+00	20	7	49	12	\N	1	0.25
b16afcec-f233-43a0-a14e-426d0246f9c7	Enamelast 5% Sodium Fluoride Varnish	-Enamelast fluoride varnish is a xylitol-sweetened, 5% sodium fluoride in a resin carrier\r\n-Patented adhesion-promoting agent for enhanced retention\r\n-Superior fluoride release and uptake\r\n-Smooth, nongritty texture\r\n-Nearly invisible appearance\r\n-Nut free and gluten free	105	0	10	3	f	2023-06-07 10:12:27.348112+00	8	7	42	12	\N	1	0.149999999999999994
fcabd953-b618-4dd2-b0dc-06c2a55e2af5	Shade guide cards	-Arranged in shade value order to make whitening results easier to see\r\n-Hand-held and easy to use with areas to record initial and final shades\r\n-Though not a replacement for a traditional shade guide, a great way to help patients see the difference at home	30	0	5	3	f	2023-06-07 10:08:29.098968+00	17	7	41	12	\N	1	0.5
1e37104c-c6e6-43b6-97ee-30ad39ca33ad	Permaflo A3	-PermaFlo flowable composite is light-cured, radiopaque and methacrylate-based\r\n-High-fill, high-flow formula\r\n-Highly radiopaque\r\n-Fluoride-releasing formulation\r\n-Superior polishability\r\n-Strong and wear resistant\r\n-Certified gluten free	708	0	20	3	f	2023-06-07 11:31:06.690649+00	8	7	18	12	\N	1	1
43aed322-ae25-430f-b2ab-5ee9313ea10f	Dream Conical Carver	Dream Conical Carver	40	0	20	3	f	2023-06-25 09:29:43.585041+00	8	9	52	13	\N	1	0.450000000000000011
a1c4f9f3-72af-4b94-b110-b57f743bba20	I-Led	-Two modes: Normal mode & high mode\r\n-Maximum light intensity: 2300 mw/cm²\r\n-Suitable for Ortho brackets, porcelain veneers, & post care adhesives\r\n\r\nTechnical specifications\r\n-Dimensions: 25mm×25mm×240mm.\r\n-Net weight: 278g.\r\n-Power supply: rechargeable Lithium battery\r\n-Battery mode: ICR 18490\r\n-Battery voltage and capacity: 3.6V/ 1400mAh	4200	0	20	5	f	2023-06-06 18:50:33.414951+00	8	3	4	11	\N	1	0.834999999999999964
2fce73dc-c0f5-4d1b-865d-d601602a422e	Dream Ball Burnisher	Dream Ball Burnisher	40	0	20	3	f	2023-06-25 09:03:30.820562+00	8	9	52	13	\N	1	0.450000000000000011
c33c46ec-7ddc-446d-863b-040a2569befc	Sof-Tray classic sheets 1 ml pack	-Sof-Tray Classic Sheets are specifically designed to create custom-made whitening trays for patients interested in take-home whitening treatments.\r\n-Available in Regular, Medium, and Heavy thicknesses\r\n-Regular (0.035") for most whitening trays	1750	0	0	5	f	2023-06-04 10:50:22.546795+00	19	7	40	12	\N	1	0.395000000000000018
16e91f84-28c5-4520-8f97-4bcb856c6d66	Ultra-Etch	-Ultra-Etch etchant 35% phosphoric acid solution\r\n-Self-limiting on dentin\r\n-Penetrates smallest fissures and won’t run on a vertical surface\r\n-Precise placement\r\n-Etch and rinse\r\n-Rinses cleanly—leaves no residue	220	0	2	3	f	2023-06-07 10:05:40.350645+00	8	7	16	12	\N	1	0.299999999999999989
448cacdb-fd57-434f-89e0-35b8de702edf	Dream Luxator	Dream Luxator	150	0	20	3	f	2023-06-25 08:49:26.003516+00	23	9	51	13	\N	1	0.149999999999999994
8c84019c-2d5a-45f9-8453-9bd75c545ef3	Dream Curette	Dream Curette	40	0	20	3	f	2023-06-25 09:34:48.450043+00	23	9	53	13	\N	1	0.450000000000000011
b4d4a5a0-3bb9-4155-9372-e442e2622f80	Dream Condenser	Dream Condenser	40	0	14	3	f	2023-06-25 09:26:41.493791+00	8	9	52	13	\N	1	0.450000000000000011
b46b63c5-96c7-4493-90b7-59ea14077264	K-Led	-Automatic frequency tracking ensures that the machine always works on the best frequency and more steadily\r\n- Digitally controlled \r\n-Detachable hand piece\r\n- Led light\r\n\r\n​The main technical specifications:\r\n-Power supply input: 220 - 240V~ 50Hz/60Hz 150mA\r\n-Main unit input: 24V~ 50Hz/60Hz l.3A\r\n-Output primary tip Vibration excursion: ≤100μm\r\n-Output half_excursion force:<2N \r\n-Output tip Vibration frequency: 28kHz±3kHz\r\n-Output power: 3W to 20W \r\n-Main unit fuse: Tl.6AL 250V\r\n-Power supply fuse: T0.5AL 250V\r\n-Water pressure: 0.1bar to 5bar (0.01MPa to 0.5MPa) \r\n-Weight of main unit: 0.75kg \r\n-Weight of power supply: 1 kg\r\n-Operating mode: Continuous operation	7050	0	20	5	f	2023-06-05 14:16:26.39043+00	11	3	10	11	\N	1	2.79499999999999993
b65b3293-8434-4a66-9333-0775b074d432	Dream Probe	Dream Probe	40	0	20	3	f	2023-06-25 09:55:57.651845+00	8	9	54	13	\N	1	0.450000000000000011
5fae3560-899c-425a-a3b5-7a99f5882325	Dream Straight Elevator	Dream Straight Elevator	150	0	20	3	f	2023-06-25 08:52:16.033566+00	23	9	51	13	\N	1	0.149999999999999994
34f0e5cd-de60-40e0-87d9-8e96f4a8856a	Dream Root Fragment Forceps	Root Fragment Forceps	350	0	20	3	f	2023-06-25 08:43:48.025356+00	23	9	50	13	\N	1	0.349999999999999978
65e40683-fb89-4b6d-b0b7-fffa068fe0c7	Dream Hand Blade	Dream Hand Blade	40	0	20	3	f	2023-06-25 09:35:55.742193+00	23	9	53	13	\N	1	0.450000000000000011
6627b142-84c1-44be-9e29-e75847261117	Fischer's Ultrapak Packers (Regular)	-Thin edges and fine serrations sink into the cord, preventing it from slipping off and reducing the risk of cutting the gingival attachment.\r\n\r\n\r\n45° to handle: heads at 45° to the handle and three packing sides. Circular packing of the prep can be completed without the need to flip the instrument end to end. Use the small packer on lower anteriors and upper lateral incisors.\r\n\r\n\r\n90° and parallel to handle: Same size and three-sided heads as the 45º to handle packer, except one of the heads is in line with the shank and the other is at a right angle to the shank.	1750	0	2	5	f	2023-05-28 13:10:28.499161+00	11	7	35	13	Angle	1	0.400000000000000022
fc8a0b53-e04e-425b-b937-15f9da139fb5	Dream Tweezer	Dream Tweezer	50	0	20	3	f	2023-06-25 09:56:46.760239+00	8	9	54	13	\N	1	0.599999999999999978
0156529b-593c-4576-89e2-182b0e917839	i-Sensor size 1	-Optimized cut corners (Comfort)\r\n-Excellent Waterproof \r\n-Durable and reliable\r\n-APS CMOS Technology (Efficient information& detailed image)\r\n-BENDING TEST more than 8000 times\r\n-theoretical resolution 25 Lp/mm	42000	\N	0	5	f	2023-05-22 15:52:57.823542+00	15	3	20	11	\N	1	0.33500000000000002
0d2091b5-aecc-4346-9230-8692fb4a6258	Led-F	-Light meter attached \r\n-3 Working modes: Low, normal, & high\r\n-Built in fan to reduce heat\r\n\r\nTechnical specifications:\r\n-Adapter:  Input: AC100V~240V 50Hz/60Hz\r\n-Output: DC5V/1A\r\n-Applied part: Optical fiber\r\n-Light source:   High-power: LED blue light  \r\n-Wave length: 385nm-515nm\r\n -Light intensity: 1600mW/cm2 ~1800mW/cm2 \r\n-Working condition:  Environment temperature: +5℃ to +40℃\r\n-Relative humidity:30%~75%\r\n-Atmosphere pressure: 70kPa to106kPa\r\n-Dimension: 195mm×40mm×150mm\r\n-Net weight: 210g\r\n-Consume power: ≤8W	5900	0	14	5	f	2023-06-06 18:47:00.185772+00	8	3	4	11	\N	1	0.964999999999999969
12a5c096-dc52-4ecd-8620-159f8cb4aa5c	Fischer's Ultrapak Packers (Small)	-Thin edges and fine serrations sink into the cord, preventing it from slipping off and reducing the risk of cutting the gingival attachment.\r\n\r\n\r\n45° to handle: heads at 45° to the handle and three packing sides. Circular packing of the prep can be completed without the need to flip the instrument end to end. Use the small packer on lower anteriors and upper lateral incisors.\r\n\r\n\r\n90° and parallel to handle: Same size and three-sided heads as the 45º to handle packer, except one of the heads is in line with the shank and the other is at a right angle to the shank.	1500	0	5	5	f	2023-05-28 13:08:21.219822+00	11	7	35	13	Angle	1	0.400000000000000022
c7db66a0-5928-41fb-9ee4-05109395f38d	Q3	-Extremely effective in removing aerosols \r\n-An electric field of 20,000 to 40,000 volts can eradicate bacteria and viruses  from the surrounding area\r\n-TPA technology \r\n-14.6 Nanometer efficiency\r\n-Application area: 30-40 meters square\r\n-Fan speed levels: 4 speed levels	27500	0	20	5	f	2023-06-04 10:41:11.645936+00	22	3	39	11	\N	1	12.7799999999999994
ff132071-d6fd-461a-86ab-20efbc9e7e7e	Led Handpiece	-Handpiece with led light	4300	0	20	5	f	2023-05-28 11:36:00.154031+00	11	3	10	11	\N	1	0.599999999999999978
70575b1c-21d9-43d6-bd1d-f1ee00159f1e	Opal Dam	-Protects soft tissue with impervious seal\r\n-Removes easily\r\n-Applies directly\r\n-Certified gluten free	590	0	10	5	f	2023-05-29 09:13:50.496984+00	20	7	31	12	\N	1	0.200000000000000011
b517116b-f0a7-4f16-a6eb-ab4dbb1b65b0	Opal cup finishing	-Helps in stain remove	73	0	0	3	f	2023-05-29 09:06:22.852359+00	17	7	36	13	\N	1	1
ccb4ee02-42fa-409f-baf4-1f41890934c5	Opal cup bristle	-Helps in stains removal	165	0	0	3	f	2023-05-29 09:07:40.108304+00	17	7	36	13	\N	1	1
67ed33bc-6de3-40ff-8c01-a88382b17aa2	PERFIT set (B)	Set (B) package includes:\r\n-400g*1 Putty Base\r\n-400g*1 Putty Catalyst\r\n-2 Measuring Spoons\r\n-50ml*1 Light Body Bio-cartridge\r\n\r\nPERFIT Putty:\r\n-Normal Set \r\n-High viscosity vinyl polysiloxane impression material\r\n-Remarkable tear strength\r\n-Dimensional accuracy and excellent resistance to deformation\r\n-Mixing time: 30 seconds\r\n-Working time: 1 minute and 30 seconds\r\n-Setting time: 3 minutes \r\n\r\nPERFIT Light Body:\r\n\r\n-Normal Set\r\n-Low viscosity vinyl polysiloxane impression material with optimized thixotropy and hydrophilic properties\r\n-high accuracy in impressions.\r\n-Working time: 2 minutes and 15 seconds\r\n-Setting time: 3 minutes and 30 seconds	1600	0	0	3	f	2024-05-14 09:44:05.910067+00	14	13	70	12	\N	1	1.27499999999999991
bbb315fa-ceae-49c2-bb7c-65a4b0520566	U6/U600 Handpiece	-Ceramic \r\n-Handpiece with Led light	6750	0	20	3	f	2023-05-28 11:37:21.93155+00	11	3	10	11	\N	1	0.650000000000000022
e4893263-5574-472b-a061-07c182be01d2	i-scan barrier cover	-Barrier cover	740	0	40	5	f	2023-06-04 09:23:05.458268+00	15	3	38	11	size	1	0.5
fe087a36-5f72-4ccc-9cdc-8b56b6ccb7d2	i-Scan imaging plates (Size 2)	-ultra-thin and flexible plates ( 0.4 mm )\r\n- An imaging plate can be used more than 1000 times. It also has an	3800	0	20	5	f	2023-06-04 09:10:32.259601+00	15	3	37	11	\N	1	0.5
374ccb87-97cc-4742-81ee-2ad2e3d74c25	i-Scan Cardboard	-White protective board	740	0	40	3	f	2023-06-04 09:25:29.686718+00	15	3	38	11	size	1	0.5
078f8bb3-f4f2-4366-aa51-53cae0c9b49c	i-Scan Imaging Plate (size 1)	- Ultra-thin and flexible plates ( 0.4 mm ) \r\n- An imaging plate can be used  more than 1000 times.	3200	0	17	5	f	2023-06-04 09:08:37.735733+00	15	3	37	11	\N	1	0.5
50a58335-0faa-4b1b-b69a-d9474a049041	P-led	-Optical handpiece more convenient for clinical operation\r\n-Automatic frequency tracking\r\n-The handpiece is detachable and can be autoclaved\r\n-Digitally controlled\r\n-Detachable handpiece with light \r\n-No cracking or deformation under pressure	8425	0	18	3	f	2023-05-28 11:11:38.234765+00	11	3	10	11	\N	1	2.62999999999999989
bc5e478f-44b3-473a-a4d0-b8e0e11e0518	Q7	-Extremely effective in removing aerosols \r\n-An electric field of 20,000 to 40,000 volts can eradicate bacteria and viruses  from the surrounding area\r\n-TPA technology \r\n-14.6 Nanometer efficiency  \r\n-Application Area : 70:110 meters square\r\n-Fan speed: 5 speed levels	33500	0	20	5	f	2023-06-04 10:43:23.437806+00	22	3	39	11	\N	1	24.3999999999999986
5cf260e6-192f-4774-a6c5-575a8d85c752	Opalescence Home 35%	-For use with customized take-home whitening trays, Opalescence PF teeth whitening gel offers many options for patients.\r\n-Opalescence teeth whitening gel contains PF (potassium nitrate and fluoride)\r\n-Opalescence gel is effective in helping reduce shade relapse as compared to -competitor tooth whitening products.\r\n-Opalescence whitening gel is made up of at least 20% water which helps prevent dehydration.\r\n-Day or night wear\r\n-Sticky, viscous gel won’t migrate to soft tissues and ensures tray stays securely in place\r\n-Vegan—no animal products used\r\n-Certified gluten free\r\nCertified kosher	370	0	5	3	f	2023-06-14 10:20:24.69165+00	20	7	30	12	\N	1	0.349999999999999978
91d14421-9142-4eab-a60c-ee247e91a152	Mitex Probe Straight Tip	Mitex Probe Straight Tip	70	0	20	3	f	2023-07-05 13:51:57.392684+00	8	10	54	13	\N	1	0.349999999999999978
bc79c542-c968-44dd-a49e-c1ffe0717022	Mitex CAOH Applicator	Mitex CAOH Applicator	75	0	20	3	f	2023-07-05 13:47:24.510573+00	8	10	52	13	\N	1	0.349999999999999978
be79edd2-7a90-4f91-9a4e-e77a34cbcebb	Mitex Excavator Spoon	Mitex Excavator Spoon	70	0	20	3	f	2023-07-05 13:57:15.509713+00	8	10	60	13	\N	1	0.349999999999999978
cf494fe0-5968-48e3-85ea-72cde3f17953	Mitex Cryer Elevator	Mitex Cryer Elevator	250	0	20	3	f	2023-07-05 14:10:29.972679+00	23	10	51	13	\N	1	0.650000000000000022
cfcbfd80-8b58-4933-ad5e-e88af2037ce0	Mitex Mirror Hand	Mitex Mirror Hand	70	0	20	3	f	2023-07-05 13:50:40.549168+00	8	10	54	13	\N	1	0.349999999999999978
d1200e85-1411-4f0d-b9a1-7a8351464449	Mitex Periodontal Probe	Mitex Periodontal Probe	100	0	20	3	f	2023-07-05 13:58:33.710009+00	11	10	55	13	\N	1	0.349999999999999978
37549217-7118-48bb-8365-178c19a61e68	Dream Tofflemire Retainer	Dream Tofflemire Retainer	90	0	20	3	f	2023-06-25 12:22:30.664111+00	19	9	29	13	\N	1	0.110000000000000001
4d8ec8e0-4091-417f-81a3-b9c0b87228cb	Dream Wax Carver Small	Dream Wax Knife Small	40	0	20	3	f	2023-06-25 10:36:16.922288+00	17	9	56	13	\N	1	0.450000000000000011
52c58aab-8ef0-41eb-801b-a9a8bc6bbf89	Dream CAOH Applicator Double End	CAOH Applicator Double End	50	0	20	3	f	2023-06-25 12:26:48.414873+00	8	9	52	13	\N	1	0.5
6b8aef76-2a19-4766-80ed-479505270d75	Dream Wax Carver Small	Dream Wax Carver Small	40	0	20	3	f	2023-06-25 10:34:04.812174+00	17	9	56	13	\N	1	0.450000000000000011
7f5f16e9-e518-4c3a-8e2f-7f2dc5853ce9	Dream Sickle Scaler	Dream Sickle Scaler	40	0	20	3	f	2023-06-25 10:24:45.323228+00	11	9	55	13	\N	1	0.450000000000000011
80cf4b5a-0393-426a-a597-9aa6712e8e5a	Dream Wax Dropper	Dream Wax Dropper	50	0	20	3	f	2023-06-25 10:35:23.16338+00	17	9	56	13	\N	1	0.450000000000000011
937d4a67-0216-491f-a094-ce814a9e1d98	Dream Wax Knife	Dream Wax Knife	40	0	20	3	f	2023-06-25 10:37:19.438615+00	17	9	56	13	\N	1	0.450000000000000011
b472d3e4-e905-4d03-86d7-42670297e79f	Dream Periodontal Probe	Dream Periodontal Probe	65	0	20	3	f	2023-06-25 10:25:28.929084+00	11	9	55	13	\N	1	0.550000000000000044
201ca028-e09e-43c7-927a-50c664a1febc	Mitex Sickle Scaler	Mitex Sickle Scaler	70	0	20	3	f	2023-07-05 14:01:14.77171+00	11	10	55	13	\N	1	0.349999999999999978
b64830f0-41b4-4ef7-9d16-52d207ecb6cd	Dream Wax Carver large	Dream Wax Carver large	40	0	20	3	f	2023-06-25 10:32:53.085066+00	17	9	56	13	\N	1	0.450000000000000011
d97387f5-c4ce-4dda-a7c5-b9496c63e0e6	Dream Bone Caliber	Dream Bone Caliber	75	0	20	3	f	2023-06-25 12:25:27.747261+00	23	9	58	13	\N	1	0.110000000000000001
f36f4386-7779-4a9b-9144-bba493af9478	Dream Cement Spatula	Dream Cement Spatula	40	0	20	3	f	2023-06-25 10:41:02.439908+00	17	9	57	13	\N	1	0.450000000000000011
f4c8a3a7-1a45-41f2-8d95-61564a685232	Dream Tofflemire	Dream Tofflemire	95	0	20	3	f	2023-06-25 12:21:43.103873+00	19	9	29	13	\N	1	0.110000000000000001
08100b85-8b18-4e30-9a0b-f82d9941f3a2	Mitex Tweezer Without Lock	Mitex Tweezer Without Lock	90	0	0	3	f	2023-07-05 14:04:46.721085+00	8	10	54	13	\N	1	0.349999999999999978
27fc5ba6-9f46-45e7-8d69-7f44265d089c	Mitex Tray	Mitex Tray	1	0	0	3	f	2023-07-05 14:02:41.126105+00	23	10	53	13	\N	1	0.100000000000000006
8d4799c9-5254-4c43-9166-9289733397e1	Dream Spatula	Dream Spatula	40	0	20	3	f	2023-06-25 10:42:05.586161+00	17	9	57	13	\N	1	0.450000000000000011
36b6f8e1-1968-4d38-9055-5ae5d3eb9a64	Dream Wax Knife Small	Dream Wax Knife Small	40	0	20	3	f	2023-06-25 10:36:19.559247+00	17	9	56	13	\N	1	0.450000000000000011
52448f20-d6c7-4281-b1c2-831055256820	Mitex Probe	Mitex Probe	70	0	20	3	f	2023-07-05 13:59:30.494471+00	8	10	54	13	\N	1	0.299999999999999989
6cd62507-9d16-4ecd-a49e-2cb1760ce9c7	Mitex Epxo Elevator	Mitex Epxo Elevator	250	0	20	3	f	2023-07-05 14:11:25.172374+00	23	10	51	13	\N	1	0.650000000000000022
6db57dfd-0e24-4b46-a3b0-2a24d4c54c0e	Mitex Tweezer With Lock	Mitex Tweezer With Lock	90	0	400	3	f	2023-07-05 14:04:00.509127+00	8	10	54	13	\N	1	0.349999999999999978
799585f3-2e30-4f6c-9d3f-9f3fe914d8e6	Mitex Bone Caliber	Mitex Bone Caliber	150	0	20	3	f	2023-07-05 13:38:06.555798+00	23	10	58	13	\N	1	0.349999999999999978
0f1ed33e-bd0b-4cc3-974c-965f31b6ed7f	Mitex Hand Blade	Mitex Hand Blade	70	0	19	3	f	2023-07-05 14:22:17.128169+00	23	10	53	13	\N	1	0.349999999999999978
0c204162-1302-4b04-a189-517f1ad78561	Mitex Serrated Straight Elevator	Mitex Serrated Straight Elevator	250	0	0	3	f	2023-07-05 14:15:16.503573+00	23	10	51	13	\N	1	1
04869af6-805c-4af5-8326-e5f577ec2500	Gemini Pre Initiated Tip 5mm	-single-use 5 mm pre-initiated tips can be used with either the Gemini EVO laser or Gemini laser	395	0	50	3	f	2023-06-10 18:49:27.695561+00	16	7	48	12	\N	1	1
1b452c9f-26cc-4345-955a-21db1a6728b3	Mitex Wax Carver Large	Mitex Wax Carver Large	70	0	20	3	f	2023-07-05 15:03:13.095348+00	17	10	56	13	\N	1	0.349999999999999978
6958730d-712b-48de-b4eb-4c3276783913	Mitex Straight Elevator Flat Tip	Mitex Straight Elevator Flat Tip	250	0	20	3	f	2023-07-05 14:17:08.581056+00	23	10	51	13	\N	1	0.650000000000000022
836f1a60-1ecf-4ae1-91a0-2b804c7962ec	Mitex Straight elevator	Mitex Straight elevator	250	0	20	3	f	2023-07-05 14:16:02.581512+00	23	10	51	13	\N	1	0.650000000000000022
7e5c9b22-e4a0-40e2-9b3e-f7cf95c66f19	Mitex Plugger	Mitex Plugger	1	0	0	3	f	2023-07-05 14:23:36.148703+00	12	10	61	13	\N	1	0.100000000000000006
88983a7c-3802-40bf-b4d4-3ba94ae9a8a0	Mitex Cement Spatula	Mitex Cement Spatula	70	0	20	3	f	2023-07-05 14:26:34.886514+00	17	10	57	13	\N	1	0.349999999999999978
94333fdf-5206-449f-8073-de1cb8a510c0	Mitex Ball Burnisher	Mitex Ball Burnisher	70	0	20	3	f	2023-07-05 14:18:19.403943+00	23	10	52	13	\N	1	0.349999999999999978
a0175062-7d89-4b03-afec-19114a6fc351	Mitex Carver Hollen Back	Mitex Carver Hollen Back	70	0	20	3	f	2023-07-05 14:19:13.569653+00	8	10	52	13	\N	1	0.349999999999999978
abce7c74-c4c0-4cf6-b031-369bb38b2b0c	Mitex Wax Knife	Mitex Wax Knife	70	0	60	3	f	2023-07-05 15:04:48.543186+00	17	10	56	13	Colors	1	0.349999999999999978
aee5b759-7d6d-4d5c-82c7-0c50c2bc522e	Mitex Tray Kit 6 Pcs	Mitex Tray Kit 6 Pcs	1	0	0	3	f	2023-07-05 14:30:22.294018+00	19	10	63	13	\N	1	0.100000000000000006
b2dd1b55-ea05-44f7-be9f-f718c935aaf2	Mitex Elevator Kit 8 Pcs	Mitex Elevator Kit 8 Pcs	1850	0	20	3	f	2023-07-05 14:13:35.376472+00	23	10	51	13	\N	1	1
b905c42e-ccb3-43ef-83d3-dd13e8e9e7c5	Mitex Putty Cut	Mitex Putty Cut	150	0	20	3	f	2023-07-05 14:25:37.64537+00	19	10	62	13	\N	1	0.400000000000000022
c9750cc0-021b-42f5-915c-147747c93ce4	Mitex Elevator kit 3 Pcs	Mitex Elevator kit 3 Pcs	750	0	20	3	f	2023-07-05 14:12:41.421372+00	23	10	51	13	\N	1	0.200000000000000011
ca4d268e-fae8-4b0b-8af0-267f57676729	Mitex Plastic Instrument	Mitex Plastic Instrument	70	0	20	3	f	2023-07-05 14:20:42.830081+00	8	10	52	13	\N	1	0.349999999999999978
d0c3db45-e5c0-4b98-aebe-4761ae6806da	Mitex Bone File	Mitex Bone File	185	0	20	3	f	2023-07-05 14:28:58.770886+00	23	10	53	13	\N	1	0.400000000000000022
d75eb98c-7eb4-4415-ad1d-8db45f61046e	Mitex Conical Burnisher	Mitex Conical Burnisher	70	0	20	3	f	2023-07-05 14:19:59.133844+00	8	10	52	13	\N	1	0.349999999999999978
fd9f4617-8630-4094-9d99-66eaaf7f60c9	Mitex Curette	Mitex Curette	70	0	20	3	f	2023-07-05 14:27:48.798734+00	23	10	53	13	\N	1	0.349999999999999978
19f82948-49f5-4b6d-9def-d4b9fc472569	Mitex High Quality Probe	Mitex High Quality Probe	400	0	16	3	f	2023-07-06 14:26:26.392454+00	8	11	54	13	\N	1	0.299999999999999989
3d121bc6-7c33-4c65-bc72-7c04955c2054	Mitex High Quality Bone Rongeur Forceps	Mitex High Quality Bone Rongeur Forceps	1100	0	20	3	f	2023-08-05 08:28:33.103861+00	23	11	65	13	\N	1	0.100000000000000006
4d4b566a-7f2f-4cb4-9f4b-0efe78711b37	Mitex High Quality Tofflemire Elliot	Mitex High Quality Tofflemire Elliot	400	0	20	3	f	2023-07-06 14:21:15.981871+00	19	11	29	13	\N	1	0.25
4bacc283-de45-4523-95d4-9720939abf8b	Mitex High Quality Cow Horn Gold Plated Forceps	Mitex High Quality Cow Horn Gold Plated Forceps	600	0	0	3	f	2023-07-06 14:03:49.607867+00	23	11	50	13	\N	1	1
575378cf-827d-4cc9-b6f9-4a26a0f047a1	Mitex High Quality Excavator Spoon	Mitex High Quality Excavator Spoon	400	0	20	3	f	2023-07-06 14:23:23.371558+00	8	11	60	13	\N	1	0.299999999999999989
4d6abc91-2140-4b4a-b8d6-4ae81916981e	Mitex High Quality Root Tweezer Diamond Tip	Mitex High Quality Root Tweezer Diamond Tip	350	0	0	3	f	2023-07-06 14:29:35.144277+00	23	11	64	13	\N	1	1
6b325af2-2631-4b57-9c04-939d79f9f5d4	Mitex High Quality Plastic Filling Applicator	Mitex High Quality Plastic Filling Applicator	350	0	20	3	f	2023-07-06 14:14:29.120731+00	8	11	52	13	\N	1	0.349999999999999978
7b5d9ddc-62da-4f60-8ed9-bf24bfbb70ad	Mitex High Quality Mirror	Mitex High Quality Mirror	195	0	20	3	f	2023-07-06 14:24:45.796983+00	8	11	54	13	\N	1	0.200000000000000011
6d746af6-cb08-4c52-9e58-32e1416eadb9	Mitex High Quality Lower 8 Gold Forceps	Mitex High Quality Lower 8 Gold Forceps	850	0	0	3	f	2023-07-06 14:06:55.247992+00	23	11	50	13	\N	1	1
74ba3489-c669-4867-9935-672db7a3fcfa	Mitex High Quality Titanium Composite Kit	Mitex High Quality Titanium Composite Kit	2900	0	0	3	f	2023-07-06 14:17:59.710791+00	8	11	52	13	\N	1	1
a03d6be6-7279-451e-b8b9-c0e5c61c23d2	Mitex High Quality Gold Plated Probe	Mitex High Quality Gold Plated Probe	385	0	20	3	f	2023-07-06 14:25:38.226404+00	8	11	54	13	\N	1	0.299999999999999989
895cae1e-a3ff-4666-b966-57f54236b93c	Mitex High Quality Gold Composite Kit	Mitex High Quality Composite Kit	2900	0	0	3	f	2023-07-06 14:11:19.644416+00	8	11	52	13	\N	1	1
95b6e6a4-432c-4095-ac81-96d3ae64cbee	Mitex High Quality LM Composite kit	Mitex High Quality LM Composite kit	1750	0	0	3	f	2023-07-06 14:12:28.967632+00	8	11	52	13	\N	1	1
9e5d7dfd-ff33-48ca-aa97-a993fb3ad17c	Mitex High Quality Cow Horn Forceps	Mitex High Quality Cow Horn Forceps	600	0	0	3	f	2023-07-06 14:02:12.99545+00	23	11	50	13	\N	1	1
b30d23ba-e3e1-4200-83e7-ef28cc6d4396	Mitex High Quality Bone Curette	Mitex High Quality Bone Curette	700	0	20	3	f	2023-08-05 08:30:38.593067+00	23	11	65	13	\N	1	0.400000000000000022
c043e60e-06f7-40ec-9cda-e102b3e006aa	Mitex High Quality Remaining  Roots Gold plated Forceps	Mitex High Quality Remaining  Roots Gold plated Forceps	600	0	0	3	f	2023-07-06 14:08:55.161852+00	23	11	50	13	\N	1	1
cc28815e-7b14-44d4-b000-dacc6cf3b933	RTA	-Two modes: Normal mode& high mode\r\n-Maximum light intensity: 2500 mw/cm²\r\n-Suitable for Ortho brackets, porcelain veneers & post care adhesives	2500	0	20	5	f	2023-06-06 18:37:19.444229+00	8	3	4	11	\N	1	0.315000000000000002
02ffb0de-2d99-46a5-86ab-26493f8528bc	PT-A	-Scaling & air polisher\r\n-Anti blocking system\r\n-Small caliber nozzle (More concentrated air polishing)\r\n-Multiple functions like Air  Polishing, Perio, Endo and Implant Maintance\r\n-Ultrasensitive waterproof touch control\r\n-Multifunctional paddle: Water free mode, washing mode, boost mode and standard mode\r\n-Equipped with 2 water supply bottles ( 600 ml, 1400 ml )\r\n\r\nMain technical specification:\r\n\r\n-Power adapter input: 220-240V~ 50Hz/60Hz 400mA\r\n-Power adapter output: 25V~ 50Hz/60Hz 2.8A\r\n-Main unit input: 25V~ 50Hz/60Hz 2.8A \r\n-Water inlet pressure: 1bar~5bar (0.1MPa~0.5MPa)\r\n-Air inlet pressure: 5.5bar~7.5bar (0.55MPa~0.75MPa)\r\n-Water outlet temperature of air polishing system: 0~45℃\r\n-Main unit weight: 2.75Kg \r\n\r\nOperation environment:\r\n\r\n-Environmental temperature: +5℃~ +40℃\r\n-Relative humidity: 30% ~ 75% \r\n-Atmospheric pressure: 70kPa~106kPa\r\n-Cooling water temperature: +5℃~ +25℃\r\n-Main unit size: 330mm×280mm×120mm	128700	0	0	5	f	2023-05-24 11:47:19.482008+00	11	3	11	11	\N	1	19.9600000000000009
09865735-20dd-4dac-8b4c-bca2db20ee22	Mitex Egg Burnisher	Mitex Egg Burnisher	70	0	317	3	f	2023-07-05 14:06:01.289161+00	8	10	52	13	\N	1	0.349999999999999978
1bac82fa-09fc-4380-bb67-c1bf1527b2de	Mitex High Quality Osteotome Kit 6 Pcs	Mitex High Quality Osteotome Kit 6 Pcs	6000	0	0	3	f	2023-08-05 08:35:43.42831+00	23	11	65	13	\N	1	0.550000000000000044
2db70914-086f-41d7-8479-395e950b2c4a	Mitex High Quality Bone Caliber Type 3	Mitex High Quality Bone Caliber Type 3	850	0	20	3	f	2023-08-05 08:42:12.32233+00	23	11	58	13	\N	1	0.149999999999999994
149cda77-2911-400d-afb5-b5d534bcbcaf	Ai-Pex	-Can be connected to endo motor\r\n-Electric pulp testing\r\n-Anti interference \r\n-DSP technology\r\n-360 Rotatable \r\n-3.8 inch Lcd touch screen\r\n\r\nDimensions:\r\n-Dimensions: 101mm (length) × 101mm (width) × 175.5mm (height)\r\n-Weight: 685g\r\n\r\nThe main technical specifications :\r\n-Battery: 3.7V/2000mAh (Model: 18500) \r\n-Adapter (Model: DJ-0500100-A5/ADS-6AM-06N 05050):      \r\n-Input: ~100V-240V 50Hz/60Hz 0.4A MAX      \r\n-Output: DC5V/1A \r\n-Consumption power: ≤0.5W \r\n-Screen: 3.8’’ LCD	29500	0	19	3	f	2023-12-20 11:48:42.838633+00	12	3	12	11	\N	1	1.25
7fa6d156-b18c-4504-8b81-ee856bc3ce85	King Kong (Japanese Bearings)	-Japanese Bearings\r\n-Anti-Drop Contra-Angle\r\n-Push button Contra-Angle	3500	0	20	5	f	2023-05-22 16:38:07.704624+00	8	3	5	11	\N	1	0.165000000000000008
3e5d56a9-bebe-49db-8260-b34c40fc00dd	Mitex High Quality Sugar Man	Mitex High Quality Sugar Man	350	0	0	3	f	2023-08-05 08:38:10.584351+00	23	11	65	13	\N	1	1
75524dad-fd4a-48f5-b248-c7e50c722679	E-Led	-Detachable hand piece with light\r\n-Mode: Scaling, Perio & Endo\r\n-This device has an autoclavable handpiece at 134 C and 5 scaling tips plus one irrigation tip. \r\n-Less heat from tip during operation\r\n-Expert in root canal treatment.\r\n\r\nThe main technical specifications:\r\n-Power supply Input: 220-240V~ 50Hz/60Hz 150mA\r\n-Main unit input: 24V~ l.3A\r\n-Output primary tip vibration excursion: ≤100μm\r\n-Output half-excursion force:<2N\r\n-Output tip vibration frequency: 28kHz±3kHz\r\n-Output power: 3W to 20W\r\n-Main unit fuse: Tl.6AL 250V\r\n-Power supply fuse: T0.5AL 250V\r\n-Weight of main unit: 1.17kg\r\n-Weight of power supply: 1 kg\r\n-Operating mode: Continuous operation	9900	0	20	5	f	2023-05-24 11:23:31.36667+00	11	3	10	11	\N	1	3.60000000000000009
0cfc9b1f-c44d-4e61-8e94-c40007f3016a	Mitex Crown Removal Automatic	Mitex Crown Removal Automatic	800	0	0	3	f	2023-07-05 13:49:24.713348+00	14	10	59	13	\N	1	0.200000000000000011
c3777f9f-1619-4e62-a661-ab9bd614babf	Apex Gold Plus V	-SIX GENERATION (EDITION FIVE)\r\n-Accuracy 97%\r\n-Dual Function\r\n-Data processing System\r\n-Battery 750 mAh\r\n\r\nPrimary technical parameters:\r\n-Dimensions: 84mm (length) × 88mm (width) × 112mm (height) \r\n-Weight: 336g\r\n-Battery: 3.6V/750mAh (Model: 14500)\r\n-Adapter (Model:DJ-0500100-A5):\r\n-Input: ~100V-240V 50Hz/60Hz 0.5-0.2A\r\n-Output: DC5V/1A\r\n-Consumption power: ≤0.5W\r\n-Screen: 4.5’’ LCD\r\n-Buzzer alert: The buzzer will alert when the endo file is close to the apex	11600	0	20	5	f	2023-05-22 08:47:28.96598+00	12	3	12	11	\N	1	0.864999999999999991
5a78157b-e53c-4bf8-bd39-53a1a7e0afab	Mitex High Quality Bone Caliber Type 2	Mitex High Quality Bone Caliber Type 2	500	0	20	3	f	2023-08-05 08:40:47.693452+00	23	11	58	13	\N	1	0.849999999999999978
c7d518c1-4eeb-4f27-b5f7-363e99b6b4e1	Mitex High Quality Minnesota Retractor	Mitex High Quality Minnesota Retractor	350	0	20	3	f	2023-08-05 08:33:40.861941+00	23	11	65	13	\N	1	0.299999999999999989
dc0c5748-79b0-4ccd-a887-17992973ec44	Mitex High Quality Bone Caliber Type 4	Mitex High Quality Bone Caliber Type 4	950	0	20	3	f	2023-08-05 08:45:41.600975+00	23	11	58	13	\N	1	0.699999999999999956
1c1b7a27-3989-4a20-85af-8e2029445f16	Sectional Matrix regular extended refill 40 pk	-Creates restorations with natural anatomy\r\n-Ultra-thin burnishable stainless steel adapts to all preparations1\r\n-No special matrix pliers required\r\n-One clamp fits all teeth\r\n-Clamps are stackable	1110	0	1	3	f	2023-12-26 12:46:45.923339+00	19	7	29	13	\N	1	0.349999999999999978
25ff79c4-b491-469d-a028-2f351cfef310	Navi Tip 31 ga 27mm	-The NaviTip Double Sideport Irrigator tip protects against apical extrusion of irrigants by reducing the mean -apical pressure as compared with open-ended or beveled tip designs1\r\n-One of the world’s smallest cannula navigates the most intricate canal spaces\r\n-Available in 21 mm and 27 mm tip lengths\r\n-Single-use only	84	0	0	3	f	2024-01-03 11:23:51.071793+00	17	7	43	12	\N	1	1
55f09b5a-8290-4c30-b853-8c3d656e9f29	Sectional matrix large band extended 40 pk	-Creates restorations with natural anatomy\r\n-Ultra-thin burnishable stainless steel adapts to all preparations1\r\n-No special matrix pliers required\r\n-One clamp fits all teeth\r\n-Clamps are stackable	1515	0	1	3	f	2023-12-26 12:42:09.527828+00	19	7	29	13	\N	1	0.349999999999999978
30e1fd1c-877e-48f3-8f88-dc4b6d947faf	Mitex High Quality Tiflon Plastic Applicator	Mitex High Quality Tiflon Plastic Applicator	400	0	0	3	f	2023-07-06 14:15:56.247608+00	8	11	52	13	\N	1	1
78b3c4fe-4161-4202-86b5-036fb690bab6	Consepsis Scrub Syr	-Minimizes post-op sensitivity\r\n-Does not compromise bond strength\r\n-Nonsplatter formula\r\n-Use to clean prior to cementation or around ortho brackets\r\n-Certified gluten free	685	0	4	3	f	2023-12-24 13:46:48.532594+00	8	7	42	12	\N	1	0.25
a1f38695-6cc3-4c9a-9a4b-e4a920077ca2	Consepsis  inispense refill	-minimizes post-op sensitivity\r\n-Does not compromise bond strength\r\n-Nonsplatter formula\r\n-Use to clean prior to cementation or around ortho brackets\r\n-Certified gluten free	4750	0	2	3	f	2023-12-26 12:54:54.266492+00	8	7	42	12	\N	1	0.800000000000000044
cc3e2e5e-9442-472a-9aa2-74ad27476c41	Umbrella	-The Umbrella cheek retractor is ideal for a variety of procedures that require clear access without compromising patient comfort, including but not limited to: in-office whitening, scanning, impressions, bite registrations, surgical procedures, and more.\r\n-Developed to give you a clear treatment field while making patient comfort a top priority\r\n-Easy to place\r\n-Disposable\r\n-Naturally and gently helps the patient hold their mouth open without pulling or stretching their lips\r\n-Designed with anatomically placed/shaped bumpers, so clinicians can rest a hand on the patient’s mouth without causing discomfort\r\n-Provides relief and comfort to gaggers—it doesn’t initiate the gag reflex for most\r\n-Can be kept in place when checking bite	550	0	5	3	f	2023-06-10 19:12:41.212229+00	19	7	46	12	\N	1	0.349999999999999978
446a342e-8e90-4285-874f-0c7907e4e458	TST Gypsum Plaster	-High strength and hardness\r\n-Smooth and fone model\r\n-High precision model \r\n-Wide range of application with safe performance	115	0	5	3	f	2024-05-23 08:42:35.075284+00	17	14	71	12	\N	1	1
99d70557-4de3-4af0-8f05-706050bb2637	A-Led	-Optical handpiece more convenient for clinical operation\r\n-Detachable handpiece can be autoclaved\r\n-Digitally controlled\r\n-No cracking or deformation under pressure\r\n-Handpiece with led light\r\n\r\nThe main technical specifications:\r\n-Power supply Input: 220 - 240V~ 50Hz/60Hz l50mA \r\n-Main unit input: 24V~ 50Hz/60Hz l.3A\r\n-Output primary tip Vibration excursion: ≤100μm\r\n-Output half-excursion force:<2N\r\n-Output tip vibration frequency: 28kHz±3kHz \r\n-Output power: 3W to 20W\r\n-Main unit fuse:T l.6AL 250V\r\n-Power supply fuse: T 0.5AL 250V \r\n-Water pressure: 0.1bar to 5bar (0.01MPa to 0.5MPa)\r\n-Weight of main unit: 0.64kg\r\n-Weight of power supply: 1 kg\r\n-Main unit volume:196mm×134mm×80mm	8425	0	20	5	f	2023-05-28 11:07:12.42153+00	11	3	10	11	\N	1	2.62000000000000011
f7651615-6ff3-412c-b3c4-9659e17fcff9	B cure	-It has 5 working modes: Normal, soft, pulse, turbo, & ortho\r\n-Light can reach up to 2000 mw/cm²\r\n-Equipped with 5W LED\r\n-Uniform light better ortho brackets curing\r\n\r\nBasic Technical Specifications:\r\n-Size: 262.5mm×45mm×28.5mm   \r\n-Adapter input: AC100~240V 50Hz/60Hz \r\n-Output: DC5V 1A   \r\n-Built-in fuse: T1A250V \r\n-Model: DJ-0500100-A5\r\n-Wave length: 385nm~515nm\r\n-Environment temperature: +5°C to +40°C \r\n-Relative humidity: 30%~75%   \r\n-Atmophere pressure: 70kPa to106kPa	7000	0	20	5	f	2023-06-06 18:59:53.826198+00	8	3	4	11	\N	1	0.900000000000000022
40f43a51-d312-43f0-acb9-731ca9ccde4b	Fi-G & Fi-P Obturation System	Fi-Gun:\r\n- 4 working temperatures:  150, 180, 200 & 230\r\n- Reaches preset temperature within 15 seconds\r\n- 360º rotatable needle\r\n- Panasonic batteries: 4 hours of endurance\r\n- 0.5mm injection needle\r\n- Pushing Ram with Anti-return structure\r\n\r\nFi-Pen:\r\n- 4 working temperatures:  150, 180, 200 & 230\r\n- 0.2 second heating time\r\n- 0.35mm pre-bend tip\r\n\r\nProduct specifications:\r\nFi-P\r\n-Classification：Class Ⅱ(AC/DC power adapter)\r\n-Available temperatures：150℃→180℃→200℃→230℃\r\n-Time consumption for charging：About 2.5h\r\n-Duration after full charging：If each operation lasts for 5s,it can work for 1500 times\r\n-Power supply:Input： AC100V-240V 50/60Hz  800mA        Output:  DC15V/1.6A\r\n-Battery capacity：2000mAh\r\n-Size：23.8mm×158.3mm×23.8mm（Fi-P）        75.5mm×149.7mm×62.6mm（Charging base）\r\n-Weight：80g（Fi-P）        195g（Charging base）         167g（Power adapter）\r\n\r\nFi-G\r\n-Classification：Class Ⅱ(AC/DC power adapter)\r\n-Available temperatures：150℃→180℃→200℃→230℃\r\n-Time consumption for charging：About 2.5h\r\n-Duration after full charging：If each operation lasts for 5s,it can work for 1500 times\r\n-Power supply:Input： AC100V-240V 50/60Hz  800mA        Output:  DC15V/1.6A\r\n-Battery capacity：2000mAh\r\n-Size：23.8mm×158.3mm×23.8mm（Fi-P）        75.5mm×149.7mm×62.6mm（Charging base）\r\n-Weight：80g（Fi-P）        195g（Charging base）         167g（Power adapter）	42000	0	20	5	f	2023-05-23 12:29:17.872145+00	12	3	23	11	\N	1	2.33999999999999986
7ef30076-4b44-47ec-8609-28d7adfc0a6f	Led-D	-3 Working modes: Full, ramping, & pulse\r\n-Full charge can be used over 400 times\r\n-Replaceable battery\r\n-Has an automatic memory that avoids the need of setting frequently\r\n\r\nTechnical specifications\r\n-Power supply:\r\n-Rechargeable Lithium battery:  \r\n-Battery model: ICR18490\r\n-Battery voltage and capacity: 3.6V, 1400mAh\r\n-The battery includes over-voltage protection,\r\n-over-current protection  and short circuit protection.\r\n-Adapter:  Input: AC100V-240V 50Hz/60Hz  Output: DC5.0V/1A\r\n-Applied part: Optical fiber\r\n-Light source:  3.3.1 3W high power blue light LED\r\n-Wave length: 385nm-515nm\r\n-Light intensity: 1000mW/cm2 ~1700mW/cm2\r\n-Work condition:\r\n-Environment temperature: +5℃~+40℃\r\n-Relative humidity: 30%~75%\r\n-Atmosphere pressure: 70kPa to106kPa\r\n-Size: 202mm×32mm×38mm\r\n-Net weight: 143g\r\n-Consume power: ≤8W	2925	0	20	5	f	2023-06-06 18:42:36.326355+00	8	3	4	11	\N	1	0.440000000000000002
e0335233-1dce-48e0-85a6-0bfe2dc25026	i-Sensor size 2	-Optimized cut corners (Comfort)\r\n-Excellent Waterproof \r\n-Durable and reliable\r\n-APS CMOS Technology (Efficient information& detailed image)\r\n-BENDING TEST more than 8000 times\r\n-theoretical resolution 25 Lp/mm\r\n\r\nPrimary technical parameters:\r\n-Power adapter input: 5V/USB interface\r\n-Effective area: 20*30mm(H1)/26*36mm(H2)\r\n-Pixel matrix size 1000*1500(H1)/1300*1800mm(H2)\r\n-Average Pixel size 20μm 4\r\n-Effective resolution ＞ 12lp/mm\r\n-Specifications: 38.5*25*4.5mm(H1)/40.0*31.0*4.5mm(H2)\r\n-Weight: 118g(H1)/158g(H2)	65000	0	20	5	f	2023-05-22 15:55:57.387888+00	15	3	20	11	\N	1	0.505000000000000004
f14db6d8-06c0-4306-9920-23cb02d6ba4d	Free Scan	-Multimode algorithm \r\n-FPGA Chip to accelerate data\r\n-Comes with 4 Ultra thin and flexible imaging plates (0,1,2,2)\r\n-Thinnest imaging plate (0.4mm)\r\n-25um Scanning accuracy \r\n-Intelligent real time dose analysis\r\n-17LP/MM + 65535 Recognition\r\n-120 seconds autolock\r\n\r\nPrimary technical parameters:\r\n-Main unit power input：DC 15V 3.2A\r\n-Model of IP imaging plate：0、 1、 2、 3\r\n-Threshold contrast: It can distinguish all four holes of  1.0mm, 1.5mm, 2.0mm and 2.5mm\r\n-Image uniformity ＜ 2%\r\n-Specification：280*165*210mm	176000	0	20	5	f	2023-05-22 16:29:09.649504+00	15	3	27	11	\N	1	7.71499999999999986
b41dfafc-d47a-40a5-998f-ebd9024b64c7	U6	-Smart touch system\r\n-Ultra sensitive waterproof design\r\n-High quality hand piece\r\n-5 tips along with 1 irrigation tip\r\n-Amplitude of the tip 20-90 um, so more comfort to the patient \r\n-Mode: Scaling, Perio & Endo\r\n\r\nMain technical parameters:\r\n-Power supply input: 220-240V~ 50Hz/60Hz 150mA\r\n-Main unit input: 24V~ 50Hz/60Hz 1.3A\r\n-Output primary tip vibration excursion: ≤90μm\r\n-Output half-excursion force: ≤2N\r\n-Output tip vibration frequency: 28kHz±3kHz\r\n-Output power: 3W to 20W\r\n-Main unit fuse: T1.6AL 250V\r\n-Power supply fuse: T0.5AL 250V\r\n-Water pressure: 0.01MPa to 0.5MPa\r\n-Weight of main unit: 628g	13950	0	20	3	f	2023-05-24 11:29:17.43125+00	11	3	10	11	\N	1	3
e0c03435-3a38-4c3b-ab64-6c1d957bcc53	I Led Max	- More focused light output.\r\n- Light angle is reduced by 55.87% so that curing would be more concentrated and more efficient.\r\n-TURBO mode up to 2500 mw/cm2\r\n-360 degrees curing	5700	0	0	3	f	2024-04-17 10:06:36.513986+00	8	3	4	11	\N	1	0.278000000000000025
10c5f969-8707-4049-a1c8-6c02bd0b08c0	UltraPak Cord	-Ultrapak cord is made of 100% cotton, knitted into thousands of tiny loops to form long, interlocking chains.\r\n-The original—and smallest—knitted cord\r\n-Provides rapid tissue displacement, detailed margins, and quality impressions\r\n-Facilitates easy packing and stays placed better than any twisted or braided cord\r\n-Compresses upon packing then expands for optimal retraction\r\n-Does not entangle in diamond bur\r\n-Bright colors facilitate easy location and removal\r\n-Available with or without epinephrine*\r\n-High carbon steel blade ensures a clean cut\r\n-Thin plastic gate prevents cord from falling into the bottle upon cutting\r\n-Ruler printed on label provides easy cord measurement	790	0	4	3	f	2023-06-11 12:42:08.653426+00	19	7	21	12	Size	1	0.299999999999999989
2994a972-217a-4130-9668-2029dfc503cd	Ultraez Tray	-Quickly treats sensitivity from tooth whitening, toothbrush abrasion, root exposure, and thermal and chemical changes\r\n-Features potassium nitrate, which has been shown to help decrease sensitivity1\r\n-Available in disposable, prefilled trays as well as in syringes for use with custom trays\r\n-Prefilled UltraFit™ tray adapts to any smile for a comfortable fit\r\n-Can be used before and after whitening treatments\r\n-Vegan—no animal products\r\n-Certified gluten free\r\n-Certified kosher	320	0	5	3	f	2024-01-03 11:15:33.935606+00	19	7	63	13	\N	1	0.100000000000000006
300e13c3-99ce-45dc-b75a-06b2f5be364a	Endo Pace	-High performance brushless motor\r\n-High performance brushless motor for low wear, low heat and longer service life\r\n-Lightweight cordless handpiece offers better hand feeling\r\n-6:1 mini contra-angle deli\r\n-Lithium battery in motor handpiece: 3.6V /850mAh \r\n-Power adapter\r\n -Input: ~100V-240V 50Hz/60Hz 0.4A Max \r\n-Output: DC5V/1A\r\n-Torque rang: 0.4N·cm-4.2N·cm \r\n-Speed rang: 100r/min~1500r/min\r\n-Working environment parameters\r\n-Environment temperature: +5°C ~ +40°C\r\n-Relative humidity: 30% ~ 75%\r\n-Atmospheric pressure: 70kPa ~ 106kPa	17500	0	10	3	f	2024-05-01 09:50:19.103016+00	12	3	13	11	\N	1	0.589999999999999969
2b7c020e-a2ea-4a1d-9a22-f0d22e3db8dd	Endo-Eze Ruler	-The Endo-Eze ruler provides convenient and accurate measurement of canal length.\r\n\r\n-Designed for use with x-rays\r\n-Helps determine working length\r\n-Disposable	100	0	5	3	f	2024-04-17 11:10:07.173677+00	17	7	66	12	\N	1	0.599999999999999978
d5808381-dfad-418c-a6a4-89f3fdbf3d78	Mini Ray	-Double radiation protection\r\n-The radiation leakage from the body surface is less than 0,05mGy/h\r\n-70 Kv tube voltage for excellent X-ray penetration \r\n-2mA tube current for millisecond-level exposure to avoid shadow \r\n-140W output power to meet diverse clinical needs\r\n Powerful USA CHIP which enables high frequency close loop control for stable output and reduces the impact of low battery on image quality\r\n- 2500mAh*3s high capacity lithium battery ( long lasting)\r\n- 60,000 + exposure times\r\n- 2.8 HD Digital screen with ultra sensitive buttons \r\n-weight 2.2 Kg	64500	0	0	3	f	2024-04-17 10:18:34.818809+00	15	3	26	11	\N	1	4.20500000000000007
91b542e1-d2a7-404a-ae04-34316e9b4100	Yoshi Ai Motor	-Comes with two contra angles\r\n-Safe ledge bypass\r\n-Wireless charging\r\n-Customized Reciprocating ANGLE 20 to 400 degree\r\n-High performance\r\n-speed of 100 rpm to 2500 rpm. \r\n-Lithium battery of 2000 mAh\r\n-360 degrees rotatable contra-angle\r\n\r\nPrimary technical parameters:\r\n-Lithium battery in motor handpiece: 3.7V /2000mAh\r\n-Power adapter (Model: ADS-6AM-06N 05050/UE08WCP- 050100SPA) \r\n-Input: ~100V-240V 50Hz/60Hz 0.4A Max \r\n-Output: 5.0V 1A\r\n-Torque rang: 0.4Ncm-5.0Ncm（4mNm ~ 50mNm）\r\n-Speed rang: 100rpm~2500rpm	67500	0	20	5	f	2023-05-22 13:06:42.917765+00	12	3	14	11	\N	1	2
6ae6175d-4d29-4723-a600-edb8849b8f8f	I Led-II	- More focused light output ( focused light output reduces 55.87% light angle allowing more concentrated energy and higher curing efficiency \t\r\n-Upgraded wide spectrum \t\r\n- High light intensity\t\r\n- Magnetic point cure lens \t\r\n- 3 working modes ( normal, high and turbo modes)\t\r\n-Intensity up to 3000 mw/cm2	11900	0	3	3	f	2024-04-17 10:01:28.682571+00	8	3	4	11	\N	1	1
c343b79f-64f7-45bf-98de-a275665425d5	Metal D.Infusor Tip Viscostat ref	-Includes Comfort Hub feature with larger wings for easy attachment and removal; as well as providing a secure, comfortable grasp of the tip\r\n-Places hemostatic agents precisely\r\n-Effectively removes superficial coagulum\r\n-Blunt, bent cannula with padded brush enables gentle pressure on the sulcus\r\n-Ultradent’s first tip, the “MDI” remains paramount for successful tissue management\r\n-Single-use only	35	0	5	3	f	2024-04-17 11:04:42.22054+00	17	7	43	12	\N	1	1
f6e5b415-7430-4be7-85d8-440efb9f63cd	LX16 Plus	-3 wavelengths\r\n-Blue laser\r\n-Metal handle Flexible movement\r\n-This device effectively prevents cross infection as the fiber-optical tips and stainless handpiece sleeve can be autoclaved\r\n-The battery is 2600 mAh times two\r\n\r\n\r\nMain technical parameters:\r\n-Power adapter input：100-240Vac，50/60Hz，2.5A \r\n-Main unit input：15V 6.0A \r\n-Wavelength and power: \r\na）976± 20nm ：  0.2W-4W(CW), Peak Power 5W\r\n     chopped 1Hz to 20KHz \r\n     chopped mode:5us – 0.9S \r\nb）650± 20nm ：  25mW-200mW(CW)\r\nc）450± 20nm：  0.2W-3W(CW)\r\n     chopped 1Hz to 20KHz \r\n     chopped mode:5us – 0.9S \r\n-Laser classification: \r\na) 976 nm: Class 4\r\nb) 650 nm: Class 2\r\nc) 450 nm: Class 4\r\n-Aiming beam: 650 ± 20 nm / Pmax<5mW (class 1 ) \r\n-Aiming beam:   650 ± 20 nm /Pmax<5mW \r\n-Divergence:12.7°(According to IEC 60825-1: 2014) \r\n-Rechargeable battery:   11.1V/2600mAh x2 (57.7Wh) \r\n-Time consumption for charging: about 4h (5 hours for first charging) \r\n-Diverging half angle: 0.22 mad/ 12.6 °  \r\n-size: 22 cm x 20cm x 23cm	337000	0	19	5	f	2023-05-22 15:44:30.126734+00	16	3	25	11	\N	1	7.79999999999999982
cad2d2d8-05ce-4a23-933d-6a2941d81b77	Drink 10	-Compact, high performance, robust and safe.\r\n\r\n-Resistant, injected ABS fairing, which provides a fine finish.\r\n\r\n-Bowl and dome made of 304 AISI-18/8 stainless steel, the same used in autoclaves.\r\n\r\n-The design of the cooling zone reduces the temperature by convection and favors condensation.\r\n\r\n-Produces 1.2 liters/hour or 4 liters every 3.5 hours, +20% than similar distillers on the market.\r\n\r\n-Once the boiling point is reached, it distills 300ml of water every 15 minutes, enough for one autoclave cycle.\r\n\r\n-Investment in equipment pays for itself in a few months by eliminating costs associated with purchasing distilled water	6000	0	10	3	f	2024-05-08 12:26:37.908546+00	17	4	68	11	\N	1	5.70000000000000018
8f45d9ba-2646-4773-a4b6-f3322fac0ec7	Wozo A2	-Harmony and unique beauty to the whole, with an excellent approach to the operating field.\r\nChair, equipment, water unit and reflector devices designed to maximize professional performance and patient safety.\r\n\r\n-Electronic programming of 6 work positions that automate and enhance the set's performance.\r\nPedal for activating and adjusting working positions, smoothly, precisely and safely attached to the base \r\nof the chair.\r\n\r\n-Automatic Trendelenburg anti-collapse position through electronic control on the equipment, optionally programmable activation on the chair pedal.\r\n\r\n-Stop-system safety device on the high and low rotation supports that automatically protects the patient from involuntary movements of the seat and back during treatment.\r\n\r\n-Electronic controls on the equipment and auxiliary unit for all set functions.\r\n\r\n-Pneumatic pedal of the equipment with ergonomic positioning rod, with independent activation of air, water or spray from the tips, cutting and release of water, air jet to dry the oral cavity.\r\n\r\n-Equipped with 5 tip supports in versions A1 – with orbital rods and retractable hummingbird hoses – or A2, with soft and resistant suspended hoses.\r\n\r\n-Articulated tray in both versions that favor the ergonomic positioning of instruments and materials close to the professional.\r\n\r\n-Easy to access and operate devices, monitored by a pressure gauge, for regulating water, air and spray at the high and low rotation terminals, by the user.\r\n\r\n-Auxiliary unit suckers compatible with high-power venturi and vacuum suction.\r\nReflector with LED light reflected by multi- and micro-faceted mirrors with high-fidelity, shadow-free color reproduction index (IRC).\r\n\r\n-Multi-articulated arm and reflector head that facilitate direct illumination of the oral cavity in all working positions.\r\n\r\n-Comes with a finely finished metal base stool and seat and back adjustments.\r\nComposition: chair, equipment, auxiliary unit, reflector and premium stool.	195000	0	6	3	f	2024-05-08 12:09:18.41059+00	17	4	67	11	Color	1	409
f7cb8a88-3b4c-4be1-949c-1d3d3fa73df5	RAY-L 2.0	-Single hand operation, all in grasp\r\n\r\n-voltage : Dc 22.2V\r\n\r\n-Battery : 950mAh/21.09wh\r\n\r\n-Focal spot to skin distance: >200 mm\r\n\r\n-Tube voltage : 70kv\r\n\r\n-Tube current : 2ma\r\n\r\n-Exposure time : 0.01-2.0s\r\n\r\n-Net weight : 1.6Kg\r\n\r\n-Charging input : ac100-240v\r\n\r\n-charging output Dc 25.2 v\r\n\r\n-Digital display screen\r\n\r\n-compact body, easy to store\r\n\r\n-Protective X-ray transmitter, safe and reliable	39500	0	5	3	f	2024-05-08 12:46:46.240524+00	15	4	26	11	\N	1	1.60000000000000009
6c778bac-1cec-4c7e-bbc3-b2bb9b2b7a3f	QL2028I (2024)	- LED operation light with super clear light spot and light intensity adjustable, with very flexible light arm                                                                   \r\n\r\n- Well-designed hanging delivery tray, detachable & easy to clean handpiece holder block                                                                           \r\n\r\n- Full function control panel: spitting position setting, operation light control, x-ray film viewer control, zero position control, emergency position                                                   \r\n\r\n- Spitting position setting: Press the spitting position button, automatically backrest upward, bowl rinsing start, light turns off; press again, automatically return to working status, backrest backward, bowl rinsing closes, light turns on                                                                  \r\n \r\n- Multifunction foot pedal with unique fixed metal handle and fashion design, with chair position control, with bowl rinsing and cup filling control                                                          \r\n\r\n- High quality water and air tube and drain pipe                                                                 \r\n\r\n- Good metal surface treatment with powder coating	160000	0	0	3	f	2024-05-08 13:17:26.131709+00	17	12	67	11	\N	1	217
284393ee-87bf-47a8-939f-934b3c10f008	Tanda class B 18L	-Vertical reading front panel with selection of pre-programmed functions, temperature, pressure, time, complete cycle phases, water level in the water tanks.\r\n\r\n-Illuminated LED function indicators make it easy to read and simple to operate.\r\n\r\n-Metal fairing treated against corrosion and paint compatible with high temperatures.\r\n\r\n-304 stainless steel door of the stainless steel chamber, with mirror finish, equipped with a two-stage lock and silicone gasket for high temperatures.\r\n\r\n-Chamber made of 304 AISI stainless steel (medical steel) seamless, without welding, easy to clean and sanitize, with extended factory warranty.\r\n\r\n-Recording 30” by 30” of complete cycle data on a pendrive via USB. Or optionally and alternatively recording on tapes via thermal printer.\r\n\r\n-Leveling feet for installation in ideal operating conditions.\r\n\r\n-Recommended for autoclaving packaged, cannulated, articulated, porous materials, diamond burs, textiles, rubber drapes, handpieces and similar materials.\r\n\r\n-Test programs Bowie & Dick, Helix, vacuum and Prion program.\r\nComplete, incomparable relationship between cost and benefit.	85000	0	3	3	f	2024-05-08 12:33:40.988346+00	17	4	69	11	\N	1	52
412a5a8f-e516-4fad-b0a4-1f96952cea2e	Tanda class B 23L	-Vertical reading front panel with selection of pre-programmed functions, temperature, pressure, time, complete cycle phases, water level in the water tanks.\r\n\r\n-Illuminated LED function indicators make it easy to read and simple to operate.\r\n\r\n-Metal fairing treated against corrosion and paint compatible with high temperatures.\r\n\r\n-304 stainless steel door of the stainless steel chamber, with mirror finish, equipped with a two-stage lock and silicone gasket for high temperatures.\r\n\r\n-Chamber made of 304 AISI stainless steel (medical steel) seamless, without welding, easy to clean and sanitize, with extended factory warranty.\r\n\r\n-Recording 30” by 30” of complete cycle data on a pendrive via USB. Or optionally and alternatively recording on tapes via thermal printer.\r\n\r\n-Leveling feet for installation in ideal operating conditions.\r\n\r\n-Recommended for autoclaving packaged, cannulated, articulated, porous materials, diamond burs, textiles, rubber drapes, handpieces and similar materials.\r\n\r\n-Test programs Bowie & Dick, Helix, vacuum and Prion program.\r\nComplete, incomparable relationship between cost and benefit.	95000	0	3	3	f	2024-05-08 12:34:52.618994+00	17	4	69	11	\N	1	58
d3bab673-8754-4199-ba97-1a4355aabb2a	M200 Luxury	-Luxury microfiber leather seat cushion\r\n\r\n-Soft Start and Soft Stop function\r\n\r\n-Synchronized chair design\r\n\r\n-Chair interlock system\r\n\r\n-Spitting chair position, treatment chair position, emergency chair position\r\n\r\n-Backrest anti-collision\r\n\r\n-Taiwan Timotion motor\r\n\r\n-Luxury multi-functional foot pedal\r\n\r\n-HD LCD screen, With digital air pressure and rotating speed display\r\n\r\n-Built-in LCD x-ray film viewer\r\n\r\n-3 doctors with 9 sets of chair position memory\r\n\r\n-Intelligent self-test when power-on, fault code display\r\n\r\n-Instrument tray heating water function\r\n(Can provide handpiece and 3-way syringe with warm water)\r\n\r\n-6-position Adjustable instrument holder\r\n\r\n-Handpiece Anti-retraction function\r\n\r\n-Water-air-electricity with one on/off switch control\r\n\r\n-Handpiece independent water adjustment function\r\n\r\n-Turnable stainless steel tray\r\n\r\n-Original anti-fouling silicone pad\r\n\r\n-Rotary side box\r\n\r\n-Rotatable Ceramic Cuspidor\r\n\r\n-Imported water & air tube\r\n\r\n-Independent water filter, dual filtration\r\n\r\n-Two water storing bottles\r\n\r\n-3-way syringe(hot)\r\n\r\n-9 keys control panel\r\n\r\n-Adjustable strong/weak suction\r\n\r\n-Original anti-fouling silicone pad\r\n\r\n-LED sensor light(8 imported bulbs,3 kinds of light mode)\r\n\r\n-Built-in floor box\r\n\r\n-Digital voltage display\r\n\r\n-Equipped with wave filter\r\n\r\n-One-button automatic disinfection system\r\n\r\n-Built-in disinfection module\r\n\r\n-One-button water source switching\r\n\r\n-Water volume test	250000	0	0	3	f	2024-05-08 13:42:42.570507+00	17	12	67	11	\N	1	330
5a804616-2297-4fcb-9ce2-63d3b27ba670	Mitex High Quality Bone Caliber Type 1	Mitex High Quality Bone Caliber Type 1	1350	0	10	3	f	2024-05-08 13:52:20.417304+00	23	11	58	13	\N	1	1
\.


--
-- Data for Name: product_productimage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_productimage (id, image, is_main, product_id) FROM stdin;
147	product/Apex Blue/Apex_Blue.jpeg	t	07368b73-d58c-4720-8933-f8429a60da3d
149	product/WoodPex Gold Plus III/WOODPEX_III_Plus_4.png	f	ebf165fd-f821-4212-83b2-d9497392c468
150	product/WoodPex Gold Plus III/WOODPEX_III_Plus_2.png	f	ebf165fd-f821-4212-83b2-d9497392c468
148	product/WoodPex Gold Plus III/WOODPEX_III_Plus_3.png	t	ebf165fd-f821-4212-83b2-d9497392c468
151	product/Apex Gold Plus V/Gold_plus_V_1.png	t	c3777f9f-1619-4e62-a661-ab9bd614babf
152	product/Apex Gold Plus V/Gold_plus_V_4.png	f	c3777f9f-1619-4e62-a661-ab9bd614babf
153	product/Apex Gold Plus V/Gold_plus_V_3.png	f	c3777f9f-1619-4e62-a661-ab9bd614babf
154	product/Endo Gold/Endo_Gold_2.jpeg	t	f20d3aff-3d7a-4a65-8b57-ad141a13b32b
155	product/Endo Gold/Endo_Gold_5.png	f	f20d3aff-3d7a-4a65-8b57-ad141a13b32b
156	product/Endo Gold/Endo_Gold_3.jpeg	f	f20d3aff-3d7a-4a65-8b57-ad141a13b32b
163	product/MotoPex/MotoPex_2.png	f	e2bfb134-5da4-452a-a70d-d55cccb82bd0
164	product/MotoPex/MotoPex_4.png	t	e2bfb134-5da4-452a-a70d-d55cccb82bd0
165	product/MotoPex/MotoPex_White_and_Pink_1.png	f	e2bfb134-5da4-452a-a70d-d55cccb82bd0
167	product/Ai-Motor/white_3.png	f	683de5a1-7d57-4438-b63f-aedf8e03d376
166	product/Ai-Motor/pink__white_2.png	f	683de5a1-7d57-4438-b63f-aedf8e03d376
168	product/Ai-Motor/white.png	t	683de5a1-7d57-4438-b63f-aedf8e03d376
169	product/Ai-Motor-Yoshi/black_3.jpeg	t	91b542e1-d2a7-404a-ae04-34316e9b4100
170	product/Ai-Motor-Yoshi/contra-angle.jpeg	f	91b542e1-d2a7-404a-ae04-34316e9b4100
171	product/Ai-Motor-Yoshi/red2.jpeg	f	91b542e1-d2a7-404a-ae04-34316e9b4100
178	product/Endo 1/190822.png	f	042d2ad5-c4db-4dda-9b20-c9edd306b227
177	product/Endo 1/171127.png	f	042d2ad5-c4db-4dda-9b20-c9edd306b227
179	product/Endo 1/荡洗器_ENDO_1_啄木鸟英文单页_190304.png	t	042d2ad5-c4db-4dda-9b20-c9edd306b227
180	product/LX16 Plus/transparent_background_main_unit_2.png	t	f6e5b415-7430-4be7-85d8-440efb9f63cd
181	product/LX16 Plus/side_of_main_unit.jpeg	f	f6e5b415-7430-4be7-85d8-440efb9f63cd
182	product/LX16 Plus/mian_unit2.jpeg	f	f6e5b415-7430-4be7-85d8-440efb9f63cd
184	product/I-Sensor size 1/2.jpeg	f	0156529b-593c-4576-89e2-182b0e917839
187	product/I-Sensor size 2/2.jpeg	f	e0335233-1dce-48e0-85a6-0bfe2dc25026
189	product/i-Scan/i-Scan_5.png	t	d8df3e11-b619-47ba-847b-34ae8b29c9f5
190	product/i-Scan/i-Scan_2.jpeg	f	d8df3e11-b619-47ba-847b-34ae8b29c9f5
191	product/i-Scan/i-Scan_4.jpeg	f	d8df3e11-b619-47ba-847b-34ae8b29c9f5
199	product/King Kong/King_Kong_contra-angle_5.png	f	7fa6d156-b18c-4504-8b81-ee856bc3ce85
198	product/King Kong/King_Kong_contra-angle_2.png	f	7fa6d156-b18c-4504-8b81-ee856bc3ce85
200	product/King Kong/King_Kong_contra-angle_6.png	t	7fa6d156-b18c-4504-8b81-ee856bc3ce85
201	product/King Kong/King_Kong_contra-angle_6_rLmduHJ.png	t	8e712346-8c8b-4b20-bcb1-03ccfc0e00ea
202	product/King Kong/King_Kong_contra-angle_2_nxOSf7y.png	f	8e712346-8c8b-4b20-bcb1-03ccfc0e00ea
203	product/Anteaus/Antaeus_contra-angle_5.png	t	9d8c389c-2813-4dd5-9116-1ea2697fbf34
204	product/Anteaus/Antaeus_contra-angle_3.png	f	9d8c389c-2813-4dd5-9116-1ea2697fbf34
205	product/Anteaus/Antaeus_contra-angle_4.png	f	9d8c389c-2813-4dd5-9116-1ea2697fbf34
192	product/Free Scan/Free_Scan_7_O3uwsOf.png	t	f14db6d8-06c0-4306-9920-23cb02d6ba4d
193	product/Free Scan/Free_Scan_6_JuDG0uG.png	f	f14db6d8-06c0-4306-9920-23cb02d6ba4d
206	product/Free Scan/Free_Scan_19_DXSyTkL.png	f	f14db6d8-06c0-4306-9920-23cb02d6ba4d
183	product/I-Sensor size 1/4.jpeg	f	0156529b-593c-4576-89e2-182b0e917839
185	product/I-Sensor size 1/1.png	t	0156529b-593c-4576-89e2-182b0e917839
186	product/I-Sensor size 2/4.jpeg	f	e0335233-1dce-48e0-85a6-0bfe2dc25026
188	product/I-Sensor size 2/1.png	t	e0335233-1dce-48e0-85a6-0bfe2dc25026
207	product/Fi-G & Fi-P obturation system/Fi-G__Fi-P.jpeg	t	40f43a51-d312-43f0-acb9-731ca9ccde4b
208	product/Fi-G & Fi-P obturation system/Fi-G__Fi-P_1.jpeg	f	40f43a51-d312-43f0-acb9-731ca9ccde4b
209	product/Fi-G & Fi-P obturation system/Fi-G.jpeg	f	40f43a51-d312-43f0-acb9-731ca9ccde4b
229	product/E-Led/E-Led_6.png	t	75524dad-fd4a-48f5-b248-c7e50c722679
230	product/E-Led/E-Led_2.jpeg	f	75524dad-fd4a-48f5-b248-c7e50c722679
231	product/U6/1.png	f	b41dfafc-d47a-40a5-998f-ebd9024b64c7
232	product/U6/2.png	t	b41dfafc-d47a-40a5-998f-ebd9024b64c7
233	product/U6/4.png	f	b41dfafc-d47a-40a5-998f-ebd9024b64c7
234	product/U600/U600_1.png	t	72b805d2-12f5-4606-887d-c97175e7abba
235	product/U600/U600_6.png	f	72b805d2-12f5-4606-887d-c97175e7abba
236	product/U600/U600_5.png	f	72b805d2-12f5-4606-887d-c97175e7abba
237	product/PT-A/PT-A_3.png	t	02ffb0de-2d99-46a5-86ab-26493f8528bc
238	product/PT-A/PT-A_1.jpeg	f	02ffb0de-2d99-46a5-86ab-26493f8528bc
239	product/PT-A/PT-A_4.png	f	02ffb0de-2d99-46a5-86ab-26493f8528bc
243	product/Diamond Polish Mint/Diamond_Polish_0.5_3D.png	t	71ee3003-0bb0-4daa-b25b-a14480c6d316
244	product/Diamond Polish Mint/Ultradent_Diamond_Polish_Mint_.5_Single_Pack.png	f	71ee3003-0bb0-4daa-b25b-a14480c6d316
245	product/Diamond Polish Mint/Ultradent_Diamond_Polish_Mint_.5.png	f	71ee3003-0bb0-4daa-b25b-a14480c6d316
246	product/Omni Matrix/Omni-Matrix_Redesigned_Green_Winged_3D.png	t	96b49989-4417-41ef-b92c-56c3fb4ff5c8
247	product/Omni Matrix/Omni-Matrix_Redesigned_Orange_Winged_3D.png	f	96b49989-4417-41ef-b92c-56c3fb4ff5c8
248	product/Omni Matrix/Omni-Matrix_Redesigned_Winged_3D.png	f	96b49989-4417-41ef-b92c-56c3fb4ff5c8
249	product/Omni Matrix kit/48/Omni-Matrix_Redesigned_Winged_3D.png	t	b0b8a4f7-2d77-4818-82d5-f62641287601
250	product/Omni Matrix kit/48/Omni-Matrix_Redesigned_Orange_Winged_3D.png	f	b0b8a4f7-2d77-4818-82d5-f62641287601
251	product/Omni Matrix kit/48/Omni-Matrix_Redesigned_Green_Winged_3D.png	f	b0b8a4f7-2d77-4818-82d5-f62641287601
253	product/Opalescence Endo/Opalescence_Endo_Syringe.png	f	dd9bb348-8a3a-4537-93ad-d8dadfadea9d
252	product/Opalescence Endo/Opalescence_Endo_Syringe_3D.png	f	dd9bb348-8a3a-4537-93ad-d8dadfadea9d
254	product/Opalescence Endo/Opalescence_Endo.png	t	dd9bb348-8a3a-4537-93ad-d8dadfadea9d
256	product/Opalescence Boost Syr with tips/Boost_Syringe_Side_View_3D.png	f	ee138c5a-d287-44be-9b20-ba8bdc213dcd
255	product/Opalescence Boost Syr with tips/Boost_Syringe_All_Parts_Front_3D.png	f	ee138c5a-d287-44be-9b20-ba8bdc213dcd
257	product/Opalescence Boost Syr with tips/Opalescence_Boost_Patient_Kit_Single_Syringe__Co_6IEZYsW.png	t	ee138c5a-d287-44be-9b20-ba8bdc213dcd
258	product/Sable seek/Sable_Seek_syringe_no_tip.jpeg	t	7a1bd1f9-e7f1-45c3-b98e-7f805379083d
259	product/Seek caries indicator/Seek_syringe_no_tip.png	t	79c34e7b-35e7-48ea-bf99-e50a83395a57
263	product/UltraCal XS/UltraCal_XS_Syringe_with_Blue_NaviTip.png	t	dfe5c687-7434-4aad-8b7d-7d292eb5d245
264	product/UltraCal XS/5117-1_UltraCal_XS_Calcium_Hydroxide_Paste_Single_Syringe_Kit.jpeg	f	dfe5c687-7434-4aad-8b7d-7d292eb5d245
265	product/Viscostat Clear/ViscoStat_Clear_Syringe_capped_3D_with_reflection_angled_pose.png	t	f118bce2-7f85-46cf-8f77-a24568b2069b
266	product/Viscostat Clear/6408-1_ViscoStat_Clear_Hemostatic_Gel_Single_Syringe_Kit_TM_highdef.jpeg	f	f118bce2-7f85-46cf-8f77-a24568b2069b
267	product/Viscostat Econo/ViscoStat_Syringe_with_Tip.png	t	58ca7c3c-7822-47ca-b73e-62fea5e6e07e
269	product/Viscostat Econo/ViscoStat_Single_Syringe_Kit.jpeg	f	58ca7c3c-7822-47ca-b73e-62fea5e6e07e
270	product/Permashade Translucent/PermaShade_LC.png	t	3a48b362-1765-408a-a61d-4ca37b0b840f
615	product/PERFIT set (B)/_C8A9461.jpeg	f	67ed33bc-6de3-40ff-8c01-a88382b17aa2
617	product/PERFIT set (B)/Set_B.jpeg	t	67ed33bc-6de3-40ff-8c01-a88382b17aa2
292	product/A-Led/UDS-A_1.jpeg	f	99d70557-4de3-4af0-8f05-706050bb2637
293	product/A-Led/UDS-A_2.jpeg	t	99d70557-4de3-4af0-8f05-706050bb2637
294	product/A-Led/UDS-A_4.jpeg	f	99d70557-4de3-4af0-8f05-706050bb2637
295	product/P-led/UDS-P_3.png	t	50a58335-0faa-4b1b-b69a-d9474a049041
296	product/P-led/UDS-P_5.jpeg	f	50a58335-0faa-4b1b-b69a-d9474a049041
297	product/P-led/UDS-P_1.jpeg	f	50a58335-0faa-4b1b-b69a-d9474a049041
298	product/Led Handpiece/HW-5L_1.jpeg	t	ff132071-d6fd-461a-86ab-20efbc9e7e7e
299	product/Led Handpiece/HW-5L_2.jpeg	f	ff132071-d6fd-461a-86ab-20efbc9e7e7e
300	product/Led Handpiece/HW-5L_4.jpeg	f	ff132071-d6fd-461a-86ab-20efbc9e7e7e
301	product/U6/U600 Handpiece/HW-6L_1.png	t	bbb315fa-ceae-49c2-bb7c-65a4b0520566
302	product/Fischer's Ultrapak Packers (Small)/Fischers_Ultrapak_Packer_TissueManagment_1.png	t	12a5c096-dc52-4ecd-8620-159f8cb4aa5c
303	product/Fischer's Ultrapak Packers (Small)/Fischers_Ultrapak_Packer_TissueManagment.png	f	12a5c096-dc52-4ecd-8620-159f8cb4aa5c
618	product/PERFIT set (B)/微信图片_20230515104144.png	f	67ed33bc-6de3-40ff-8c01-a88382b17aa2
304	product/Fischer's Ultrapak Packers (Small)/Fischers_Ultrapak_Packers_Serrated_Regular_45.jpeg	f	12a5c096-dc52-4ecd-8620-159f8cb4aa5c
305	product/Fischer's Ultrapak Packers (Regular)/Fischers_Ultrapak_Packer_TissueManagment.png	t	6627b142-84c1-44be-9e29-e75847261117
306	product/Fischer's Ultrapak Packers (Regular)/Fischers_Ultrapak_Packer_TissueManagment_1.png	f	6627b142-84c1-44be-9e29-e75847261117
307	product/Fischer's Ultrapak Packers (Regular)/Fischers_Ultrapak_Packers_Serrated_Regular_45.jpeg	f	6627b142-84c1-44be-9e29-e75847261117
308	product/Opal cup finishing/OpalCups_Finishing_cup.png	t	b517116b-f0a7-4f16-a6eb-ab4dbb1b65b0
309	product/Opal cup bristle/OpalCups_Bristle_cup_1.png	t	ccb4ee02-42fa-409f-baf4-1f41890934c5
310	product/Opal Dam/OpalDam_Syringe_3D.png	t	70575b1c-21d9-43d6-bd1d-f1ee00159f1e
311	product/Opal Dam/OpalDam_Syringe_No_Tip.png	f	70575b1c-21d9-43d6-bd1d-f1ee00159f1e
312	product/i-Scan imaging plate (size 1)/imaging_plates_for_iScan_and_Free_Scan.jpeg	t	078f8bb3-f4f2-4366-aa51-53cae0c9b49c
313	product/i-Scan imaging plates (Size 2)/imaging_plates_for_iScan_and_Free_Scan.jpeg	t	fe087a36-5f72-4ccc-9cdc-8b56b6ccb7d2
314	product/i-scan barrier cover/Barrier_Cover_1.jpeg	t	e4893263-5574-472b-a061-07c182be01d2
315	product/i-scan barrier cover/Barrier_Cover_2.jpeg	f	e4893263-5574-472b-a061-07c182be01d2
316	product/i-scan barrier cover/Barrier_Cover_3.jpeg	f	e4893263-5574-472b-a061-07c182be01d2
317	product/i-Scan cardboard/White_protective_board_1.jpeg	t	374ccb87-97cc-4742-81ee-2ad2e3d74c25
318	product/i-Scan cardboard/White_protective_board_2.jpeg	f	374ccb87-97cc-4742-81ee-2ad2e3d74c25
319	product/i-Scan cardboard/White_protective_board_3.jpeg	f	374ccb87-97cc-4742-81ee-2ad2e3d74c25
320	product/Q3/q3.png	t	c7db66a0-5928-41fb-9ee4-05109395f38d
321	product/Q3/q3a.png	f	c7db66a0-5928-41fb-9ee4-05109395f38d
322	product/Q7/q7.png	t	bc5e478f-44b3-473a-a4d0-b8e0e11e0518
323	product/Q7/q7a.png	f	bc5e478f-44b3-473a-a4d0-b8e0e11e0518
324	product/Sof-Tray classic sheets 1 ml/Sof-Tray_Classic_Sheets_5.png	t	c33c46ec-7ddc-446d-863b-040a2569befc
325	product/Sof-Tray classic sheets 1.5 ml/Sof-Tray_Classic_Sheets_5.png	t	50556a75-a48a-42fa-9027-a9ae100e6e0c
326	product/Sof-Tray Classic sheets 2ml/Sof-Tray_Classic_Sheets_5.png	t	08e0a9ea-7a5a-47fc-9bc9-836db8dcf639
328	product/K-Led/kled_2.jpeg	f	b46b63c5-96c7-4493-90b7-59ea14077264
327	product/K-Led/k_led.jpeg	f	b46b63c5-96c7-4493-90b7-59ea14077264
329	product/K-Led/kled_4.png	t	b46b63c5-96c7-4493-90b7-59ea14077264
330	product/RTA/Minis_RTA_2dEi4UW.png	t	cc28815e-7b14-44d4-b000-dacc6cf3b933
332	product/Led-D/2.png	f	7ef30076-4b44-47ec-8609-28d7adfc0a6f
331	product/Led-D/8_WMa96LL.png	f	7ef30076-4b44-47ec-8609-28d7adfc0a6f
333	product/Led-D/9_awWvFkf.png	t	7ef30076-4b44-47ec-8609-28d7adfc0a6f
334	product/Led-F/1_XIpge6k.png	t	0d2091b5-aecc-4346-9230-8692fb4a6258
335	product/Led-F/7_oeZXwHk.png	f	0d2091b5-aecc-4346-9230-8692fb4a6258
336	product/Led-F/2.png	f	0d2091b5-aecc-4346-9230-8692fb4a6258
337	product/I-Led/15.png	t	a1c4f9f3-72af-4b94-b110-b57f743bba20
338	product/I-Led/21.png	f	a1c4f9f3-72af-4b94-b110-b57f743bba20
339	product/I-Led/16.png	f	a1c4f9f3-72af-4b94-b110-b57f743bba20
343	product/B cure/8.png	t	f7651615-6ff3-412c-b3c4-9659e17fcff9
344	product/B cure/7.png	f	f7651615-6ff3-412c-b3c4-9659e17fcff9
345	product/B cure/1.png	f	f7651615-6ff3-412c-b3c4-9659e17fcff9
349	product/Ultra-Etch/Ultra_Etch_1.jpeg	t	16e91f84-28c5-4520-8f97-4bcb856c6d66
350	product/Ultra-Etch/Ultra_Etch_2.png	f	16e91f84-28c5-4520-8f97-4bcb856c6d66
351	product/Shade guide cards/Opalescence_Shade_Guide.jpeg	t	fcabd953-b618-4dd2-b0dc-06c2a55e2af5
352	product/Enamelast 5% Sodium Fluoride Varnish/Enamelast_unit_dose_open.png	t	b16afcec-f233-43a0-a14e-426d0246f9c7
353	product/EndoEze Irrigator tips/Endo-Eze_Irrigator_Tip.png	t	141f2ff2-d24b-4722-b023-7ed84a1211ca
362	product/Ultradent L.C Block Out Resin/LC_Block-Out_syringe_with_tip.png	t	c381faaa-2d04-4727-9ff7-aa50315f6b8e
363	product/Ultradent L.C Block Out Resin/LC_Block-Out_placement_on_tooth_model.jpeg	f	c381faaa-2d04-4727-9ff7-aa50315f6b8e
364	product/Ultradent L.C Block Out Resin/LC_Block-Out_placement_on_arch_model.jpeg	f	c381faaa-2d04-4727-9ff7-aa50315f6b8e
365	product/Iso Block/IsoBlock.png	t	877bab2d-716a-458d-9f98-1b36a738223d
366	product/Porcelain Etch/Porcelain_Etch_Syringe_No_Tip.png	t	79b5c943-441a-4074-a96b-644702352d36
367	product/Silane/Silane_Syringe_No_Tip_Reflection.jpeg	t	e1699a31-8ba1-4ebc-87df-cc471b5fb1a0
368	product/Opalustre/Opalustre_Syringe_with_tip.png	t	6a1c7ec4-1a7f-4593-b60f-6e965ee119d3
369	product/Permaseal/PermaSeal_syringe_with_tip_3D.png	t	bbacf9b0-9f84-4680-b2c5-830feda86cfe
370	product/Opalescence Pocket Tray/melon_green_blue_case.png	t	c65297ad-8096-4a04-81ac-90a5f7c5c9d1
371	product/Opalescence Pocket Tray/Opalescence_Pocket_Tray_Green_1.png	f	c65297ad-8096-4a04-81ac-90a5f7c5c9d1
372	product/Opalescence Pocket Tray/Opalescence_Pocket_Tray.png	f	c65297ad-8096-4a04-81ac-90a5f7c5c9d1
374	product/PermaFlo A2/PermaFlo_A2_Pose_4_3D.png	t	ef8ed366-4704-490a-9231-bbca77053143
375	product/Permaflo A3/PermaFlo_A3_Syringe.jpeg	t	1e37104c-c6e6-43b6-97ee-30ad39ca33ad
377	product/PermaFlo Pink/PermaFlo_Pink_PermaFlo_A2_Pose_1_3D.png	t	c3f223f2-923d-41fd-aad8-a7edd3ce1e35
378	product/UltraEz/UltraEZ_group_product_image.png	f	5cb76719-aabd-4056-bccd-4d2dc49352a7
379	product/UltraEz/UltraEZ_syringe.png	t	5cb76719-aabd-4056-bccd-4d2dc49352a7
384	product/Jiffy Polisher cups 20pk/20pk_Jiffy_Polishing_Variety.png	t	7faa53b5-945e-403c-a25d-077e7df0626f
385	product/Jiffy Polisher cups 20pk/Jiffy_20_Pack.png	f	7faa53b5-945e-403c-a25d-077e7df0626f
388	product/Viscostat Clear Dento Kit/ViscoStat_Clear_IndiSpense_Syringe_3.png	t	f4ebe4bc-c559-4aa4-b6cc-48fd7fa8bc66
389	product/Viscostat Clear Dento Kit/ViscoStat_Clear_IndiSpense_Syringe_1.jpeg	f	f4ebe4bc-c559-4aa4-b6cc-48fd7fa8bc66
393	product/Opalescence PF 20% Mint/5402-US_Opalescence-PF-20-percent-Regular-Refill-Kit-op_NLXdVSF.jpeg	t	e2de746a-d381-43d5-8c5d-4e158156777a
394	product/Black Micro Tip/Black-Micro-Tip_TIPS-highdef.jpeg	t	f15092bf-fc31-446d-9822-d843a9d684b5
395	product/Black Micro Fx Tip/Black-Micro-FX-Tip_TIPS-highdef_1.jpeg	t	91a103f0-ac9f-46fc-9512-10fdb6b92fc4
397	product/Skini Syringe/Skini-Syringe_SYRINGES-highdef.jpeg	t	bc06f090-897b-43d1-93d1-57a8399352bb
398	product/Prop Gard Ref/PropGard-with-Tongue-Guard_PREPARE-highdef.jpeg	t	3e47d619-a402-437f-88c4-6a6a21543682
403	product/Gemini Pre Initiated Tip 5mm/8983_Gemini-5mm-Tip-single_EQUIPMENT-highdef.jpeg	t	04869af6-805c-4af5-8326-e5f577ec2500
408	product/U Veneer Template Ref./Uveneer_Single_Template_Large.jpeg	t	630aed6f-ecb6-49e4-8450-0f993720c5cc
409	product/U Veneer Extra Kit/Uveneer_Extra_Kit_Inside_Left.png	t	3f109677-dbe7-419a-8538-e7b7eda4b4f5
410	product/U Veneer Extra Kit/Uveneer_Extra_Extra_Large_and_Square_Box_Left.png	f	3f109677-dbe7-419a-8538-e7b7eda4b4f5
411	product/U Veneer Extra Kit/Uveneer_Extra_Kit_Side_by_Side_3D.png	f	3f109677-dbe7-419a-8538-e7b7eda4b4f5
412	product/Umbrella/Umbrella-single-right-facing-3D_PREPARE.jpeg	t	cc3e2e5e-9442-472a-9aa2-74ad27476c41
414	product/UltraPack cord/Ultrapak-cord-group_TM-highdef.jpeg	t	10c5f969-8707-4049-a1c8-6c02bd0b08c0
415	product/UltraPack cord/Ultrapak_Cord_Size_1.jpeg	f	10c5f969-8707-4049-a1c8-6c02bd0b08c0
416	product/UltraPack cord/Ultrapak_2_1.png	f	10c5f969-8707-4049-a1c8-6c02bd0b08c0
417	product/UltraPack cord/Ultrapak_3_1.png	f	10c5f969-8707-4049-a1c8-6c02bd0b08c0
418	product/UltraPack cord/Ultrapak_0.png	f	10c5f969-8707-4049-a1c8-6c02bd0b08c0
419	product/UltraPack cord/Ultrapak_Cord_Size_00.jpeg	f	10c5f969-8707-4049-a1c8-6c02bd0b08c0
420	product/UltraPack cord/Ultrapak_Cord_Size_000.jpeg	f	10c5f969-8707-4049-a1c8-6c02bd0b08c0
421	product/UltraPack E Cord/Ultrapak_Epinephrine_Family.png	t	b28a8793-e9d0-4347-b694-07ad41f51069
422	product/UltraPack E Cord/Ultrapak_E_Cord_Size_00.jpeg	f	b28a8793-e9d0-4347-b694-07ad41f51069
423	product/UltraPack E Cord/Ultrapak_E_Cord_Size_1.jpeg	f	b28a8793-e9d0-4347-b694-07ad41f51069
424	product/UltraPack E Cord/Ultrapak_E_Cord_Size_2_1.jpeg	f	b28a8793-e9d0-4347-b694-07ad41f51069
426	product/Opalescence 35%/5373-US_Opalescence-PF-35-percent-Mint-Patient-Kit-open-2020_WHITEN.jpeg	t	5cf260e6-192f-4774-a6c5-575a8d85c752
427	product/UltraPak E Cord/Ultrapak_E_Cord_Size_0_1.jpeg	f	b28a8793-e9d0-4347-b694-07ad41f51069
428	product/Curved Root Fragment Forceps/Dream_curved_root_fragment_forceps.jpeg	t	e093e5f8-4513-49cc-b4f4-bb2996ec72e3
429	product/Root Fragment Forceps/Dream_root_fragment_forceps.jpeg	t	34f0e5cd-de60-40e0-87d9-8e96f4a8856a
430	product/Dream Elevator EPXO/Dream_elevator_epxo.jpeg	t	f6033476-e780-4579-849e-79249898c646
431	product/Dream Elevator kit 8 Pcs/Dream_elevator_kit_8_pcs_1.jpeg	t	b3516012-b5b7-4ef9-a4ba-caea0c80d2a1
432	product/Dream Elevator kit 8 Pcs/Dream_elevator_kit_8_pcs_2.jpeg	f	b3516012-b5b7-4ef9-a4ba-caea0c80d2a1
433	product/Dream Luxator/Dream_luxator.jpeg	t	448cacdb-fd57-434f-89e0-35b8de702edf
435	product/Dream Straight Elevator/Dream_straight_elevator_1.jpeg	t	5fae3560-899c-425a-a3b5-7a99f5882325
436	product/Dream Straight Elevator/Dream_straight_elevator_4.jpeg	f	5fae3560-899c-425a-a3b5-7a99f5882325
437	product/Dream Straight Elevator/Dream_straight_elevator_7.jpeg	f	5fae3560-899c-425a-a3b5-7a99f5882325
438	product/Dream Amalgam Carrier/Dream_amalgam_carrier.jpeg	t	baedc9b4-d471-4195-8772-af0e7afd36ff
439	product/Dream Ball Burnisher/Dream_ball_burnisher.jpeg	t	2fce73dc-c0f5-4d1b-865d-d601602a422e
440	product/Dream Carver Hollen Back/Dream_carver_hollen_back.jpeg	t	d836fe46-0be4-4832-834b-e2577ab2b67b
441	product/Dream Condenser/Dream_condenser.jpeg	t	b4d4a5a0-3bb9-4155-9372-e442e2622f80
442	product/Dream conical Burnisher/Dream_conical_burnisher.jpeg	t	d7c4a204-eb6b-4503-ac77-002f67200f9d
443	product/Dream Conical Carver/Dream_conical_carver.jpeg	t	43aed322-ae25-430f-b2ab-5ee9313ea10f
444	product/Dream Plastic Filling Instrument/Dream_plastic_filling.jpeg	t	2fb8b9d9-68bf-4036-884e-6c7be7e4ae8e
445	product/Dream Curette/Dream_curette.jpeg	t	8c84019c-2d5a-45f9-8453-9bd75c545ef3
446	product/Dream Hand Blade/Dream_hand_blade.jpeg	t	65e40683-fb89-4b6d-b0b7-fffa068fe0c7
447	product/Dream Mirror Hand/Dream_mirror_hand.jpeg	t	c0e2f3d9-71df-4a35-9503-b63a86b34cae
448	product/Dream Probe/Dream_probe.jpeg	t	b65b3293-8434-4a66-9333-0775b074d432
449	product/Dream Tweezer/Dream_tweezer_with_lock_1.jpeg	t	fc8a0b53-e04e-425b-b937-15f9da139fb5
450	product/Dream Sickle Scaler/Dream_sickle_scaler.jpeg	t	7f5f16e9-e518-4c3a-8e2f-7f2dc5853ce9
451	product/Dream Periodontal Probe/Dream_periodontal_probe.jpeg	t	b472d3e4-e905-4d03-86d7-42670297e79f
452	product/Dream Wax Carver large/Dream_wax_carver_larger.jpeg	t	b64830f0-41b4-4ef7-9d16-52d207ecb6cd
453	product/Dream Wax Carver Small/Dream_wax_carver_small.jpeg	t	6b8aef76-2a19-4766-80ed-479505270d75
454	product/Dream Wax Carver Small/Dream_wax_carver_small_2.jpeg	f	6b8aef76-2a19-4766-80ed-479505270d75
455	product/Dream Wax Dropper/Dream_wax_dropper.jpeg	t	80cf4b5a-0393-426a-a597-9aa6712e8e5a
456	product/Dream Wax Knife Small/Dream_wax_knife_small.jpeg	t	4d8ec8e0-4091-417f-81a3-b9c0b87228cb
457	product/Dream Wax Knife Small/Dream_wax_knife_small_BtmdTV6.jpeg	t	36b6f8e1-1968-4d38-9055-5ae5d3eb9a64
458	product/Dream Wax Knife/Dream_wax_knife.jpeg	t	937d4a67-0216-491f-a094-ce814a9e1d98
459	product/Dream Cement Spatula/Dream_cement_spatula.jpeg	t	f36f4386-7779-4a9b-9144-bba493af9478
460	product/Dream Spatula/Dream_spatula.jpeg	t	8d4799c9-5254-4c43-9166-9289733397e1
461	product/Dream Tofflemire/Dream_tofflemire_8.jpeg	t	f4c8a3a7-1a45-41f2-8d95-61564a685232
462	product/Dream Tofflemire Retainer/Dream_tofflemire_retainer_1.jpeg	t	37549217-7118-48bb-8365-178c19a61e68
463	product/Dream Bone Caliber/Dream_Caliber.jpeg	t	d97387f5-c4ce-4dda-a7c5-b9496c63e0e6
464	product/CAOH Applicator Double End/Dream_CAOH_applicator_double_end.jpeg	t	52c58aab-8ef0-41eb-801b-a9a8bc6bbf89
465	product/Mitex Bone Caliber/Mitex_Caliber.jpeg	t	799585f3-2e30-4f6c-9d3f-9f3fe914d8e6
466	product/Mitex CAOH Applicator/Mitex_CAOH_applicator_1.jpeg	t	bc79c542-c968-44dd-a49e-c1ffe0717022
467	product/Mitex CAOH Applicator/Mitex_CAOH_applicator_2.jpeg	f	bc79c542-c968-44dd-a49e-c1ffe0717022
468	product/Mitex Crown Removal Automatic/Mitex_crown_removal_automatic.jpeg	t	0cfc9b1f-c44d-4e61-8e94-c40007f3016a
469	product/Mitex Mirror Hand/Mitex_mirror_hand.jpeg	t	cfcbfd80-8b58-4933-ad5e-e88af2037ce0
470	product/Mitex Probe Straight Tip/Mitex_probe_straight_tip.jpeg	t	91d14421-9142-4eab-a60c-ee247e91a152
471	product/Mitex Excavator Spoon/Mitex_excavator_spoon.jpeg	t	be79edd2-7a90-4f91-9a4e-e77a34cbcebb
472	product/Mitex Periodontal Probe/Mitex_periodontal_probe.jpeg	t	d1200e85-1411-4f0d-b9a1-7a8351464449
473	product/Mitex Probe/Mitex_probe.jpeg	t	52448f20-d6c7-4281-b1c2-831055256820
474	product/Mitex Sickle Scaler/Mitex_sickle_scaler.jpeg	t	201ca028-e09e-43c7-927a-50c664a1febc
475	product/Mitex Tray/Mitex_tray.jpeg	t	27fc5ba6-9f46-45e7-8d69-7f44265d089c
476	product/Mitex Tweezer With Lock/Mitex_tweezer_with_lock.jpeg	t	6db57dfd-0e24-4b46-a3b0-2a24d4c54c0e
477	product/Mitex Tweezer With Lock/Mitex_tweezer_without_lock_2.jpeg	f	6db57dfd-0e24-4b46-a3b0-2a24d4c54c0e
478	product/Mitex Tweezer Without Lock/Mitex_tweezer_without_lock_1.jpeg	t	08100b85-8b18-4e30-9a0b-f82d9941f3a2
479	product/Mitex Egg Burnisher/Mitex_egg_burnisher.jpeg	t	09865735-20dd-4dac-8b4c-bca2db20ee22
480	product/Mitex Cryer Elevator/Mitex_cryer_elevator.jpeg	t	cf494fe0-5968-48e3-85ea-72cde3f17953
481	product/Mitex Epxo Elevator/Mitex_elevator_epxo.jpeg	t	6cd62507-9d16-4ecd-a49e-2cb1760ce9c7
482	product/Mitex Elevator kit 3 Pcs/Mitex_elevator_kit_3_pcs_1.jpeg	t	c9750cc0-021b-42f5-915c-147747c93ce4
483	product/Mitex Elevator kit 3 Pcs/Mitex_elevator_kit_3_pcs_2.jpeg	f	c9750cc0-021b-42f5-915c-147747c93ce4
484	product/Mitex Elevator Kit 8 Pcs/Mitex_elvator_kit_8_pcs_1.jpeg	t	b2dd1b55-ea05-44f7-be9f-f718c935aaf2
485	product/Mitex Elevator Kit 8 Pcs/Mitex_elvator_kit_8_pcs_2.jpeg	f	b2dd1b55-ea05-44f7-be9f-f718c935aaf2
486	product/Mitex Serrated Straight Elevator/Mitex_serrated_straight_elevator.jpeg	t	0c204162-1302-4b04-a189-517f1ad78561
487	product/Mitex Straight elevator/Mitex_straight_elevator_1.jpeg	t	836f1a60-1ecf-4ae1-91a0-2b804c7962ec
488	product/Mitex Straight elevator/Mitex_straight_elevator_2.jpeg	f	836f1a60-1ecf-4ae1-91a0-2b804c7962ec
489	product/Mitex Straight elevator/Mitex_straight_elevator_3.jpeg	f	836f1a60-1ecf-4ae1-91a0-2b804c7962ec
490	product/Mitex Straight Elevator Flat Tip/Mitex_straight_elevator_flat_tip.jpeg	t	6958730d-712b-48de-b4eb-4c3276783913
491	product/Mitex Ball Burnisher/Mitex_ball_burnisher_1.jpeg	t	94333fdf-5206-449f-8073-de1cb8a510c0
492	product/Mitex Ball Burnisher/Mitex_ball_burnisher_2.jpeg	f	94333fdf-5206-449f-8073-de1cb8a510c0
493	product/Mitex Carver Hollen Back/Mitex_carver_hollen_back.jpeg	t	a0175062-7d89-4b03-afec-19114a6fc351
494	product/Mitex Conical Burnisher/Mitex_conical_burnisher.jpeg	t	d75eb98c-7eb4-4415-ad1d-8db45f61046e
495	product/Mitex Plastic Instrument/Mitex_plastic_filling.jpeg	t	ca4d268e-fae8-4b0b-8af0-267f57676729
496	product/Mitex Hand Blade/Mitex_hand_blade_1.jpeg	t	0f1ed33e-bd0b-4cc3-974c-965f31b6ed7f
497	product/Mitex Hand Blade/Mitex_hand_blade_2.jpeg	f	0f1ed33e-bd0b-4cc3-974c-965f31b6ed7f
498	product/Mitex Plugger/Mitex_plugger.jpeg	t	7e5c9b22-e4a0-40e2-9b3e-f7cf95c66f19
499	product/Mitex Putty Cut/Mitex_putty_cut_impression.jpeg	t	b905c42e-ccb3-43ef-83d3-dd13e8e9e7c5
500	product/Mitex Cement Spatula/Mitex_cement_spatula.jpeg	t	88983a7c-3802-40bf-b4d4-3ba94ae9a8a0
501	product/Mitex Curette/Mitex_curette.jpeg	t	fd9f4617-8630-4094-9d99-66eaaf7f60c9
502	product/Mitex Bone File/Mitex_bone_file.jpeg	t	d0c3db45-e5c0-4b98-aebe-4761ae6806da
503	product/Mitex Tray Kit 6 Pcs/Mitex_tray_kit_6_pcs_1.jpeg	t	aee5b759-7d6d-4d5c-82c7-0c50c2bc522e
504	product/Mitex Tray Kit 6 Pcs/Mitex_tray_kit_6_pcs_2.jpeg	f	aee5b759-7d6d-4d5c-82c7-0c50c2bc522e
505	product/Mitex Wax Carver Large/Mitex_wax_carver_large.jpeg	t	1b452c9f-26cc-4345-955a-21db1a6728b3
506	product/Mitex Wax Knife/Mitex_wax_knife_colored_1.jpeg	t	abce7c74-c4c0-4cf6-b031-369bb38b2b0c
507	product/Mitex Wax Knife/Mitex_wax_knife_colored_2.jpeg	f	abce7c74-c4c0-4cf6-b031-369bb38b2b0c
508	product/Mitex Wax Knife/Mitex_wax_knife.jpeg	f	abce7c74-c4c0-4cf6-b031-369bb38b2b0c
509	product/Mitex High Quality Cow Horn Forceps/Mitex_HQ_cow_horn_forceps_1.jpeg	t	9e5d7dfd-ff33-48ca-aa97-a993fb3ad17c
510	product/Mitex High Quality Cow Horn Gold Plated Forceps/Mitex_HQ_cow_horn_forceps_gold_plated_1.jpeg	t	4bacc283-de45-4523-95d4-9720939abf8b
511	product/Mitex High Quality Cow Horn Gold Plated Forceps/Mitex_HQ_cow_horn_forceps_gold_plated_2.jpeg	f	4bacc283-de45-4523-95d4-9720939abf8b
512	product/Mitex High Quality Cow Horn Gold Plated Forceps/Mitex_HQ_cow_horn_forceps_gold_plated_3.jpeg	f	4bacc283-de45-4523-95d4-9720939abf8b
513	product/Mitex High Quality Cow Horn Gold Plated Forceps/Mitex_HQ_cow_horn_foreceps_designs.jpeg	f	4bacc283-de45-4523-95d4-9720939abf8b
514	product/Mitex High Quality Lower 8 Gold Forceps/Mitex_HQ_lower_8_forceps_gold_plated_kit.jpeg	t	6d746af6-cb08-4c52-9e58-32e1416eadb9
515	product/Mitex High Quality Remaining  Roots Gold plated Forceps/Mitex_HQ_remaining_root_YgywyeU.jpeg	t	c043e60e-06f7-40ec-9cda-e102b3e006aa
516	product/Mitex High Quality Remaining  Roots Gold plated Forceps/Mitex_HQ_remaining_root_dl5ieGZ.jpeg	f	c043e60e-06f7-40ec-9cda-e102b3e006aa
517	product/Mitex High Quality Remaining  Roots Gold plated Forceps/Mitex_HQ_remaining_root_48PF8iT.jpeg	f	c043e60e-06f7-40ec-9cda-e102b3e006aa
518	product/Mitex High Quality Gold Composite Kit/Mitex_HQ_Gold_Composite_kit__1.jpeg	t	895cae1e-a3ff-4666-b966-57f54236b93c
519	product/Mitex High Quality Gold Composite Kit/Mitex_HQ_Gold_Composite_kit__2.jpeg	f	895cae1e-a3ff-4666-b966-57f54236b93c
520	product/Mitex High Quality Gold Composite Kit/Mitex_HQ_Gold_Composite_kit__3.jpeg	f	895cae1e-a3ff-4666-b966-57f54236b93c
521	product/Mitex High Quality LM Composite kit/Mitex_HQ_LM_Composite_kit__1.jpeg	t	95b6e6a4-432c-4095-ac81-96d3ae64cbee
522	product/Mitex High Quality LM Composite kit/Mitex_HQ_LM_Composite_kit__2.jpeg	f	95b6e6a4-432c-4095-ac81-96d3ae64cbee
523	product/Mitex High Quality LM Composite kit/Mitex_HQ_LM_Composite_kit__3.jpeg	f	95b6e6a4-432c-4095-ac81-96d3ae64cbee
524	product/Mitex High Quality Plastic Filling Applicator/Mitex_HQ_Plastic_filling_applicator.jpeg	t	6b325af2-2631-4b57-9c04-939d79f9f5d4
525	product/Mitex High Quality Tiflon Plastic Applicator/Mitex_HQ_plastic_filling_applicato_29nZZ7E.jpeg	t	30e1fd1c-877e-48f3-8f88-dc4b6d947faf
526	product/Mitex High Quality Tiflon Plastic Applicator/Mitex_HQ_plastic_filling_applicato_tME8BNd.jpeg	f	30e1fd1c-877e-48f3-8f88-dc4b6d947faf
527	product/Mitex High Quality Tiflon Plastic Applicator/Mitex_HQ_plastic_filling_applicato_CEyU0iV.jpeg	f	30e1fd1c-877e-48f3-8f88-dc4b6d947faf
528	product/Mitex High Quality Titanium Composite Kit/Mitex_HQ_Titanium_Composite_kit__1.jpeg	t	74ba3489-c669-4867-9935-672db7a3fcfa
529	product/Mitex High Quality Titanium Composite Kit/Mitex_HQ_Titanium_Composite_kit__2.jpeg	f	74ba3489-c669-4867-9935-672db7a3fcfa
530	product/Mitex High Quality Titanium Composite Kit/Mitex_HQ_Titanium_Composite_kit__3.jpeg	f	74ba3489-c669-4867-9935-672db7a3fcfa
531	product/Mitex High Quality Tofflemire Elliot/Mitex_HQ_tofflemire_elliot.jpeg	t	4d4b566a-7f2f-4cb4-9f4b-0efe78711b37
532	product/Mitex High Quality Excavator Spoon/Mitex_HQ_excavator_spoon.jpeg	t	575378cf-827d-4cc9-b6f9-4a26a0f047a1
533	product/Mitex High Quality Mirror/Mitex_HQ_mirror.jpeg	t	7b5d9ddc-62da-4f60-8ed9-bf24bfbb70ad
534	product/Mitex High Quality Gold Plated Probe/Mitex_HQ_probe_gold_plated.jpeg	t	a03d6be6-7279-451e-b8b9-c0e5c61c23d2
535	product/Mitex High Quality Probe/Mitex_HQ_probe.jpeg	t	19f82948-49f5-4b6d-9def-d4b9fc472569
536	product/Mitex High Quality Root Tweezer Diamond Tip/Mitex_HQ_root_tweezer_diamond_tip.jpeg	t	4d6abc91-2140-4b4a-b8d6-4ae81916981e
537	product/Bone Rongeur/Mitex_HQ_bone_rongeur_forceps.jpeg	t	3d121bc6-7c33-4c65-bc72-7c04955c2054
538	product/Mitex High Quality Bone Curette/Mitex_HQ_bone_curette_.jpeg	t	b30d23ba-e3e1-4200-83e7-ef28cc6d4396
539	product/Mitex High Quality Minnesota Retractor/Mitex_HQ_minnesota_retractor.jpeg	t	c7d518c1-4eeb-4f27-b5f7-363e99b6b4e1
540	product/Mitex High Quality Osteotome Kit 6 Pcs/Mitex_HQ_osteotome_kit_6_pcs.jpeg	t	1bac82fa-09fc-4380-bb67-c1bf1527b2de
541	product/Mitex High Quality Sugar Man/Mitex_HQ_sugar_man_1.jpeg	f	3e5d56a9-bebe-49db-8260-b34c40fc00dd
542	product/Mitex High Quality Sugar Man/Mitex_HQ_sugar_man_2.jpeg	t	3e5d56a9-bebe-49db-8260-b34c40fc00dd
544	product/Mitex High Quality Bone Caliber Type 2/Mitex_high_quality_bone_caliber_2.jpeg	t	5a78157b-e53c-4bf8-bd39-53a1a7e0afab
545	product/Mitex High Quality Bone Caliber Type 3/Mitex_high_quality_bone_caliber_3.jpeg	t	2db70914-086f-41d7-8479-395e950b2c4a
546	product/Mitex High Quality Bone Caliber Type 4/Mitex_high_quality_bone_caliber_4.jpeg	t	dc0c5748-79b0-4ccd-a887-17992973ec44
547	product/Ai-Pex/Ai-Pex_10.jpeg	f	149cda77-2911-400d-afb5-b5d534bcbcaf
548	product/Ai-Pex/Ai-Pex_2.png	t	149cda77-2911-400d-afb5-b5d534bcbcaf
549	product/Ai-Pex/Ai-Pex_11.png	f	149cda77-2911-400d-afb5-b5d534bcbcaf
600	product/Tanda class B 23L/Tanda_2.png	f	412a5a8f-e516-4fad-b0a4-1f96952cea2e
557	product/Consepsis Scrub Syr/Consepsis_Scrub_Syringe.png	t	78b3c4fe-4161-4202-86b5-036fb690bab6
558	product/Consepsis Scrub Syr/Consepsis_Scrub_Syringe_No_Tip.png	f	78b3c4fe-4161-4202-86b5-036fb690bab6
559	product/Sectional matrix large band extended 40 pk/Omni-Matrix_Sectional_Large_Extended_G9TUvLo.jpeg	t	55f09b5a-8290-4c30-b853-8c3d656e9f29
560	product/Sectional matrix large band extended 40 pk/Omni-Matrix_Sectional_Large_Extended_FENjWVH.jpeg	f	55f09b5a-8290-4c30-b853-8c3d656e9f29
561	product/Sectional matrix large band extended 40 pk/Omni-Matrix_Sectional_Large_Extended_Band_1.png	f	55f09b5a-8290-4c30-b853-8c3d656e9f29
562	product/Sectional Matrix regular extended refill 40 pk/Omni-Matrix_Sectional_Regular_Ext_iFqyBIC.png	t	1c1b7a27-3989-4a20-85af-8e2029445f16
563	product/Sectional Matrix regular extended refill 40 pk/Omni-Matrix_Sectional_Regular_Ex_FCzd15B.jpeg	f	1c1b7a27-3989-4a20-85af-8e2029445f16
564	product/Sectional Matrix regular extended refill 40 pk/Omni-Matrix_Sectional_Regular_Ex_2L3XVJt.jpeg	f	1c1b7a27-3989-4a20-85af-8e2029445f16
567	product/Consepsis scrub inispense refill/Consepsis_IndiSpense_Syringe.jpeg	t	a1f38695-6cc3-4c9a-9a4b-e4a920077ca2
570	product/Ultraez Tray/UltraEZ_UltraFit_tray.png	t	2994a972-217a-4130-9668-2029dfc503cd
572	product/Navi Tip 31 ga 27mm/NaviTip_31_ga_Double_Sideport_Irrigator_green_27mm_tip.png	t	25ff79c4-b491-469d-a028-2f351cfef310
575	product/I Led-II/I_led_II.png	t	6ae6175d-4d29-4723-a600-edb8849b8f8f
576	product/I Led Max/i-Led_MAX_5.jpeg	t	e0c03435-3a38-4c3b-ab64-6c1d957bcc53
577	product/I Led Max/i-Led_MAX_1.jpeg	f	e0c03435-3a38-4c3b-ab64-6c1d957bcc53
578	product/I Led Max/i-Led_MAX_3.jpeg	f	e0c03435-3a38-4c3b-ab64-6c1d957bcc53
579	product/Mini Ray/Mini_Ray_3_YaHsdPb.png	t	d5808381-dfad-418c-a6a4-89f3fdbf3d78
580	product/Mini Ray/Mini_Ray_1_WWTbdeg.png	f	d5808381-dfad-418c-a6a4-89f3fdbf3d78
581	product/Mini Ray/Mini_Ray_15_xhp4G1m.jpeg	f	d5808381-dfad-418c-a6a4-89f3fdbf3d78
582	product/Metal D.Infusor Tip Viscostat ref/Metal_Dento-Infusor_Tip_with_Lok-Tite_feature.png	t	c343b79f-64f7-45bf-98de-a275665425d5
583	product/Endo-Eze Ruler/1295_Endo-Eze-Ruler-single_ENDODONTICS-highdef_1.jpeg	t	2b7c020e-a2ea-4a1d-9a22-f0d22e3db8dd
585	product/Endo Pace/Endo_Pace_2_e6ipyDG.jpeg	f	300e13c3-99ce-45dc-b75a-06b2f5be364a
584	product/Endo Pace/Endo_Pace_1_TxR4qlC.jpeg	f	300e13c3-99ce-45dc-b75a-06b2f5be364a
586	product/Endo Pace/Endo_Pace_3_WkpNOC9.jpeg	t	300e13c3-99ce-45dc-b75a-06b2f5be364a
587	product/Wozo A2/Wozo_A2_1.png	t	8f45d9ba-2646-4773-a4b6-f3322fac0ec7
588	product/Wozo A2/Wozo_A2_2.png	f	8f45d9ba-2646-4773-a4b6-f3322fac0ec7
589	product/Wozo A2/Wozo_A2_3.png	f	8f45d9ba-2646-4773-a4b6-f3322fac0ec7
590	product/Wodo A2/wodo_a2_1.png	t	038e714d-6a4d-444a-9129-fc87231c1f7a
591	product/Wodo A2/wodo_a2_2.png	f	038e714d-6a4d-444a-9129-fc87231c1f7a
592	product/Drink 10/Drink_10_water_distller_1.jpeg	t	cad2d2d8-05ce-4a23-933d-6a2941d81b77
593	product/Drink 10/Drink_10_water_distller_2.png	f	cad2d2d8-05ce-4a23-933d-6a2941d81b77
594	product/Drink 10/Drink_10_water_distller_3.png	f	cad2d2d8-05ce-4a23-933d-6a2941d81b77
595	product/Tanda class B 18L/Tanda_1.png	t	284393ee-87bf-47a8-939f-934b3c10f008
596	product/Tanda class B 18L/Tanda_2.png	f	284393ee-87bf-47a8-939f-934b3c10f008
597	product/Tanda class B 18L/Tanda_3.jpeg	f	284393ee-87bf-47a8-939f-934b3c10f008
598	product/Tanda class B 18L/Tanda_4.jpeg	f	284393ee-87bf-47a8-939f-934b3c10f008
599	product/Tanda class B 23L/Tanda_1.png	t	412a5a8f-e516-4fad-b0a4-1f96952cea2e
601	product/Tanda class B 23L/Tanda_3.jpeg	f	412a5a8f-e516-4fad-b0a4-1f96952cea2e
602	product/Tanda class B 23L/Tanda_4.jpeg	f	412a5a8f-e516-4fad-b0a4-1f96952cea2e
603	product/RAY-L 2.0/RAYL.png	t	f7cb8a88-3b4c-4be1-949c-1d3d3fa73df5
604	product/QL2028I (2024)/QL2028I2024_1.png	t	6c778bac-1cec-4c7e-bbc3-b2bb9b2b7a3f
605	product/QL2028I (2024)/QL2028I2024_3.png	f	6c778bac-1cec-4c7e-bbc3-b2bb9b2b7a3f
606	product/QL2028I (2024)/QL2028I2024_4.png	f	6c778bac-1cec-4c7e-bbc3-b2bb9b2b7a3f
607	product/QL2028I/QL2028I__2.png	t	344b0ada-ad4a-44d0-8926-45747d63fc3d
608	product/QL2028I/QL2028I__3.png	f	344b0ada-ad4a-44d0-8926-45747d63fc3d
609	product/QL2028I/QL2028I_1.png	f	344b0ada-ad4a-44d0-8926-45747d63fc3d
610	product/M200 Luxury/M200_Luxury_1.png	t	d3bab673-8754-4199-ba97-1a4355aabb2a
611	product/M200 Luxury/M200_Luxury_6.png	f	d3bab673-8754-4199-ba97-1a4355aabb2a
612	product/M200 Luxury/M200_Luxury_4.png	f	d3bab673-8754-4199-ba97-1a4355aabb2a
613	product/M200 Luxury/M200_Luxury_9.png	f	d3bab673-8754-4199-ba97-1a4355aabb2a
614	product/Mitex High Quality Bone Caliber Type 1/Mitex_high_quality_bone_caliber_1_sRAR1tO.jpeg	t	5a804616-2297-4fcb-9ce2-63d3b27ba670
616	product/PERFIT set (B)/_C8A9490.jpeg	f	67ed33bc-6de3-40ff-8c01-a88382b17aa2
619	product/TST Gypsum Plaster/WhatsApp_Image_2024-05-21_at_10.16.46_2.jpeg	t	446a342e-8e90-4285-874f-0c7907e4e458
620	product/TST Gypsum Plaster/WhatsApp_Image_2024-05-21_at_10.16.46.jpeg	f	446a342e-8e90-4285-874f-0c7907e4e458
621	product/TST Gypsum Plaster/WhatsApp_Image_2024-05-21_at_10.16.46_1.jpeg	f	446a342e-8e90-4285-874f-0c7907e4e458
\.


--
-- Data for Name: product_productitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_productitem (id, species, stock, product_id) FROM stdin;
6	Endo Motor	20	f20d3aff-3d7a-4a65-8b57-ad141a13b32b
9	Endo Motor	20	e2bfb134-5da4-452a-a70d-d55cccb82bd0
10	Endo Motor	20	683de5a1-7d57-4438-b63f-aedf8e03d376
15	Laser	20	f6e5b415-7430-4be7-85d8-440efb9f63cd
17	radiology	20	d8df3e11-b619-47ba-847b-34ae8b29c9f5
22	operative	20	9d8c389c-2813-4dd5-9116-1ea2697fbf34
23	radiology	20	f14db6d8-06c0-4306-9920-23cb02d6ba4d
34	45°	20	12a5c096-dc52-4ecd-8620-159f8cb4aa5c
35	90°	20	12a5c096-dc52-4ecd-8620-159f8cb4aa5c
36	45°	20	6627b142-84c1-44be-9e29-e75847261117
37	90°	20	6627b142-84c1-44be-9e29-e75847261117
38	size 1	20	e4893263-5574-472b-a061-07c182be01d2
39	size 2	20	e4893263-5574-472b-a061-07c182be01d2
40	size 1	20	374ccb87-97cc-4742-81ee-2ad2e3d74c25
41	size 2	20	374ccb87-97cc-4742-81ee-2ad2e3d74c25
42	Green	20	c65297ad-8096-4a04-81ac-90a5f7c5c9d1
43	Blue	20	c65297ad-8096-4a04-81ac-90a5f7c5c9d1
45	#00	20	10c5f969-8707-4049-a1c8-6c02bd0b08c0
46	#000	20	10c5f969-8707-4049-a1c8-6c02bd0b08c0
47	#1	20	10c5f969-8707-4049-a1c8-6c02bd0b08c0
48	#2	20	10c5f969-8707-4049-a1c8-6c02bd0b08c0
49	#3	20	10c5f969-8707-4049-a1c8-6c02bd0b08c0
54	Dark Brown	20	abce7c74-c4c0-4cf6-b031-369bb38b2b0c
55	Light Brown	20	abce7c74-c4c0-4cf6-b031-369bb38b2b0c
56	red	20	abce7c74-c4c0-4cf6-b031-369bb38b2b0c
58	Yellow	2	038e714d-6a4d-444a-9129-fc87231c1f7a
59	Apple green	2	038e714d-6a4d-444a-9129-fc87231c1f7a
60	Dark blue	2	038e714d-6a4d-444a-9129-fc87231c1f7a
61	Black	2	8f45d9ba-2646-4773-a4b6-f3322fac0ec7
62	Apple green	2	8f45d9ba-2646-4773-a4b6-f3322fac0ec7
63	Sky blue	2	8f45d9ba-2646-4773-a4b6-f3322fac0ec7
57	Black	2	038e714d-6a4d-444a-9129-fc87231c1f7a
64	Dark blue	2	344b0ada-ad4a-44d0-8926-45747d63fc3d
65	Light blue	2	344b0ada-ad4a-44d0-8926-45747d63fc3d
66	Turquoise	2	344b0ada-ad4a-44d0-8926-45747d63fc3d
67	Orange	2	344b0ada-ad4a-44d0-8926-45747d63fc3d
68	Burgundy	2	344b0ada-ad4a-44d0-8926-45747d63fc3d
50	#0	5	b28a8793-e9d0-4347-b694-07ad41f51069
51	#00	5	b28a8793-e9d0-4347-b694-07ad41f51069
52	#1	0	b28a8793-e9d0-4347-b694-07ad41f51069
53	#2	5	b28a8793-e9d0-4347-b694-07ad41f51069
44	#0	19	10c5f969-8707-4049-a1c8-6c02bd0b08c0
\.


--
-- Data for Name: product_productvideourl; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_productvideourl (id, url, product_id) FROM stdin;
35	https://www.youtube.com/embed/FAxh2avGsxA	02ffb0de-2d99-46a5-86ab-26493f8528bc
36	https://www.youtube.com/embed/UgDbdZk9lKM	02ffb0de-2d99-46a5-86ab-26493f8528bc
37	https://www.youtube.com/embed/pQcsGLCFhrY	02ffb0de-2d99-46a5-86ab-26493f8528bc
41	https://www.youtube.com/embed/JSQnLkHsErk	149cda77-2911-400d-afb5-b5d534bcbcaf
42	https://www.youtube.com/embed/-v26SQ8aY0U	149cda77-2911-400d-afb5-b5d534bcbcaf
43	https://www.youtube.com/embed/eau9enQRRno	149cda77-2911-400d-afb5-b5d534bcbcaf
47	https://www.youtube.com/embed/x9TEY-s1J5s	40f43a51-d312-43f0-acb9-731ca9ccde4b
48	https://www.youtube.com/embed/gr5jguPGhFk	40f43a51-d312-43f0-acb9-731ca9ccde4b
49	https://www.youtube.com/embed/NKmARFunK5U	40f43a51-d312-43f0-acb9-731ca9ccde4b
50	https://www.youtube.com/embed/S9wl-09gLuA	683de5a1-7d57-4438-b63f-aedf8e03d376
51	https://www.youtube.com/embed/auxhHTECaag	683de5a1-7d57-4438-b63f-aedf8e03d376
52	https://www.youtube.com/embed/9aK4kB17rAM	683de5a1-7d57-4438-b63f-aedf8e03d376
53	https://www.youtube.com/embed/C_l9WZ1WeBo	72b805d2-12f5-4606-887d-c97175e7abba
54	https://www.youtube.com/embed/-1jtu5fkw_4	91b542e1-d2a7-404a-ae04-34316e9b4100
55	https://www.youtube.com/embed/FAGLfBOeMgI	91b542e1-d2a7-404a-ae04-34316e9b4100
56	https://www.youtube.com/embed/HnfCVC0dXZU	91b542e1-d2a7-404a-ae04-34316e9b4100
57	https://www.youtube.com/embed/7_khK1TdaFo	91b542e1-d2a7-404a-ae04-34316e9b4100
58	https://www.youtube.com/embed/WX0H4Lrd8u4	91b542e1-d2a7-404a-ae04-34316e9b4100
59	https://www.youtube.com/embed/CK6rc-LjFM4	91b542e1-d2a7-404a-ae04-34316e9b4100
60	https://www.youtube.com/embed/OiIwlOeob3Y	91b542e1-d2a7-404a-ae04-34316e9b4100
61	https://www.youtube.com/embed/6o6Z9IFu00s	a1c4f9f3-72af-4b94-b110-b57f743bba20
62	https://www.youtube.com/embed/cuX0KihsP6o	a1c4f9f3-72af-4b94-b110-b57f743bba20
63	https://www.youtube.com/embed/rxi_YjXit5w	a1c4f9f3-72af-4b94-b110-b57f743bba20
64	https://www.youtube.com/embed/a8Ab1-OVlJY	b41dfafc-d47a-40a5-998f-ebd9024b64c7
65	https://www.youtube.com/embed/esdJjhmshtw	c3777f9f-1619-4e62-a661-ab9bd614babf
66	https://www.youtube.com/embed/_WFCqx1K99o	c3777f9f-1619-4e62-a661-ab9bd614babf
67	https://www.youtube.com/embed/YvnNgZ68MYY	c3777f9f-1619-4e62-a661-ab9bd614babf
68	https://www.youtube.com/embed/AFhpOMJH0nk	d8df3e11-b619-47ba-847b-34ae8b29c9f5
69	https://www.youtube.com/embed/AFhpOMJH0nk	d8df3e11-b619-47ba-847b-34ae8b29c9f5
70	https://www.youtube.com/embed/xSt05uUAp4s	e0335233-1dce-48e0-85a6-0bfe2dc25026
71	https://www.youtube.com/embed/L9ns5TLw6Yo	e2bfb134-5da4-452a-a70d-d55cccb82bd0
72	https://www.youtube.com/embed/tfoWyg9-8GE	e2bfb134-5da4-452a-a70d-d55cccb82bd0
73	https://www.youtube.com/embed/4hHTvZloSMI	e2bfb134-5da4-452a-a70d-d55cccb82bd0
74	https://www.youtube.com/embed/tLhl3C9zjkQ	e2bfb134-5da4-452a-a70d-d55cccb82bd0
75	https://www.youtube.com/embed/qVPsShDuyTo	e2bfb134-5da4-452a-a70d-d55cccb82bd0
76	https://www.youtube.com/embed/vTXOG-L7YZQ	e2bfb134-5da4-452a-a70d-d55cccb82bd0
77	https://www.youtube.com/embed/Dt_DkVwPkXc	ebf165fd-f821-4212-83b2-d9497392c468
78	https://www.youtube.com/embed/yP2IZf6FRwA	ebf165fd-f821-4212-83b2-d9497392c468
79	https://www.youtube.com/embed/pQXi2gQsli8	f14db6d8-06c0-4306-9920-23cb02d6ba4d
80	https://www.youtube.com/embed/bE5BxfDV-MA	f14db6d8-06c0-4306-9920-23cb02d6ba4d
81	https://www.youtube.com/embed/bE5BxfDV-MA	f14db6d8-06c0-4306-9920-23cb02d6ba4d
82	https://www.youtube.com/embed/Py-TBnM9ZrY	f6e5b415-7430-4be7-85d8-440efb9f63cd
83	https://www.youtube.com/embed/JpKvisWh2bE	f6e5b415-7430-4be7-85d8-440efb9f63cd
84	https://www.youtube.com/embed/1nCN_Mp_e04	f6e5b415-7430-4be7-85d8-440efb9f63cd
85	https://www.youtube.com/embed/3QY6ApzXgag	f6e5b415-7430-4be7-85d8-440efb9f63cd
86	https://www.youtube.com/embed/LBzFRBhkS5M	f6e5b415-7430-4be7-85d8-440efb9f63cd
87	https://www.youtube.com/embed/ZyAsw7ayV-c	f6e5b415-7430-4be7-85d8-440efb9f63cd
88	https://www.youtube.com/embed/zS0oz2X8poM	f6e5b415-7430-4be7-85d8-440efb9f63cd
89	https://www.youtube.com/embed/XRECDPgABFA	f7651615-6ff3-412c-b3c4-9659e17fcff9
90	https://www.youtube.com/embed/MHUD-MQ7Sww	d5808381-dfad-418c-a6a4-89f3fdbf3d78
91	https://www.youtube.com/embed/CLR5UAVNKAo	d5808381-dfad-418c-a6a4-89f3fdbf3d78
92	https://www.youtube.com/embed/A5s7hZF--UA	d5808381-dfad-418c-a6a4-89f3fdbf3d78
93	https://www.youtube.com/embed/HDJ4604r3Uo	300e13c3-99ce-45dc-b75a-06b2f5be364a
94	https://www.youtube.com/embed/KidzMbZ8GAA	300e13c3-99ce-45dc-b75a-06b2f5be364a
95	https://www.youtube.com/embed/CpJwIqBX6Co	300e13c3-99ce-45dc-b75a-06b2f5be364a
\.


--
-- Data for Name: product_subbranch; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_subbranch (id, name, branch_id) FROM stdin;
4	Light cures	8
6	Class B	9
7	Class N	9
8	Office Bleaching	10
9	Home Bleaching	10
5	High speed contra-angles	8
10	Ultrasonic Scalers	11
11	Ultrasonic Scalers + Air Polisher	11
12	Apex Locators	12
13	Rotary Endo motors	12
14	Dual function motors (Built in Apex)	12
15	Cements	14
16	Etchants	8
17	Bond	8
18	Flowable composite	8
20	Sensors	15
22	Micromotors	17
23	Obtura System	12
24	Endo activator	12
25	Laser	16
26	Portable X-ray	15
27	Imaging Plate Scanner	15
29	Matrix System	19
32	Caries indicators	19
33	Irrigants, Lubricants and Medicaments	12
34	Hemostatics	21
36	burs	17
37	Imaging plates	15
38	accessories	15
39	Air purifiers	22
40	Tray Fabrication	19
41	Shade guides	10
42	others	8
44	sealants	8
45	Isolation	20
46	Cheek retractors and mouth props	19
47	Impregnated Retraction Cords	19
21	Unimpregnated Retraction cords	19
43	Tips	17
28	Polishers	17
48	accessories	16
30	Home Bleaching	20
31	In Office Bleaching	20
19	Composite Template	8
49	Mechanical Abrasion	20
50	Forceps	23
51	Elevators	23
52	Filling Instruments	8
53	Others	23
54	Diagnostic	8
55	Probes & Scalers	11
35	Retraction Cord Packer	11
56	Wax Instruments	17
57	Spatula	17
58	Caliber	23
59	Crown Remover	14
60	Excavators	8
61	Pluggers	12
62	Putty Cut	19
63	Trays	19
64	Root Tweezer	23
65	Advanced Surgery	23
66	Ruler	17
67	Dental Units	17
68	Water Distillers	17
69	Autoclaves	17
70	Impression material	14
71	Gypsum Plaster	17
\.


--
-- Data for Name: product_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_type (id, name, image, hover_image, category_details_image, category_image, display_ordering) FROM stdin;
12	Materials	type/Materials/Materials_outer_cover.jpeg	type/Materials/Materials_outer_cover_keAExeW.jpeg	type/Materials/WhatsApp_Image_2022-10-13_at_11.27.16_AM.jpeg	type/Materials/Materials_inner_cover.jpeg	\N
13	Tools	type/Tools/tools_outer_cover_CiM6d0x.jpeg	type/Tools/tools_outer_cover.jpeg	type/Tools/WhatsApp_Image_2022-10-13_at_11.26.59_AM.jpeg	type/Tools/wallpaperflare.com_wallpaper_3_sQDJBZe.png	2
11	Devices	type/Devices/devices.jpeg	type/Devices/KMC-1-_Jbxw062_TlzIcTr.png	type/Devices/2_O9tdF3r_nrhWtBQ.jpeg	type/Devices/2_O9tdF3r_a9gzRgg.jpeg	1
\.


--
-- Data for Name: product_wishlist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_wishlist (id, product_id, user_id) FROM stdin;
\.


--
-- Data for Name: smsa_zone; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.smsa_zone (id, name, first_1_kg_price, additional_1_kg_price, cod_up_to_cod_limit, cod_above_cod_limit, cod_limit) FROM stdin;
6	Zone 5	147.00	22.00	10.00	0.01	3000
5	Zone 6	237.00	22.00	10.00	0.01	3000
4	Zone 4	95.00	22.00	10.00	0.01	3000
3	Zone 3	73.00	18.00	10.00	0.01	3000
2	Zone 2	51.00	15.00	10.00	0.01	3000
1	Zone1	42.00	11.00	10.00	0.01	3000
\.


--
-- Data for Name: smsa_zonecity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.smsa_zonecity (id, name, zone_id) FROM stdin;
1	Cairo	1
2	new cairo	1
3	El Rehab	1
4	Madinty	1
5	Giza	1
6	6th of october	1
7	el shiekh zayed	1
8	El Obour	1
9	Port Said	2
10	Isamailia	2
11	Suez	2
12	Sokhna	2
13	Helwan	2
14	El Saff	2
15	15th of May	2
17	Sakkara	2
18	El Shrouk	2
19	Badr city	2
20	Alexandria	2
21	Beheira	3
22	Damietta	3
23	Dakahlia	3
24	Kafr el Shiekh	3
25	Gharbia	3
26	Menoufia	3
27	Sharkia	3
28	Qalioubia	3
29	Damanhour	3
30	Mansoura	3
31	Fayoum	4
32	Bani Sweif	4
33	Menia	4
34	Assiout	4
35	sohag	4
37	El Bahreya Oasis	5
38	El Salloum	5
39	Halayeb	5
40	Shalatin	5
41	Saint Katherin	5
42	Siwa Oasis	5
43	North Sinai	5
44	Marsa Alam	5
45	Arish	5
46	Abu Sembel	5
47	Gouna	5
48	Safaga	5
49	Red Sea	5
50	kosseir	5
51	Taba	5
52	Oyoun Moussa	5
53	Rass sedr	5
56	South sinai	5
57	North Coast	5
58	Marsa matrouh	5
59	Dahab	5
60	el Tour	5
61	Nweiba'a	5
62	Qena	6
63	Luxor	6
64	Aswan	6
55	Hurghada	6
54	Sharm el sheikh	6
36	El Wadi el Gedid	6
16	10th of Ramadan	1
\.


--
-- Data for Name: translations_translation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.translations_translation (id, object_id, field, language, text, content_type_id) FROM stdin;
15	1	title	ar	عننا	8
16	1	sub_title	ar	أملأ الفراغات	8
19	1	testimonial_title	ar	شهادة	9
20	1	testimonial_subtitle	ar	إليك بعض ما قاله عملاؤنا عن KMC.	9
21	1	text	ar	الزبائن السعداء	11
22	3	text	ar	عيادات و مراكز	11
23	2	text	ar	علامات تجارية	11
24	1	name	ar	دكتور. خالد عمار	10
25	1	title	ar	مركز الحياة لطب الاسنان	10
26	1	text	ar	لوريم إيبسوم هو ببساطة نص شكلي للطباعة و\r\n                  صناعة التنضيد. لقد كان لوريم إيبسوم هو صاحب الصناعة\r\n                  نص وهمي قياسي منذ القرن الخامس عشر الميلادي ، عندما كان مجهولاً\r\n                  أخذت الطابعة لوحًا من النوع وتدافعت لتكوين نوع\r\n                  كتاب العينة.	10
40	3	number	ar	٧٠	11
41	2	number	ar	٣٠	11
43	1	number	ar	٣٣٤	11
18	1	about_text	ar	الألم في حد ذاته مهم للنخبة الشحمية الرئيسية. نعومة الحرية هي نتيجة حقيقة أن الحياة كلها لها تمييز مماثل ، وأنه لا فائدة من المقاضاة ، وأنه لا يوجد خيار سهل ، لكنه خيار رائع ، من الأساسي. مصدر. الألم في حد ذاته هو الألم ، إنه حب النخبة الرئيسية المنغمسة. مرحبًا ، اكتشف! لن نلجأ أبدًا إلى كرهنا من خلال متعة أن تفسدنا نعومة خياراتنا! وجع المخاض وآلام اللذة! المرونة\r\n يحصلون على أكبر قدر من الحرية ، لأن الحياة كلها لها تمييز مماثل ؛\r\n   لا فائدة من حل المتهمين ، لكن البعض الآخر بدون عوائق\r\n الاختيار ، التي تعززها.الألم في حد ذاته مهم للنخبة الشحمية الرئيسية. نعومة الحرية هي نتيجة حقيقة أن الحياة كلها لها تمييز مماثل ، وأنه لا فائدة من المقاضاة ، وأنه لا يوجد خيار سهل ، لكنه خيار رائع ، من الأساسي. مصدر. الألم في حد ذاته هو الألم ، إنه حب النخبة الرئيسية المنغمسة. مرحبًا ، اكتشف! لن نلجأ أبدًا إلى كرهنا من خلال متعة أن تفسدنا نعومة خياراتنا! وجع المخاض وآلام اللذة! المرونة\r\nيحصلون على أكبر قدر من الحرية ، لأن الحياة كلها لها تمييز مماثل ؛\r\n لا فائدة من حل المتهمين ، لكن البعض الآخر بدون عوائق\r\n الاختيار ، التي تعززها.	9
45	1	quote	ar	"ما وراء حدود مستلزمات طب الأسنان"	46
46	1	button_text	ar	اطلب الان	46
49	4	title	ar	أفضل المرشدين على الإطلاق	46
50	4	quote	ar	"ما وراء حدود مستلزمات طب الأسنان"	46
51	4	button_text	ar	الدورات	46
52	2	title	ar	لدينا أفضل العروض	46
53	2	quote	ar	"ما وراء حدود مستلزمات طب الأسنان"	46
54	2	button_text	ar	العروض	46
57	11	name	ar	أجهزة	19
58	8	name	ar	حشو	12
59	3	name	ar	وودبيكر	13
60	4	name	ar	ووسون	13
61	12	name	ar	المستلزمات	19
62	5	name	ar	فيليبس زووم	13
63	10	name	ar	التجميل	12
64	8	name	ar	تبييض فى العيادة	18
65	9	name	ar	تبييض منزلى	18
17	1	about_title	ar	في عام 1989، أسس الدكتور وليد كنديل شركة كنديل الطبية، وكانت مقرها الرئيسي في البداية في مصر الجديدة. مع مرور الوقت، نمت الشركة بشكل كبير، حتى أصبحت شركة طبية مصرية بارزة، تمتلك عدة فروع في جميع أنحاء البلاد، بما في ذلك مصر الجديدة، المنيل، الإسكندرية، مدينة نصر، والقصر العيني. بالإضافة إلى ذلك، قامت الشركة بتكوين علاقات دولية مع شركاء في الولايات المتحدة، المملكة المتحدة، كندا، والصين. هذه العلاقات ساعدت في إدخال العلامات التجارية العالمية الشهيرة إلى السوق المصرية، مما يتماشى مع مهمة الشركة لتوفير تكنولوجيا طب الأسنان المتطورة باستمرار لتلبية الاحتياجات المهنية والعملية للمستهلكين المصريين.	9
87	07368b73-d58c-4720-8933-f8429a60da3d	description	ar	الجيل الرابع-\r\nشاشة عالية الجودة-\r\nدقة 97٪-\r\nبطارية 750 مللي أمبير-\r\nالجهاز الأكثر اقتصادا-	14
88	ebf165fd-f821-4212-83b2-d9497392c468	description	ar	وظيفة مزدوجة-\r\nالجيل السادس-\r\nدقة 97٪-\r\nبطارية 750 مللي أمبير-	14
89	c3777f9f-1619-4e62-a661-ab9bd614babf	description	ar	الجيل السادس (الإصدار الخامس)-\r\nدقة 97٪-\r\nوظيفة مزدوجة-\r\n نظام معالجة البيانات-\r\nبطارية 750 مللي أمبير-	14
90	f20d3aff-3d7a-4a65-8b57-ad141a13b32b	description	ar	السرعة 100 دورة في الدقيقة إلى 1200 دورة في الدقيقة-\r\n عزم يصل إلى 5 نيوتن / سم-\r\n إندو جولد هو الأكثر اقتصادا -	14
93	e2bfb134-5da4-452a-a70d-d55cccb82bd0	description	ar	أول محرك داخلي بدون فرش-\r\nمتانة عالية-\r\nمبني في أبيكس محدد-\r\n محرك صامت-\r\n360 درجة للتدوير زاوية مضادة-\r\n بطارية ليثيوم 2000 مللي أمبير-	14
94	683de5a1-7d57-4438-b63f-aedf8e03d376	description	ar	الشحن اللاسلكي-\r\nمحرك إندو بدون فرش-\r\nمدمج بابيكس لوكاتور-	14
95	91b542e1-d2a7-404a-ae04-34316e9b4100	description	ar	الشحن اللاسلكي-\r\nتخصيص زاوية ترددية من 20 إلى 400 درجة-\r\nأداء عالي-\r\nسرعة 100 دورة في الدقيقة إلى 2500 دورة في الدقيقة-\r\n بطارية ليثيوم 2000 مللي أمبير-\r\n360 درجة للتدوير زاوية مضادة-	14
98	042d2ad5-c4db-4dda-9b20-c9edd306b227	description	ar	-تنشيط تنظيف القنوات.\r\n-لديه 3 تيب: E93 و E96 و E98.	14
\.


--
-- Data for Name: user_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_user (id, password, last_login, is_superuser, phone, name, is_staff, is_active, email) FROM stdin;
15	pbkdf2_sha256$216000$HCOl7P65zPsF$D9nihjyYADu/zCAbwUqMCR2zecRfXKsUyK9hnCMEITA=	\N	f	01154770235	Sara Romel	f	t	sara.techno@gmail.com
36	pbkdf2_sha256$216000$1WCA8QtDwK6N$AbG298vNSy0O/TquPIphqlhQz5+wxtaDdYlPdUeNQGE=	\N	f	01111111111	Eslam Ghanem	f	t	eslam.gh707@gmail.com
38	pbkdf2_sha256$216000$YlVh6LDZfezO$MK3CtepjZ7LK1qXSeiAz0zmrI39blBMqhbTRkNxJ8Yo=	\N	f	01222212121	eslam	f	t	test@test.com
23	pbkdf2_sha256$216000$2SdzsiWW8ikm$1Ow7K+s9/kBUxQlSY8nQHGvtbDAPY6mPddIFk3UJkhU=	\N	f	01045232534	dsvdf	f	f	dvfsdf@gmail.com
19	pbkdf2_sha256$216000$vyDLsHH7rugA$HbA1a1XyfjNk3pw8mbjNF8tiGOg/8btBZJRNhIfIae4=	2022-04-12 12:29:33.761096+00	t	012345678		t	t	\N
12	pbkdf2_sha256$216000$J3mwhgsN1kgD$gXGkyC3FLWYPCOsar45A2SHQlF3fobW2KxNZVvCwcQA=	\N	f	01111737173	Loay	f	t	test@test.com
25	pbkdf2_sha256$216000$tbcUJbryBqu9$VBb6P2mV1Qj0rqMKHfEwdqsuzop/v1RQqrlrI1IY3os=	\N	f	01064574981	Maher Mohamed	f	f	mamaherseif@outlook.com
24	pbkdf2_sha256$216000$bnQQKAl0OKFA$ppjVKKgg76Ou3ELheRI6DD0smX66BakiCQzcCfKZjQM=	\N	f	01097759394	Nadine	f	f	nadeengalal99@gmail.com
21	pbkdf2_sha256$216000$zDoObUoCgikq$RGS9xBAYU6XTEQ5LEGq2wBpP+iyL4roVOFR1MO4FPfE=	\N	f	01208271271	sara Romel	f	t	sara.romel@gemail.com
22	pbkdf2_sha256$216000$Xv1QcpkzvIPx$yOOpMftoa1Os3aU/VrGwYWyzspsYE6JQyUi60Nqf8aw=	\N	f	01142403047	Mohamed Ahmed Maher	f	t	mamaherseif@outlook.com
11	pbkdf2_sha256$216000$Yt1RkFu2YPIt$CVB/vdsAETv5NZWf28aMgoKRz1eHmp1Ot6NpeTEzgj0=	\N	f	01226264270	Eslam Ghanem	f	t	eslam.gh707@gmail.com
34	pbkdf2_sha256$216000$NUByu6WkHob8$RJ+Ol7+Sd1a/ZJ/ezWJLIqfI7xa0901iCEAQoC7lfDg=	\N	f	01011731731	Eslam Ghanem	f	t	eslam.gh707@gmail.com
35	pbkdf2_sha256$216000$QG8X0kQlKLec$LDlSI03Bb02hREwPU2N9SRjaRRMfLWT7isQ4wwQB8A0=	\N	f	01226264271	Eslam Ghanem	f	f	eslam.gh707@gmail.com
37	pbkdf2_sha256$216000$xoHpvCgbmQgY$vboFaMSC/KmLOsp3ixcBni4CDFvuu24DOttzrY/tkiM=	\N	f	01251212121	Eslam Ghanem	f	f	eslam.gh707@gmail.com
41	pbkdf2_sha256$216000$yHAVXN4pJqDH$9oSr07DQQftbosvNj8Q+shxlDdJLgZnxeBlHbTzyjmI=	\N	f	01067849428	mousa nageh	f	t	200moussa200@gmail.com
40	pbkdf2_sha256$216000$Xdk5LwJQdoKW$YdXO8IGKZXch0zn6gI7/ZFbWemB+6Im72p1oa5fUWW8=	\N	f	01010081222	Abdulrahman Hashem	f	t	masben_98@hotmail.com
14	pbkdf2_sha256$216000$QFgAI4eGQgdy$6aYXIxB09TjvbbaQTG/ok3Wta7qfMan7e6G1x57/yUk=	\N	f	01000832338	mahmoud	f	f	3bdelnaser@gmail.com
42	pbkdf2_sha256$216000$IuHMNzytGmnZ$ZYzgV2Vm+iGksJURPyaOO6R9QomKrFsX1pfEX6/nDg4=	\N	f	01098872273	youssef	f	f	youssefaymanshaker@gmail.com
61	pbkdf2_sha256$216000$AeHby6np1hdz$cpRiPIVefRW0Pit3fE+WVh3U4v0vHXhk+lo2ggA9lq0=	\N	f	01126860062	ahmed	f	f	ahmedhendy777777@gmail.com
47	pbkdf2_sha256$216000$YTt34aMfIZ6I$ByV7EjnTLQwF4j1FsB7dNFwvGL1VzY3mle7K2ZpiXkw=	\N	f	01148501355	Salah	f	f	test@yahoo.com
63	pbkdf2_sha256$216000$nJEQTwbGmZhB$BTRwjltD6sP5PLITTIps5yuL7gd4OM7iG84OxZGRahc=	\N	f	01062101256	Alaa kandil	f	t	alaawaleedkandil@gmail.com
58	pbkdf2_sha256$216000$NuU7J7j2MedP$SdNVAbVqchL26UN3DmMhkR9vEhWK/HZVeg30M6xSBDw=	\N	f	01279393678	Kareem Kamal	f	t	kareem306kamal@gmail.com
44	pbkdf2_sha256$216000$5Rox37744Bym$Z+K629TKWI8Uw/A1bS4PhZfjU3Ow2rFCL/ed4cfq75A=	\N	f	01552543165	Omar Usama	f	f	omarusamaa@gmail.com
50	pbkdf2_sha256$216000$s5VFaNBblpUk$5L+2AvqPElwk4eB7LFKQDNDVv4TpYODLK8ixtp6BxUk=	\N	f	01279935727	orange test	f	f	orange@gmail.com
48	pbkdf2_sha256$216000$D1FgZ2vbqlEK$rcBLSoq2wmytmTatZAoOv7btG4PizB3e9WNYTNZLXEk=	\N	f	01283391767	ahmed samhar	f	f	ahmedsamharmomtaz@gmail.com
64	pbkdf2_sha256$216000$106oi8BfnqwJ$oaWgMcT2McgK4p37xqfNT2RbC5WMY+1qfIo2nRQRQ2E=	\N	f	01028442844	Ahmed	f	f	ahmed.kaoud4892@gmail.com
70	pbkdf2_sha256$216000$nkmweetzEnvG$kabB40QYsOJJQa4ysAWAo6ZsZP+H9hZwlBAU9j4L10k=	\N	f	01127002739	Mostafa  Khairallah	f	f	khairallah.mostafa@gmail.com
45	pbkdf2_sha256$216000$qD3gIpI5e8pk$SUxevRQF22VeSoS+8Z+i2Svq7gXalfZIkyte0CuwKmI=	\N	f	01005311175	Desouki	f	f	dina.samharr@gmail.com
43	pbkdf2_sha256$216000$a2SQAV7iyuAX$VZKb4PaMB91CINJ+qRIjGTrKPRNUejrkdRi/6YKslT0=	2024-06-04 11:30:02.89153+00	t	01009947991	Ahmed Khattab	t	t	\N
59	pbkdf2_sha256$216000$GPwXNKnnAwk6$H4we+kStWWEwz3dWysDJSR8BNh2CcICX1B9lgQ3GA5c=	\N	f	01000000000	Omar	f	f	osagheer@kashier.io
60	pbkdf2_sha256$216000$od9871nG8WLx$WSDmmyFOYD6F/YAiNGEGetNwEmBZDGSzPaunWss/n4Q=	\N	f	01202622228	Omar	f	t	osagheer@kashier.io
1	pbkdf2_sha256$216000$H95uWInmUohf$BDMWuu2+9aLJbvF4FeA0uhjfOWgAq8FEiCgssf1/Tfg=	2024-06-03 07:08:14.665075+00	t	0123456789	Az studios	t	t	az@az.com
51	pbkdf2_sha256$216000$dDcvvIexvX55$ocgjY57tLi1CfF1xQlTfo+D3YpOmP94uNcZz3NwY0GQ=	\N	f	01157968553	khaled	f	t	khaledmajd12@gmail.com
69	pbkdf2_sha256$216000$YQAGbTsXQ3N9$GQXIwcB2X6k2jY8ZdceZZelhgZ67HSbBn0wV3c6BJ1Q=	\N	f	01098872271	Shaker	f	t	youssefaymanshaker@outlook.com
65	pbkdf2_sha256$216000$ba5yKM968Gn6$fa7h2fdra4AT1sKWwJEL8167BCHuzGwiVziMPZL535M=	\N	f	01028505910	Abdullah	f	t	abhamza213@gmail.com
67	pbkdf2_sha256$216000$PE2arrRWvyoy$d25ln9gGP53aPjVdy8Uz2grlCLxks5GOZYYrNbGr4Z4=	\N	f	01020069210	Salma Muhammed	f	t	Salma2222mhmd@gmail.com
62	pbkdf2_sha256$216000$dBg4mL3u0XuV$GEyG6lw3e2scolmHTlhngtQ4Uq+IkbGxYlXEf5shfso=	2024-06-04 09:57:54.599019+00	t	01066136325	Mazen Sayed	t	t	mazen4216@gmail.com
31	pbkdf2_sha256$216000$N7PPmlWDOGsy$m/yNrlmgMQXfzwDZdpxi7HM4AKz/R/sKUbS9zDUbTug=	2024-06-04 10:45:35.574451+00	t	01121135548	karim	t	t	karimwk@hotmail.com
\.


--
-- Data for Name: user_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: user_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: user_useraddress; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_useraddress (id, name, phone, country, address, building, floor, apartment, is_default, user_id, phone_country_code, city_id) FROM stdin;
3	mohamed	0123456789	egypt	safer	28	3	5	f	1	+20	1
80	mousa	01060396411	Albania	minia	1	4	4	f	15	+20	1
78	ahmed sah	01208271271	Albania	minia	29	4	5	t	15	+20	1
93	Mohamed Maher	01142403047	Egypt	Hadayk El Ahram	273	5	703	f	22	+20	1
100	Mohamed	01142403047	Albania	asdfc gvhbgjnkl	2	2	2345	t	22	+20	1
79	Azab	01208271271	Iran	minia k09.,	29	4	2	f	15	+20	1
77	maryam	01208271271	Albania	minia	29	4	2	f	15	+20	1
98	loay moataz	01111737173	Egypt	rehab	1	1	13	t	12	+20	1
109	Eslam  Ghanem	01226264270	Albania	El sheihk st.	1	1	1	t	11	+355	1
110	eslam Ghanem	01226264270	Egypt	El sheihk st	1	1	5	f	11	+20	1
196	mahmoud Azab	01000832338	Egypt	28 mahmoud hassan st. -  elmerghany - Heliopolis, Cairo	7	5	17	f	41	+20	1
193	mousa nageh	01067849428	Egypt	el marg	3	3	3	t	41	+20	1
197	Nadine Jalal	01097759394	Egypt	lolo markt	1	2	1	f	42	+20	1
194	Youssef	01098872271	Egypt	Baron City	58	8	86	t	42	+20	1
209	karim kandil	01121135548	Egypt	8 MOHAMED YOUSSEF EL KADY - NASR CITY	8	3	6	t	31	+20	1
219	khled khled	01157968553	Egypt	aaaaa	1	1	1	t	51	+20	2
220	khled khled	01157968553	Egypt	aaaaa	1	1	1	f	51	+20	11
221	aaa aaa	01028505910	Egypt	dsfsdf	1	1	1	t	43	+20	1
222	Salma Muhammed	01020069210	Egypt	محمد شفيق عطا متفرع من سكة الوايلي حدائق القبة	71	4	15	t	67	+20	1
223	Alaa	01062101256	Egypt	7 Mostafa el nashas st	7	3	6	t	63	+20	1
224	Youssef Shaker	01098872271	Egypt	58 Baron City, El Khalifa	58	3	32	t	69	+20	1
225	ahmed khattab	01009947991	Egypt	west somid, district 4, block 19/15, villa 4, 6th of october	4	1	1	f	43	+20	1
\.


--
-- Name: FAQ_faq_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."FAQ_faq_id_seq"', 9, true);


--
-- Name: about_us_aboutus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.about_us_aboutus_id_seq', 1, true);


--
-- Name: about_us_aboutusstatistics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.about_us_aboutusstatistics_id_seq', 3, true);


--
-- Name: about_us_testimonial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.about_us_testimonial_id_seq', 5, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 191, true);


--
-- Name: cart_cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cart_cart_id_seq', 157, true);


--
-- Name: cart_cartitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cart_cartitem_id_seq', 780, true);


--
-- Name: contact_us_contactform_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contact_us_contactform_id_seq', 173, true);


--
-- Name: contact_us_contactus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contact_us_contactus_id_seq', 1, true);


--
-- Name: coupon_coupon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.coupon_coupon_id_seq', 5, true);


--
-- Name: coupon_coupon_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.coupon_coupon_users_id_seq', 1, false);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 18, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 3274, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 56, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 457, true);


--
-- Name: footer_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.footer_service_id_seq', 4, true);


--
-- Name: general_general_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.general_general_id_seq', 1, true);


--
-- Name: home_homedetails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.home_homedetails_id_seq', 1, true);


--
-- Name: home_homeswiper_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.home_homeswiper_id_seq', 19, true);


--
-- Name: home_popularproduct_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.home_popularproduct_id_seq', 8, true);


--
-- Name: offers_offer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.offers_offer_id_seq', 1, true);


--
-- Name: order_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_order_id_seq', 331, true);


--
-- Name: order_orderaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_orderaddress_id_seq', 316, true);


--
-- Name: order_orderitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_orderitem_id_seq', 593, true);


--
-- Name: order_refund_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_refund_id_seq', 58, true);


--
-- Name: order_refunditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_refunditem_id_seq', 77, true);


--
-- Name: product_branch_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_branch_id_seq', 23, true);


--
-- Name: product_brand_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_brand_id_seq', 14, true);


--
-- Name: product_productimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_productimage_id_seq', 621, true);


--
-- Name: product_productitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_productitem_id_seq', 68, true);


--
-- Name: product_productvideourl_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_productvideourl_id_seq', 95, true);


--
-- Name: product_subbranch_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_subbranch_id_seq', 71, true);


--
-- Name: product_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_type_id_seq', 13, true);


--
-- Name: product_wishlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_wishlist_id_seq', 587, true);


--
-- Name: smsa_zone_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.smsa_zone_id_seq', 6, true);


--
-- Name: smsa_zonecity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.smsa_zonecity_id_seq', 64, true);


--
-- Name: translations_translation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.translations_translation_id_seq', 98, true);


--
-- Name: user_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_user_groups_id_seq', 1, false);


--
-- Name: user_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_user_id_seq', 70, true);


--
-- Name: user_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_user_user_permissions_id_seq', 1, false);


--
-- Name: user_useraddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_useraddress_id_seq', 225, true);


--
-- Name: FAQ_faq FAQ_faq_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FAQ_faq"
    ADD CONSTRAINT "FAQ_faq_pkey" PRIMARY KEY (id);


--
-- Name: about_us_aboutus about_us_aboutus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.about_us_aboutus
    ADD CONSTRAINT about_us_aboutus_pkey PRIMARY KEY (id);


--
-- Name: about_us_aboutusstatistics about_us_aboutusstatistics_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.about_us_aboutusstatistics
    ADD CONSTRAINT about_us_aboutusstatistics_pkey PRIMARY KEY (id);


--
-- Name: about_us_testimonial about_us_testimonial_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.about_us_testimonial
    ADD CONSTRAINT about_us_testimonial_pkey PRIMARY KEY (id);


--
-- Name: article_article article_article_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_article
    ADD CONSTRAINT article_article_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: cart_cart cart_cart_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_cart
    ADD CONSTRAINT cart_cart_pkey PRIMARY KEY (id);


--
-- Name: cart_cart cart_cart_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_cart
    ADD CONSTRAINT cart_cart_user_id_key UNIQUE (user_id);


--
-- Name: cart_cartitem cart_cartitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_cartitem
    ADD CONSTRAINT cart_cartitem_pkey PRIMARY KEY (id);


--
-- Name: cart_cartitem cart_cartitem_product_id_cart_id_product_item_id_a1736938_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_cartitem
    ADD CONSTRAINT cart_cartitem_product_id_cart_id_product_item_id_a1736938_uniq UNIQUE (product_id, cart_id, product_item_id);


--
-- Name: contact_us_contactform contact_us_contactform_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_us_contactform
    ADD CONSTRAINT contact_us_contactform_pkey PRIMARY KEY (id);


--
-- Name: contact_us_contactus contact_us_contactus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_us_contactus
    ADD CONSTRAINT contact_us_contactus_pkey PRIMARY KEY (id);


--
-- Name: coupon_coupon coupon_coupon_code_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coupon_coupon
    ADD CONSTRAINT coupon_coupon_code_key UNIQUE (code);


--
-- Name: coupon_coupon coupon_coupon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coupon_coupon
    ADD CONSTRAINT coupon_coupon_pkey PRIMARY KEY (id);


--
-- Name: coupon_coupon_users coupon_coupon_users_coupon_id_user_id_00e9720c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coupon_coupon_users
    ADD CONSTRAINT coupon_coupon_users_coupon_id_user_id_00e9720c_uniq UNIQUE (coupon_id, user_id);


--
-- Name: coupon_coupon_users coupon_coupon_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coupon_coupon_users
    ADD CONSTRAINT coupon_coupon_users_pkey PRIMARY KEY (id);


--
-- Name: courses_course courses_course_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_course
    ADD CONSTRAINT courses_course_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: footer_service footer_service_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_service
    ADD CONSTRAINT footer_service_pkey PRIMARY KEY (id);


--
-- Name: footer_service footer_service_title_f0029531_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_service
    ADD CONSTRAINT footer_service_title_f0029531_uniq UNIQUE (title);


--
-- Name: general_general general_general_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.general_general
    ADD CONSTRAINT general_general_pkey PRIMARY KEY (id);


--
-- Name: home_homedetails home_homedetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_homedetails
    ADD CONSTRAINT home_homedetails_pkey PRIMARY KEY (id);


--
-- Name: home_homeswiper home_homeswiper_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_homeswiper
    ADD CONSTRAINT home_homeswiper_pkey PRIMARY KEY (id);


--
-- Name: home_popularproduct home_popularproduct_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_popularproduct
    ADD CONSTRAINT home_popularproduct_pkey PRIMARY KEY (id);


--
-- Name: home_popularproduct home_popularproduct_product_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_popularproduct
    ADD CONSTRAINT home_popularproduct_product_id_key UNIQUE (product_id);


--
-- Name: offers_offer offers_offer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.offers_offer
    ADD CONSTRAINT offers_offer_pkey PRIMARY KEY (id);


--
-- Name: order_order order_order_code_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_order
    ADD CONSTRAINT order_order_code_key UNIQUE (code);


--
-- Name: order_order order_order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_order
    ADD CONSTRAINT order_order_pkey PRIMARY KEY (id);


--
-- Name: order_orderaddress order_orderaddress_order_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_orderaddress
    ADD CONSTRAINT order_orderaddress_order_id_key UNIQUE (order_id);


--
-- Name: order_orderaddress order_orderaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_orderaddress
    ADD CONSTRAINT order_orderaddress_pkey PRIMARY KEY (id);


--
-- Name: order_orderitem order_orderitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_orderitem
    ADD CONSTRAINT order_orderitem_pkey PRIMARY KEY (id);


--
-- Name: order_refund order_refund_order_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_refund
    ADD CONSTRAINT order_refund_order_id_key UNIQUE (order_id);


--
-- Name: order_refund order_refund_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_refund
    ADD CONSTRAINT order_refund_pkey PRIMARY KEY (id);


--
-- Name: order_refunditem order_refunditem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_refunditem
    ADD CONSTRAINT order_refunditem_pkey PRIMARY KEY (id);


--
-- Name: order_refunditem order_refunditem_refund_id_order_item_id_3893fdb8_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_refunditem
    ADD CONSTRAINT order_refunditem_refund_id_order_item_id_3893fdb8_uniq UNIQUE (refund_id, order_item_id);


--
-- Name: product_branch product_branch_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_branch
    ADD CONSTRAINT product_branch_pkey PRIMARY KEY (id);


--
-- Name: product_brand product_brand_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_brand
    ADD CONSTRAINT product_brand_pkey PRIMARY KEY (id);


--
-- Name: product_product product_product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_pkey PRIMARY KEY (id);


--
-- Name: product_productimage product_productimage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_productimage
    ADD CONSTRAINT product_productimage_pkey PRIMARY KEY (id);


--
-- Name: product_productitem product_productitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_productitem
    ADD CONSTRAINT product_productitem_pkey PRIMARY KEY (id);


--
-- Name: product_productvideourl product_productvideourl_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_productvideourl
    ADD CONSTRAINT product_productvideourl_pkey PRIMARY KEY (id);


--
-- Name: product_subbranch product_subbranch_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_subbranch
    ADD CONSTRAINT product_subbranch_pkey PRIMARY KEY (id);


--
-- Name: product_type product_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_type
    ADD CONSTRAINT product_type_pkey PRIMARY KEY (id);


--
-- Name: product_wishlist product_wishlist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_wishlist
    ADD CONSTRAINT product_wishlist_pkey PRIMARY KEY (id);


--
-- Name: product_wishlist product_wishlist_product_id_user_id_71d54ab3_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_wishlist
    ADD CONSTRAINT product_wishlist_product_id_user_id_71d54ab3_uniq UNIQUE (product_id, user_id);


--
-- Name: smsa_zone smsa_zone_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.smsa_zone
    ADD CONSTRAINT smsa_zone_pkey PRIMARY KEY (id);


--
-- Name: smsa_zonecity smsa_zonecity_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.smsa_zonecity
    ADD CONSTRAINT smsa_zonecity_name_key UNIQUE (name);


--
-- Name: smsa_zonecity smsa_zonecity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.smsa_zonecity
    ADD CONSTRAINT smsa_zonecity_pkey PRIMARY KEY (id);


--
-- Name: translations_translation translations_translation_content_type_id_object_i_82ea2ee3_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.translations_translation
    ADD CONSTRAINT translations_translation_content_type_id_object_i_82ea2ee3_uniq UNIQUE (content_type_id, object_id, field, language);


--
-- Name: translations_translation translations_translation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.translations_translation
    ADD CONSTRAINT translations_translation_pkey PRIMARY KEY (id);


--
-- Name: user_user_groups user_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_pkey PRIMARY KEY (id);


--
-- Name: user_user_groups user_user_groups_user_id_group_id_bb60391f_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_user_id_group_id_bb60391f_uniq UNIQUE (user_id, group_id);


--
-- Name: user_user user_user_phone_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user
    ADD CONSTRAINT user_user_phone_key UNIQUE (phone);


--
-- Name: user_user user_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user
    ADD CONSTRAINT user_user_pkey PRIMARY KEY (id);


--
-- Name: user_user_user_permissions user_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: user_user_user_permissions user_user_user_permissions_user_id_permission_id_64f4d5b8_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permissions_user_id_permission_id_64f4d5b8_uniq UNIQUE (user_id, permission_id);


--
-- Name: user_useraddress user_useraddress_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_useraddress
    ADD CONSTRAINT user_useraddress_pkey PRIMARY KEY (id);


--
-- Name: about_us_aboutusstatistics_about_us_id_13823c07; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX about_us_aboutusstatistics_about_us_id_13823c07 ON public.about_us_aboutusstatistics USING btree (about_us_id);


--
-- Name: about_us_testimonial_about_us_id_e358f81a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX about_us_testimonial_about_us_id_e358f81a ON public.about_us_testimonial USING btree (about_us_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: cart_cart_coupon_id_0e43a044; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cart_cart_coupon_id_0e43a044 ON public.cart_cart USING btree (coupon_id);


--
-- Name: cart_cartitem_cart_id_370ad265; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cart_cartitem_cart_id_370ad265 ON public.cart_cartitem USING btree (cart_id);


--
-- Name: cart_cartitem_product_id_b24e265a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cart_cartitem_product_id_b24e265a ON public.cart_cartitem USING btree (product_id);


--
-- Name: cart_cartitem_product_item_id_184388cc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cart_cartitem_product_item_id_184388cc ON public.cart_cartitem USING btree (product_item_id);


--
-- Name: coupon_coupon_code_2c51cdb0_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX coupon_coupon_code_2c51cdb0_like ON public.coupon_coupon USING btree (code varchar_pattern_ops);


--
-- Name: coupon_coupon_users_coupon_id_6e60d315; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX coupon_coupon_users_coupon_id_6e60d315 ON public.coupon_coupon_users USING btree (coupon_id);


--
-- Name: coupon_coupon_users_user_id_42523d75; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX coupon_coupon_users_user_id_42523d75 ON public.coupon_coupon_users USING btree (user_id);


--
-- Name: courses_course_branch_id_9d5d077d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX courses_course_branch_id_9d5d077d ON public.courses_course USING btree (branch_id);


--
-- Name: courses_course_brand_id_5c5d5e87; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX courses_course_brand_id_5c5d5e87 ON public.courses_course USING btree (brand_id);


--
-- Name: courses_course_type_id_a7bfde75; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX courses_course_type_id_a7bfde75 ON public.courses_course USING btree (type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: footer_service_slug_c5f8c86d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_service_slug_c5f8c86d ON public.footer_service USING btree (slug);


--
-- Name: footer_service_slug_c5f8c86d_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_service_slug_c5f8c86d_like ON public.footer_service USING btree (slug varchar_pattern_ops);


--
-- Name: footer_service_title_f0029531_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_service_title_f0029531_like ON public.footer_service USING btree (title varchar_pattern_ops);


--
-- Name: home_popularproduct_product_id_68848e0e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_popularproduct_product_id_68848e0e_like ON public.home_popularproduct USING btree (product_id varchar_pattern_ops);


--
-- Name: order_order_code_30c16a65_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX order_order_code_30c16a65_like ON public.order_order USING btree (code varchar_pattern_ops);


--
-- Name: order_order_coupon_id_dc594905; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX order_order_coupon_id_dc594905 ON public.order_order USING btree (coupon_id);


--
-- Name: order_order_user_id_7cf9bc2b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX order_order_user_id_7cf9bc2b ON public.order_order USING btree (user_id);


--
-- Name: order_orderitem_order_id_aba34f44; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX order_orderitem_order_id_aba34f44 ON public.order_orderitem USING btree (order_id);


--
-- Name: order_refunditem_order_item_id_7721baae; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX order_refunditem_order_item_id_7721baae ON public.order_refunditem USING btree (order_item_id);


--
-- Name: order_refunditem_refund_id_41a61091; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX order_refunditem_refund_id_41a61091 ON public.order_refunditem USING btree (refund_id);


--
-- Name: product_branch_type_id_af018a0f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_branch_type_id_af018a0f ON public.product_branch USING btree (type_id);


--
-- Name: product_product_branch_id_994c0896; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_product_branch_id_994c0896 ON public.product_product USING btree (branch_id);


--
-- Name: product_product_brand_id_fcf1b3f3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_product_brand_id_fcf1b3f3 ON public.product_product USING btree (brand_id);


--
-- Name: product_product_sub_branch_id_85822d09; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_product_sub_branch_id_85822d09 ON public.product_product USING btree (sub_branch_id);


--
-- Name: product_product_type_id_db92a7b7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_product_type_id_db92a7b7 ON public.product_product USING btree (type_id);


--
-- Name: product_productimage_product_id_544084bb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_productimage_product_id_544084bb ON public.product_productimage USING btree (product_id);


--
-- Name: product_productitem_product_id_16cb97c8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_productitem_product_id_16cb97c8 ON public.product_productitem USING btree (product_id);


--
-- Name: product_productitem_product_id_16cb97c8_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_productitem_product_id_16cb97c8_like ON public.product_productitem USING btree (product_id varchar_pattern_ops);


--
-- Name: product_productvideourl_product_id_87f30c67; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_productvideourl_product_id_87f30c67 ON public.product_productvideourl USING btree (product_id);


--
-- Name: product_subbranch_branch_id_01cd391c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_subbranch_branch_id_01cd391c ON public.product_subbranch USING btree (branch_id);


--
-- Name: product_wishlist_product_id_b03db3f1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_wishlist_product_id_b03db3f1 ON public.product_wishlist USING btree (product_id);


--
-- Name: product_wishlist_user_id_8e563a6f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_wishlist_user_id_8e563a6f ON public.product_wishlist USING btree (user_id);


--
-- Name: smsa_zonecity_name_d1b16358_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX smsa_zonecity_name_d1b16358_like ON public.smsa_zonecity USING btree (name varchar_pattern_ops);


--
-- Name: smsa_zonecity_zone_id_32839811; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX smsa_zonecity_zone_id_32839811 ON public.smsa_zonecity USING btree (zone_id);


--
-- Name: translations_translation_content_type_id_df479760; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX translations_translation_content_type_id_df479760 ON public.translations_translation USING btree (content_type_id);


--
-- Name: user_user_groups_group_id_c57f13c0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_user_groups_group_id_c57f13c0 ON public.user_user_groups USING btree (group_id);


--
-- Name: user_user_groups_user_id_13f9a20d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_user_groups_user_id_13f9a20d ON public.user_user_groups USING btree (user_id);


--
-- Name: user_user_phone_9279a142_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_user_phone_9279a142_like ON public.user_user USING btree (phone varchar_pattern_ops);


--
-- Name: user_user_user_permissions_permission_id_ce49d4de; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_user_user_permissions_permission_id_ce49d4de ON public.user_user_user_permissions USING btree (permission_id);


--
-- Name: user_user_user_permissions_user_id_31782f58; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_user_user_permissions_user_id_31782f58 ON public.user_user_user_permissions USING btree (user_id);


--
-- Name: user_useraddress_city_id_85886481; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_useraddress_city_id_85886481 ON public.user_useraddress USING btree (city_id);


--
-- Name: user_useraddress_user_id_c23aded4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_useraddress_user_id_c23aded4 ON public.user_useraddress USING btree (user_id);


--
-- Name: about_us_aboutusstatistics about_us_aboutusstat_about_us_id_13823c07_fk_about_us_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.about_us_aboutusstatistics
    ADD CONSTRAINT about_us_aboutusstat_about_us_id_13823c07_fk_about_us_ FOREIGN KEY (about_us_id) REFERENCES public.about_us_aboutus(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: about_us_testimonial about_us_testimonial_about_us_id_e358f81a_fk_about_us_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.about_us_testimonial
    ADD CONSTRAINT about_us_testimonial_about_us_id_e358f81a_fk_about_us_ FOREIGN KEY (about_us_id) REFERENCES public.about_us_aboutus(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cart_cart cart_cart_coupon_id_0e43a044_fk_coupon_coupon_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_cart
    ADD CONSTRAINT cart_cart_coupon_id_0e43a044_fk_coupon_coupon_id FOREIGN KEY (coupon_id) REFERENCES public.coupon_coupon(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cart_cart cart_cart_user_id_9b4220b9_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_cart
    ADD CONSTRAINT cart_cart_user_id_9b4220b9_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cart_cartitem cart_cartitem_cart_id_370ad265_fk_cart_cart_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_cartitem
    ADD CONSTRAINT cart_cartitem_cart_id_370ad265_fk_cart_cart_id FOREIGN KEY (cart_id) REFERENCES public.cart_cart(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cart_cartitem cart_cartitem_product_id_b24e265a_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_cartitem
    ADD CONSTRAINT cart_cartitem_product_id_b24e265a_fk FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cart_cartitem cart_cartitem_product_item_id_184388cc_fk_product_p; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_cartitem
    ADD CONSTRAINT cart_cartitem_product_item_id_184388cc_fk_product_p FOREIGN KEY (product_item_id) REFERENCES public.product_productitem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coupon_coupon_users coupon_coupon_users_coupon_id_6e60d315_fk_coupon_coupon_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coupon_coupon_users
    ADD CONSTRAINT coupon_coupon_users_coupon_id_6e60d315_fk_coupon_coupon_id FOREIGN KEY (coupon_id) REFERENCES public.coupon_coupon(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coupon_coupon_users coupon_coupon_users_user_id_42523d75_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coupon_coupon_users
    ADD CONSTRAINT coupon_coupon_users_user_id_42523d75_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: courses_course courses_course_branch_id_9d5d077d_fk_product_branch_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_course
    ADD CONSTRAINT courses_course_branch_id_9d5d077d_fk_product_branch_id FOREIGN KEY (branch_id) REFERENCES public.product_branch(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: courses_course courses_course_brand_id_5c5d5e87_fk_product_brand_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_course
    ADD CONSTRAINT courses_course_brand_id_5c5d5e87_fk_product_brand_id FOREIGN KEY (brand_id) REFERENCES public.product_brand(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: courses_course courses_course_type_id_a7bfde75_fk_product_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_course
    ADD CONSTRAINT courses_course_type_id_a7bfde75_fk_product_type_id FOREIGN KEY (type_id) REFERENCES public.product_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_popularproduct home_popularproduct_product_id_68848e0e_fk_product_product_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_popularproduct
    ADD CONSTRAINT home_popularproduct_product_id_68848e0e_fk_product_product_id FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: order_order order_order_coupon_id_dc594905_fk_coupon_coupon_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_order
    ADD CONSTRAINT order_order_coupon_id_dc594905_fk_coupon_coupon_id FOREIGN KEY (coupon_id) REFERENCES public.coupon_coupon(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: order_order order_order_user_id_7cf9bc2b_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_order
    ADD CONSTRAINT order_order_user_id_7cf9bc2b_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: order_orderaddress order_orderaddress_order_id_1319f7ef_fk_order_order_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_orderaddress
    ADD CONSTRAINT order_orderaddress_order_id_1319f7ef_fk_order_order_id FOREIGN KEY (order_id) REFERENCES public.order_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: order_orderitem order_orderitem_order_id_aba34f44_fk_order_order_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_orderitem
    ADD CONSTRAINT order_orderitem_order_id_aba34f44_fk_order_order_id FOREIGN KEY (order_id) REFERENCES public.order_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: order_refund order_refund_order_id_cc495479_fk_order_order_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_refund
    ADD CONSTRAINT order_refund_order_id_cc495479_fk_order_order_id FOREIGN KEY (order_id) REFERENCES public.order_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: order_refunditem order_refunditem_order_item_id_7721baae_fk_order_orderitem_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_refunditem
    ADD CONSTRAINT order_refunditem_order_item_id_7721baae_fk_order_orderitem_id FOREIGN KEY (order_item_id) REFERENCES public.order_orderitem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: order_refunditem order_refunditem_refund_id_41a61091_fk_order_refund_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_refunditem
    ADD CONSTRAINT order_refunditem_refund_id_41a61091_fk_order_refund_id FOREIGN KEY (refund_id) REFERENCES public.order_refund(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_branch product_branch_type_id_af018a0f_fk_product_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_branch
    ADD CONSTRAINT product_branch_type_id_af018a0f_fk_product_type_id FOREIGN KEY (type_id) REFERENCES public.product_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_product product_product_branch_id_994c0896_fk_product_branch_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_branch_id_994c0896_fk_product_branch_id FOREIGN KEY (branch_id) REFERENCES public.product_branch(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_product product_product_brand_id_fcf1b3f3_fk_product_brand_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_brand_id_fcf1b3f3_fk_product_brand_id FOREIGN KEY (brand_id) REFERENCES public.product_brand(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_product product_product_sub_branch_id_85822d09_fk_product_subbranch_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_sub_branch_id_85822d09_fk_product_subbranch_id FOREIGN KEY (sub_branch_id) REFERENCES public.product_subbranch(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_product product_product_type_id_db92a7b7_fk_product_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_type_id_db92a7b7_fk_product_type_id FOREIGN KEY (type_id) REFERENCES public.product_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_productimage product_productimage_product_id_544084bb_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_productimage
    ADD CONSTRAINT product_productimage_product_id_544084bb_fk FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_productitem product_productitem_product_id_16cb97c8_fk_product_product_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_productitem
    ADD CONSTRAINT product_productitem_product_id_16cb97c8_fk_product_product_id FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_productvideourl product_productvideourl_product_id_87f30c67_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_productvideourl
    ADD CONSTRAINT product_productvideourl_product_id_87f30c67_fk FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_subbranch product_subbranch_branch_id_01cd391c_fk_product_branch_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_subbranch
    ADD CONSTRAINT product_subbranch_branch_id_01cd391c_fk_product_branch_id FOREIGN KEY (branch_id) REFERENCES public.product_branch(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_wishlist product_wishlist_product_id_b03db3f1_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_wishlist
    ADD CONSTRAINT product_wishlist_product_id_b03db3f1_fk FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_wishlist product_wishlist_user_id_8e563a6f_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_wishlist
    ADD CONSTRAINT product_wishlist_user_id_8e563a6f_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: smsa_zonecity smsa_zonecity_zone_id_32839811_fk_smsa_zone_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.smsa_zonecity
    ADD CONSTRAINT smsa_zonecity_zone_id_32839811_fk_smsa_zone_id FOREIGN KEY (zone_id) REFERENCES public.smsa_zone(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: translations_translation translations_transla_content_type_id_df479760_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.translations_translation
    ADD CONSTRAINT translations_transla_content_type_id_df479760_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_groups user_user_groups_group_id_c57f13c0_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_group_id_c57f13c0_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_groups user_user_groups_user_id_13f9a20d_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_user_id_13f9a20d_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_user_permissions user_user_user_permi_permission_id_ce49d4de_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permi_permission_id_ce49d4de_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_user_permissions user_user_user_permissions_user_id_31782f58_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permissions_user_id_31782f58_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_useraddress user_useraddress_city_id_85886481_fk_smsa_zonecity_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_useraddress
    ADD CONSTRAINT user_useraddress_city_id_85886481_fk_smsa_zonecity_id FOREIGN KEY (city_id) REFERENCES public.smsa_zonecity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_useraddress user_useraddress_user_id_c23aded4_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_useraddress
    ADD CONSTRAINT user_useraddress_user_id_c23aded4_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

