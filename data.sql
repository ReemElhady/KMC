--
-- PostgreSQL database dump
--

-- Dumped from database version 10.19
-- Dumped by pg_dump version 10.19

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
    name character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    text text NOT NULL,
    about_us_id integer NOT NULL
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
    about_us_3_image character varying(100),
    about_us_4_image character varying(100)
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
    title character varying(255) NOT NULL,
    media character varying(100) NOT NULL,
    quote character varying(255) NOT NULL,
    button_text character varying(255) NOT NULL,
    button_link character varying(255) NOT NULL
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
    points_paid integer NOT NULL,
    total_price double precision NOT NULL,
    created_at timestamp with time zone NOT NULL,
    order_status character varying(255) NOT NULL,
    payment_type character varying(255) NOT NULL,
    transaction_id character varying(255),
    delivery_date date,
    coupon_id integer,
    user_id integer NOT NULL,
    points_value double precision NOT NULL,
    tax_value double precision NOT NULL,
    registered_order_id character varying(255),
    one_point_value double precision NOT NULL,
    compelted_at date,
    CONSTRAINT order_order_points_paid_check CHECK ((points_paid >= 0))
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
    phone_country_code character varying(5) NOT NULL
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
    return_points integer NOT NULL,
    product_title_ar character varying(255),
    product_uuid character varying(255),
    product_item_title character varying(255),
    product_item_type character varying(255),
    CONSTRAINT order_orderitem_quantity_check CHECK ((quantity >= 0)),
    CONSTRAINT order_orderitem_return_points_check CHECK ((return_points >= 0))
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
-- Name: points_points; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.points_points (
    id integer NOT NULL,
    points integer NOT NULL,
    expire_date date NOT NULL,
    is_expired boolean NOT NULL,
    order_id integer NOT NULL,
    user_id integer NOT NULL,
    used_points integer NOT NULL,
    CONSTRAINT points_points_points_check CHECK ((points >= 0)),
    CONSTRAINT points_points_used_points_check CHECK ((used_points >= 0))
);


ALTER TABLE public.points_points OWNER TO postgres;

--
-- Name: points_points_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.points_points_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.points_points_id_seq OWNER TO postgres;

--
-- Name: points_points_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.points_points_id_seq OWNED BY public.points_points.id;


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
    sale_price double precision NOT NULL,
    stock integer NOT NULL,
    rate integer NOT NULL,
    point_price integer NOT NULL,
    is_archived boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    branch_id integer NOT NULL,
    brand_id integer NOT NULL,
    sub_branch_id integer,
    type_id integer NOT NULL,
    product_item_title character varying(255),
    CONSTRAINT product_product_point_price_check CHECK ((point_price >= 0)),
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
-- Name: product_review; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_review (
    id integer NOT NULL,
    content text,
    rate integer NOT NULL,
    product_id character varying(255) NOT NULL,
    user_id integer NOT NULL,
    CONSTRAINT product_review_rate_check CHECK ((rate >= 0))
);


ALTER TABLE public.product_review OWNER TO postgres;

--
-- Name: product_review_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_review_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_review_id_seq OWNER TO postgres;

--
-- Name: product_review_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_review_id_seq OWNED BY public.product_review.id;


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
-- Name: user_otp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_otp (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    code character varying(6) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.user_otp OWNER TO postgres;

--
-- Name: user_otp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_otp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_otp_id_seq OWNER TO postgres;

--
-- Name: user_otp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_otp_id_seq OWNED BY public.user_otp.id;


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
    city character varying(255) NOT NULL,
    address text NOT NULL,
    building character varying(255) NOT NULL,
    floor character varying(255),
    apartment character varying(255),
    is_default boolean NOT NULL,
    user_id integer NOT NULL,
    phone_country_code character varying(5) NOT NULL
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
-- Name: points_points id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.points_points ALTER COLUMN id SET DEFAULT nextval('public.points_points_id_seq'::regclass);


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
-- Name: product_review id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_review ALTER COLUMN id SET DEFAULT nextval('public.product_review_id_seq'::regclass);


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
-- Name: translations_translation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.translations_translation ALTER COLUMN id SET DEFAULT nextval('public.translations_translation_id_seq'::regclass);


--
-- Name: user_otp id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_otp ALTER COLUMN id SET DEFAULT nextval('public.user_otp_id_seq'::regclass);


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
1	About Us	Kandil Medical Company was founded in 1989 by Dr. Waleed Kandil, originally based in Heliopolis with a capital of five thousand Egytpian pounds and just two employees distributing dental materials and devices. KMC has now grown to be a large and well-established Egyptian medical company with branches all over Egypt: Heliopolis, El Manial, Alexandria, Nasr City, El Qasr El-Ainy. Contacts has also been made on an international scale with the US, UK, Canada and China, introducing multinational brands to the Egyptian market to achieve the mission to continuously supply the newest and updated dentistry technology that serves the Egyptian market in the most professional and effective way possible.	about_us/about/about_us.jpeg	Testimonials	Here's some of what our customers said about KMC.	about_us/testimonial/atikah-akhtar-XJptUS8nbhs-unsplash.jpeg
\.


--
-- Data for Name: about_us_aboutusstatistics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.about_us_aboutusstatistics (id, sav, number, text, about_us_id) FROM stdin;
2	about_us/statistic/Group_674_HS3xxzi.svg	30	Brands	1
1	about_us/statistic/Group_672.svg	334	Happy Customers	1
3	about_us/statistic/Group_675.svg	70	Cilincs & Centers	1
\.


--
-- Data for Name: about_us_testimonial; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.about_us_testimonial (id, name, title, text, about_us_id) FROM stdin;
2	Devserver 1	NueroEsptalia El motamyz	Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia libero maxime consequuntur quod totam similique est vitae distinctio, nulla accusantium commodi soluta vero aliquam autem expedita magni optio, consectetur ab. Lorem ipsum dolor, sit amet consectetur dipisicing elit.	1
3	Devserver 2	NueroEsptalia El sheikh zayed	Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia libero maxime consequuntur quod totam similique est vitae distinctio, nulla accusantium commodi soluta vero aliquam autem expedita magni optio, consectetur ab. Lorem ipsum dolor, sit amet consectetur dipisicing elit.	1
1	Dr.Khaled Ammar	Elhayah Center Dentistry	Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia libero maxime consequuntur quod totam similique est vitae distinctio, nulla accusantium commodi soluta vero aliquam autem expedita magni optio, consectetur ab. optio, consectetur ab. optio, consectetur ab.	1
\.


--
-- Data for Name: article_article; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.article_article (id, created_at, article_image, article_title, article_text, article_writer, article_department, "isArchived") FROM stdin;
1a1b66e9-d558-478d-8a6b-b0a9885a995f	2022-06-19 11:26:52.893689+00	article/Brush_teeth.jpeg	How to brush your teeth properly	Brushing your teeth is an important part of your dental care routine. For a healthy mouth and smile the ADA recommends you:\r\n\r\nBrush your teeth twice a day with a soft-bristled brush. The size and shape of your brush should fit your mouth allowing you to reach all areas easily.\r\nReplace your toothbrush every three or four months, or sooner if the bristles are frayed. A worn toothbrush won’t do a good job of cleaning your teeth.\r\nMake sure to use an ADA-accepted fluoride toothpaste.\r\nThe proper brushing technique is to:\r\nPlace your toothbrush at a 45-degree angle to the gums. \r\nGently move the brush back and forth in short (tooth-wide) strokes. \r\nBrush the outer surfaces, the inner surfaces, and the chewing surfaces of the teeth.\r\nTo clean the inside surfaces of the front teeth, tilt the brush vertically and make several up-and-down strokes.\r\nOf course, brushing your teeth is only a part of a complete dental care routine. You should also make sure to:\r\n\r\nClean between teeth daily once a day. Tooth decay-causing bacteria still linger between teeth where toothbrush bristles can’t reach. This helps remove plaque and food particles from between the teeth and under the gum line.\r\nEat a balanced diet that limits sugary beverages and snacks.\r\nSee your dentist regularly for prevention and treatment of oral disease.	ADA	Dental	f
3ce51006-6393-4fa8-8684-a4ce6520151c	2022-10-16 11:15:59.34717+00	article/Screenshot_2022-10-16_125323.jpeg	A naturalistic study of brushing patterns using powered toothbrushes.	Abstract\r\nDental caries and periodontal disease are very common chronic diseases closely linked to\r\ninadequate removal of dental plaque. Powered toothbrushes are viewed as more effective\r\nat removing plaque; however, the conflicting evidence and considerable unexplained heterogeneity in their clinical outcomes does not corroborate the relative merits of powered\r\ntooth brushing. To explain the heterogeneity of brushing patterns with powered toothbrushes, we conducted a observational study of tooth brushing practices of 12 participants\r\nin their naturalistic setting. Integrated brush sensors and a digital data collection platform\r\nallowed unobtrusive and accurate capture of habitual brushing patterns. Annotated brushing\r\ndata from 10 sessions per participant was chosen for scrutiny of brushing patterns. Analysis\r\nof brushing patterns from the total 120 sessions revealed substantial between- and withinparticipant variability in brushing patterns and efficiency. Most participants (91.67%)\r\nbrushed for less than the generally prescribed two minutes; individual participants were also\r\ninconsistent in brushing duration across sessions. The time devoted to brushing different\r\ndental regions was also quite unequal. Participants generally brushed their buccal tooth surfaces more than twice as long as the occlusal (2.18 times longer (95% CI 1.42, 3.35; p <\r\n0.001)) and lingual surfaces (2.22 times longer (95% CI 1.62, 3.10; p < 0.001); the lingual\r\nsurfaces of the maxillary molars were often neglected (p < 0.001). Participants also varied in\r\nthe epochs of excessive brushing pressure and the regions to which they were applied. In\r\ngeneral, the occlusal surfaces were more likely to be brushed with excessive pressure (95%\r\nCI 0.10, 0.98; p = 0.015). Our study reveals that users of powered toothbrushes vary substantially in their use of the toothbrushes and diverge from recommended brushing practices. The inconsistent brushing patterns, between and within individuals, can affect\r\neffective plaque removal. Our findings underscore the limited uptake of generic oral selfcare recommendations and emphasize the need for personalized brushing recommendations that derive from the objective sensor data provided by powered toothbrushes\r\nIntroduction\r\nDental caries and periodontal disease are very common chronic diseases closely linked to inadequate oral self-care [1,2]. Scientific evidence indicates that regular and systematic toothbrushing prevents the accumulation of dental plaque that leads to gum disease, tooth decay, and\r\neventually, tooth loss [3,4]. Thus, most efforts to reduce the incidence and impact of dental disease focus on toothbrushing techniques and strategies that reduce the accumulation of plaque.\r\nAlthough manual toothbrushes are the most commonly used tools for plaque control, powered\r\ntoothbrushes are gaining increasing acceptance as alternatives, especially for children, people\r\nwith disabilities or limited mobility, and older adults. Automated powered toothbrushes minimize the manual efforts of brushing and incorporate timers to reinforce brushing duration;\r\nthus, they are viewed as more effective at removing plaque than manual brushes [5]. Despite a\r\nsubstantial heterogeneity (I(2) > 80%) in plaque removal, the Cochrane meta-analyses found\r\nthat powered toothbrushes produced an 11% reduction in plaque at one to three months of\r\nuse and a 21% reduction in plaque after three months of use [5].\r\nThe considerable heterogeneity in plaque removal with powered toothbrushes (I(2) > 80%)\r\nobserved in the Cochrane study [5], could not be explained by the difference in types of powered toothbrushes and more likely derives from by varying brushing patterns. For toothbrushing to be effective, all dental surfaces need to be cleaned frequently and adequately; otherwise,\r\nthe practical value of toothbrushing is low. Brushing frequency, duration, and technique are\r\nkey determinants of adequate plaque reduction and optimal oral self-care.\r\nBrushing techniques commonly recommended by dental professionals [6] are based on\r\nmanual toothbrushes [6,7]. They do not readily translate to brushing with powered toothbrushes where the user guides but does not animate the brush head. Studies that have\r\nattempted to clarify brushing patterns with powered toothbrushes have largely focused on\r\nbetween-individual variations determined through video recordings obtained in controlled\r\nclinical settings [8]. Such snapshot observations ignore within-participant variations in brushing behaviors and patterns across multiple sessions. Moreover, the external validity of the\r\nassessments in simulated environments suffers because brushing behavior patterns recorded\r\nin research settings may not reflect naturalistic, real-world practices.\r\nTo explain the heterogeneity of brushing patterns with rotation-oscillation powered toothbrushes, we conducted an observational study of individuals in their home settings. Sensors\r\nembedded within the powered toothbrush and concurrent video recordings of brushing sessions ensured data fidelity and ecological validity across multiple days. Our objective was to\r\ngather accurate data on habitual brushing patterns using powered toothbrushes, with a focus\r\non the duration of each session, tooth surfaces covered, and episodes of excessive brushing\r\npressure per session. By examining habitual brushing patterns at the individual and sessionlevel, we sought to clarify between-person and session-to-session variability in brushing patterns and efficiency using powered toothbrushes.\r\nMaterials and methods\r\nThis study comprised part of a larger study involving machine learning approaches to characterize toothbrushing behaviors and develop a brushing efficiency score. As part of the parent\r\nstudy, 12 healthy college students with no evident dental disease, provided their brushing data\r\nin the home setting over three weeks (50 sessions each). Basic instruction on the use of the\r\nbrush and setting up the data collection system was given and the participants were instructed\r\nto freely brush their teeth in a manner most natural to them. All participants provided written\r\ninformed consent and the study protocol was reviewed and approved by the Institutional\r\nReview Board of the University of California, Los Angeles (IRB#18–000874).\r\nData collection infrastructure\r\nTo allow objective, individual-level, and ecologically-valid data on oral hygiene behaviors, we\r\ndeployed the Remote Oral Behaviors Assessment System (ROBAS) described previously [9].\r\nBriefly, ROBAS builds on a broadly available consumer-grade powered toothbrush (Oral-B\r\nGenius X; Procter & Gamble) as the data source for brushing behaviors (timing, duration,\r\npressure applied). The Oral-B brush employs a rotational-oscillation mode of action and\r\nbrushing movements are captured by an accelerometer, gyroscope, and pressure sensor contained within the powered brush. Captured data is transmitted over BLE (Bluetooth Low\r\nEnergy) to a paired smartphone running the companion data collection app. Collected data is\r\nthen uploaded to a secure cloud server for remote monitoring of data yields and analytics.\r\nVisualization of time-series data streams of brushing episodes and remote monitoring of sensor function and participant compliance is accomplished through an adaptation of the open\r\nplatform Grafana™ dashboard [10].\r\nData collection\r\nUpon enrollment, each participant was provided an Oral-B powered toothbrush, a suctioncup phone mount, charger, and quick-start instructions. Participants downloaded the studyspecific app onto their own smartphone and paired it to the powered brush. Participants were\r\ninstructed on the operation of the powered brush and on how to mount the smartphone to\r\ntheir bathroom mirror during a brushing session for the duration of the study (3 weeks). Participants were instructed to brush twice daily for two minutes each time. At the start of each\r\nbrushing session, participants launched the study app and activated the smartphone camera.\r\nData from the embedded sensors was buffered by the brush and transmitted to the study\r\nphone via Bluetooth. Turning off the toothbrush ended data collection and triggered the app\r\nto save the timestamped brushing data. The brushing session data and the corresponding\r\nvideoclip were then uploaded via the ROBAS platform to a secure cloud server for subsequent\r\nanalysis. The ROBAS platform with integrated Grafana™ dashboard allowed research staff to\r\nremotely monitor data feeds and conduct quality checks.\r\nData processing and annotation\r\nWe selected 10 sessions (out of the 50 recorded sessions per participant) at random for a total\r\nof 120 brushing sessions across the 12 participants. To establish ground truth information,\r\ntrained and calibrated researchers reviewed and annotated the individual video recordings,\r\nfocusing on tooth surface coverage as well as brushing duration of each surface. Every epoch of\r\nbrushing a dental region that lasted more than 0.5 second was labeled by marking the beginning and end timestamp of that brushing epoch. Because the study phone camera recorded at\r\n1080 p at 30 fps (frames-per-second), we were able to get a 33 ms time resolution for the\r\nground truth data. The annotated video timestamps were then aligned with the sensor signal\r\ntime stamps. An experienced examiner conducted random audits of labeled data and providedcorrections on annotation errors.\r\nDental regions (Fig 1) were characterized using the convention proposed by Lee et al. [11].\r\nBriefly, dental regions are labeled by jaw (maxilla or mandible), side (right, anterior or left),\r\nand tooth surface (buccal, lingual, or occlusal).\r\nAnalyses\r\nAll statistical analysis was performed in R version 4.1.1 [12], using the regression modeling\r\npackage “glmmTMB” [13]. The boxplots are generated using Matlab R2021a [14]. The dataset used as well as the code to generate the results are publicly available publicly at a GitHub repository [15].\r\nSeveral participants skipped some regions altogether in some or all brushing sessions, and\r\nmost participants avoided using excessive pressure most of the time. Therefore, the durations\r\nof region-specific brushing and region-specific brushing with excessive pressure were often\r\nequal to zero, a statistical phenomenon referred to as zero-inflation [13]. Accordingly, we analyzed these outcomes using statistical models that account for zero-inflation. Specifically, we\r\nmodeled these outcomes (each measured in counts of 25Hz samples) using zero-inflated generalized linear mixed-effects regression models, with a log-link and a negative binomial outcome distribution for the count submodels and a logistic link and a Bernoulli outcome\r\ndistribution for the zero-inflation submodels. Both submodels had fixed effects for tooth surface, mouth side, and jaw, and to capture between- and within-participant variabilities, had\r\nrandom effects on the intercept by session nested in participant, to account for person-to-person and session-to-session differences in overall brushing duration, and person-specific overdispersion parameters to account for person-to-person differences in residual variance. The\r\ncount submodel for region-specific brushing duration also included participant-specific random effects for tooth surface, mouth side, and jaw (see S1 Appendix A1 for details); the count\r\nsubmodel for region-specific excessive pressure duration failed to converge when random\r\neffects were added for these covariates, since many participants never brushed with excessive\r\npressure in some or all regions.\r\nWe calculated the total active brushing duration per-session by excluding pauses in brushing and the epochs of transitioning the brush head to different dental surfaces. We modeled\r\nthis outcome using a negative binomial generalized linear mixed-effects regression model\r\n(not zero-inflated, since all brushing sessions had duration greater than zero) with random\r\nintercepts by participant and fixed effects for participant-specific dispersion (see S1 Appendix\r\nA3 for details).\r\nTo examine the data on different levels, we used boxplots. Data points were labeled as outliers if they were not in the range of [q1—w � (q3-q1), q3 + w � (q3-q1)]; in which w is the\r\nWhisker value and q1 and q3 are the 25th and 75th percentiles of the sample data, respectively. We used a whisker value of ±2.7σ (σ is the standard deviation of the sample data) that\r\ncorresponds to the coverage of 99.3% of the data, if the data is normally distributed. The significance-level () was set at 5%.\r\nResults\r\nThe 12 participants comprised of eight females and four males with ages ranging from 18 to 23\r\nyears (20.77 ± 1.59).\r\nTotal active brushing duration in each session\r\nWe calculated the active brushing duration by excluding pauses in brushing and the times\r\ntransitioning the brush head to different regions. Fig 2 summarizes the active brushing duration for all participants. Most of the participants (91.67%) brushed less than the prescribed two\r\nminutes in all sessions. The mean brushing duration for a participant was 89.22 seconds.\r\nThere was substantial between- and within- individual variability in brushing duration.\r\nObserved between-participant variability was 16.69 seconds (see Table A3.2.5 in S1 Appendix;\r\ncoefficient of variation = 0.19 > 0.05) and observed within-participant variability was 14.50\r\nseconds (see Table A3.2.5 in S1 Appendix; coefficient of variation = 0.17 > 0.05). Some participants (e.g. # 1 and 2) brushed for almost two minutes in most sessions, whereas others (e.g.\r\nparticipant 5) brushed for less than a minute. Some participants (e.g., 2, 4, and 7) brushed consistently for nearly the same duration each time; others (e.g., # 5, 9, and 12) varied greatly\r\n(> 70 seconds) in their brushing duration.\r\nBrushing duration for each dental surface\r\nFig 3 summarizes the brushing duration of each region for all participants. MaxAB, MaxLB,\r\nand MaxRB were the areas brushed the longest with a median of 10.68, 8.78, and 8.22 seconds\r\nrespectively. In contrast, MaxLL and MaxLO were frequently skipped during brushing.\r\nBrushing time categorized by different regions is shown in Fig 4. Participants did not vary\r\nsignificantly in the brushing times spent on the maxillary and mandibular regions or different\r\nsides (right, anterior, and left). However, participants differed in the times spent brushing various teeth surfaces with buccal surfaces brushed significantly more than the lingual and occlusal\r\nsurfaces. On average, buccal surfaces were brushed 2.18 times longer than the lingual surfaces\r\n(see Table A1.2.1 in S1 Appendix; 95% CI 1.42, 3.35; p < 0.001) and 2.22 times longer than the\r\nocclusal surfaces (see Table A1.2.1 in S1 Appendix; 95% CI 1.62, 3.10; p < 0.001).\r\nBetween-individual variability in brushing duration\r\nThere was considerable between-individual variability in terms of brushing time devoted to\r\ndifferent regions (Fig 5). Coefficient of variation for all the regions brushed during a session	Mahmoud Essalat	Methodology	f
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
\.


--
-- Data for Name: cart_cart; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cart_cart (id, coupon_id, user_id) FROM stdin;
72	\N	22
48	\N	12
75	\N	11
94	\N	41
109	\N	42
\.


--
-- Data for Name: cart_cartitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cart_cartitem (id, quantity, cart_id, product_id, product_item_id) FROM stdin;
453	2	72	04e74632-6afd-4f2f-8d40-4d1145cb577a	\N
454	1	72	165144d1-88c4-470e-b35f-dd6071d0da33	\N
455	1	72	2c5633e0-786a-4d67-a7e2-6e3572c6b508	\N
465	1	75	ccc7cccf-0d02-4c98-aeec-928390dbad8f	\N
461	1	75	55a70082-0bdc-4b4b-a1d7-57e90c3a4847	\N
571	1	109	2ede9c6f-c5fb-4a24-8e51-15a93f2380dc	\N
570	2	94	04e74632-6afd-4f2f-8d40-4d1145cb577a	\N
517	1	75	04e74632-6afd-4f2f-8d40-4d1145cb577a	\N
518	1	75	821375a9-17ca-4a00-b8ac-9a8362887704	\N
519	1	75	165144d1-88c4-470e-b35f-dd6071d0da33	\N
\.


--
-- Data for Name: contact_us_contactform; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contact_us_contactform (id, name, email, phone, subject, message) FROM stdin;
1	new contact name	youssef@az.com	01098872271	Subject 1	this message for you. I love you.
2	sara	sara@gmail.com	01208271271	title	bbbbbb bbb
3	sara	sara@gmail.com	01154770235	title	bla bla bla bla bla
4	sara	sara@gmail.com	01208271271	asasas	sarasoor romel
5	sara	sara@gmail.com	01208271271	asasas	bal bkla nl;;
6	eslam	eslam.gh707@gmil.coiias	01212121	asasas	asasasasass
7	eslam	sara@gmail.com	01208271271	title	asasasasasa
8	eslam	sara@gmail.com	021121212	asas	asasasasasas
9	sara	sara@gmail.com	012121	as	SASASASASASA
10	sara	sara@gmail.com	012121	as	SASASASASASA
11	sara	sara@gmail.com	012121	as	SASASASASASA
12	sara	sara@gmail.com	012121	as	SASASASASASA
13	sara	sara@gmail.com	012121	as	SASASASASASA
14	sara	sara@gmail.com	012121	as	SASASASASASA
15	sara	sara@gmail.com	012121	as	SASASASASASA
16	sara	sara@gmail.com	012121	as	SASASASASASA
17	sara	sara@gmail.com	012121	as	SASASASASASA
18	sara	sara@gmail.com	012121	as	SASASASASASA
19	sara	sara@gmail.com	012121	as	SASASASASASA
20	sara	sara@gmail.com	012121	as	SASASASASASA
21	sara	sara@gmail.com	01208271271	title	sa ahaa scvd
22	eslam	sara@gmail.com	01208271271	title	bfdbd csdvsdv
23	eslam	sara@gmail.com	01208271271	title	bfdbd csdvsdv
24	eslam	sara@gmail.com	01208271271	title	bfdbd csdvsdv
25	eslam	sara@gmail.com	01208271271	title	bfdbd csdvsdv
26	eslam	sara@gmail.com	01208271271	title	bfdbd csdvsdv
27	eslam	sara@gmail.com	01208271271	title	bfdbd csdvsdv
28	sara	sara@gmail.com	01208271271	title	ccc cc cc
29	sara	sara@gmail.com	01208271271	title	ccc cc cc
30	sara	sara@gmail.com	01208271271	title	ccc cc cc
31	sara	sara@gmail.com	01208271271	title	ccc cc cc
32	sara	sara@gmail.com	01208271271	title	sara arty aga
33	sara	sara@gmail.com	01208271271	title	xxxx vvv dd
34	sara	sara@gmail.com	01208271271	title	asasasasasas
35	sara	sara@gmail.com	01208271271	title	asasasassasa
36	sara	sara@gmail.com	01208271271	title	nnnnnnnnnnnnnnnnnn
37	sara	sara@gmail.com	01208271271	title	ccc xsx sxcs
38	sara	sara@gmail.com	01208271271	title	ccc xsx sxcs
39	sara	sara@gmail.com	01208271271	title	ccc xsx sxcs
40	sara	sara@gmail.com	01208271271	title	ccc xsx sxcs
41	sara	sara@gmail.com	01208271271	title	ddd dd dd
42	sara	sara@gmail.com	01208271271	title	ddd dd dd
43	sara	sara@gmail.com	01208271271	title	ddd dd dd
44	sara	sara@gmail.com	01208271271	title	سسسسسسسسسسسسسسسسسسس
45	sara	sara@gmail.com	01208271271	title	سسسسسسسسسسسسسسسسسسس
46	sara	sara@gmail.com	01208271271	title	سسسسسسسسسسسسسسسسسسس
47	sara	sara@gmail.com	01208271271	title	ي ياسىءىس ءسمشنء
48	sara	sara@gmail.com	01208271271	title	ي ياسىءىس ءسمشنء
49	sara	sara@gmail.com	01208271271	title	ي ياسىءىس ءسمشنء
50	sara	sara@gmail.com	01208271271	title	ي ياسىءىس ءسمشنء
51	sara	sara@gmail.com	01208271271	title	l lp ;[  dcmfcmff
52	sara	sara@gmail.com	01208271271	title	l lp ;[  dcmfcmff
53	sara	sara@gmail.com	01208271271	title	l lp ;[  dcmfcmff
54	sara	sara@gmail.com	01208271271	title	l lp ;[  dcmfcmff
55	sara	sara@gmail.com	01208271271	title	sra at6 bjk kl
56	sara	sara@gmail.com	01208271271	title	sra at6 bjk kl
57	sara	sara@gmail.com	01208271271	title	sra at6 bjk kl
58	sara	sara@gmail.com	01208271271	title	jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj
59	sara	sara@gmail.com	01208271271	title	ddddddddddddd
60	sara	sara@gmail.com	01208271271	title	ddddddddddddd
61	sara	sara@gmail.com	01208271271	title	ddddddddddddd
62	sara	sara@gmail.com	01208271271	title	ddddddddddddd
63	sara	sara@gmail.com	01208271271	title	ddddddddddddd
64	sara	sara@gmail.com	01208271271	asasas	ssssssssssssssssssssssssssssss
65	sara	sara@gmail.com	01208271271	title	uuuuuuuuuuuuuuuuuuuuuu
66	sara	sara@gmail.com	01208271271	title	uuuuuuuuuuuuuuuuuuuuuu
67	sara	sara@gmail.com	01208271271	asasas	ffffffffffffffffffffffffffff
68	sara	sara@gmail.com	01208271271	asasas	ffffffffffffffffffffffffffff
69	sara	sara@gmail.com	01208271271	asasas	ffffffffffffffffffffffffffff
70	sara	sara@gmail.com	01208271271	title	ddd dd dd
71	sara	sara@gmail.com	01208271271	asasas	gggggggggggggggg hhhhhhhhhh kk
72	sara	sara@gmail.com	01208271271	asasas	gggggggggggggggg hhhhhhhhhh kk
73	sara	sara@gmail.com	01208271271	asasas	gggggggggggggggg hhhhhhhhhh kk
74	sara	sara@gmail.com	01208271271	asasas	vvvv
75	sara	sara@gmail.com	01208271271	title	vv
76	sara	sara@gmail.com	01208271271	title	vv
77	eslam	sara@gmail.com	01208271271	title	bb
78	eslam	sara@gmail.com	01208271271	title	bb
79	sara	sara@gmail.com	01208271271	title	vvv
80	sara	sara@gmail.com	01208271271	title	vvv
81	sara	sara@gmail.com	01208271271	title	vvv
82	sara	sara@gmail.com	01208271271	title	vvv
83	sara	sara@gmail.com	01208271271	title	vvv
84	sara	sara@gmail.com	01208271271	asasas	ff
85	sara	sara@gmail.com	01208271271	asasas	ff
86	sara	sara@gmail.com	01208271271	asasas	ff
87	sara	sara@gmail.com	01208271271	asasas	aasssssssssssssssssss
88	sara	sara@gmail.com	01208271271	title	ggggggggggg
89	sara	sara@gmail.com	01208271271	titlea	aaaaaaaaaaaaaaaaaa
90	sara	sara@gmail.com	01208271271	title	aaaaaaaaaaaa
91	sara	sara@gmail.com	01208271271	title	aaaaaaaaaaaaaaaaaaaaaa
92	sara	sara@gmail.com	01208271271	title	aaaaaaaaaaaaaaaaa
93	sara	sara@gmail.com	01212121	title	33333
94	sara	sara@gmail.com	01208271271	title	dd
95	eslam	sara@gmail.com	01208271271	title	dddddd
96	sara	sara@gmail.com	01208271271	title	ccc
97	sara	sara@gmail.com	01208271271	asasas	ll
98	sara	sara@gmail.com	01208271271	title	zzz
99	sara	sara@gmail.com	01208271271	title	zz
100	sara	sara@gmail.com	01208271271	title	zzz
101	sara	sara@gmail.com	01208271271	title	zzz
102	sara	sara@gmail.com	01208271271	title	xx
103	eslam	sara@gmail.com	01208271271	title	jh
104	sara	sara@gmail.com	01208271271	title	wcd f
105	sara	sara@gmail.com	01208271271	title	c
106	sara	sara@gmail.com	01208271271	title	c
107	eslam	sara@gmail.com	01208271271	title	qsw
108	sara	sara@gmail.com	01208271271	asasas	ncgnvb
109	eslam	sara@gmail.com	01208271271	title	bb
110	eslam	sara@gmail.com	01208271271	title	c
111	sara	sara@gmail.com	01208271271	title	oo
112	sara	sara@gmail.com	01208271271	title	o
113	sara	sara@gmail.com	01208271271	title	g
114	sara	sara@gmail.com	01208271271	titleg	g
115	sara	sara@gmail.com	01208271271	asasas	AA
116	sara	sara@gmail.com	01208271271	title	A
117	sara	S@S.COM	01208271271	title	Q
118	sara	sara@gmail.com	01208271271	title	rr
119	sara	sara@gmail.com	01208271271	title	fd
120	sara	sara@gmail.com	01208271271	title	s
121	sara	sara@gmail.com	01208271271	title	ي
122	sara	sara@gmail.com	01208271271	title	;;;;
123	sara	as@As.com	0211111	titk	jjjj
124	as	eslam.gh707@gmail.com	0211111	titk	asasas
125	sara	sara@gmail.com	01208271271	title	bla
126	Eslam Ghanem	eslam.gh707@gmail.com	01226264270	titk	21656
127	Eslam Ghanem	eslam.gh707@gmail.com	01226264270	titk	a
128	Eslam Ghanem	eslam.gh707@gmail.com	01226264270	titk	a
129	Eslam Ghanem	eslam.gh707@gmail.com	01226264270	titk	as
130	Eslam Ghanem	eslam.gh707@gmail.com	01226264270	titk	323232
131	Eslam Ghanem	eslam.gh707@gmail.com	0122626270	asas	asasa
132	Eslam Ghanem	eslam.gh707@gmail.com	01226264270	uiui	iuuiu
133	asdasdasdads	mamaher@outlook.com	01142043047	devicesss	dffghjkl;
134	tyytuytu	200moussa200@gmail.com	01067849428	fgvdfgbdrf	fggbrt
135	Sara Romel	sara@gmail.com	01208271271	title	bla
136	Sara Romel	sara@gmail.com	01208271271	title	bla
137	Eslam Ghanem	eslam.gh707@gmail.com	0123332	titk	a
138	Sara Romel	sara.techno@gmail.com	01208271271	title	bk
139	Sara Romel	sara.techno@gmail.com	01208271271	title	bk
140	mahmod	3bdelnaser@gmail.com	01000832338	test	Test
141	Eslam Ghanem	eslam.gh707@gmail.com	01226264270	asasas	21212121212
142	Eslam Ghanem	eslam.gh707@gmail.com	01226264270	as	asas
143	Eslam Ghanem	eslam.gh707@gmail.com	01226264270	asasas	52
144	Eslam Ghanem	eslam.gh707@gmail.com	01226264270	asas	212121212121
145	Eslam Ghanem	eslam.gh707@gmail.com	01226264270	as	as
146	Eslam Ghanem	eslam.gh707@gmail.com	01226264270	asas	asas
147	Eslam Ghanem	eslam.gh707@gmail.com	01226262626	asas	asas
148	Eslam Ghanem	eslam.gh707@gmail.com	01226264270	asas	as
149	Eslam Ghanem	eslam.gh707@gmail.com	0122626245	asasas	asasas
150	Eslam Ghanem	eslam.gh707@gmail.com	01226264270	asasas	kj
151	mousa nageh	200moussa200@gmail.com	01067948345	fgvdfgbdrf	d
152	karim	karimwk@hotmail.com	01121135548	Zoom	I WOULD LIKE TO THANK FOR THIS AMAZING KIT
153	karim	karimwk@hotmail.com	01121135548	zoom	I need the new peodycsfrs.
154	loay moataz	masben_98@hotmail.com	01010081222	Test	TtestTtestTtestTtestTtestTtestTtestTtestTtestTtestTtestTtestTtestTtestTtestTtestTtestTtestTtestTtestTtestTtestTtestTtestTtestTtestTtestTtestTtestTtestTtestTtest
155	asdasdasd	mamaher@outlook.com	01110001111	sdfsfsf	asdadasd
156	asdasdasd	mamaher@outlook.com	01142043047	asdasd	asdasdasd
157	moahmed	mamaher@outlook.com	01142043047	asdasd	asda
158	asdasdasd	mamaher@outlook.com	01142043047	hahahahahah	asdsasdad
159	asdasdasdads	asdads@gmail.com	01142043047	asdasd	asdasd
160	moahmed	mamaher@outlook.com	01142043047	hahahahahah	asdasda
161	شسيشسيش	mamaher@outlook.com	01142043047	شسيشسي	شسيشيشي
162	nnnnn	nsdfs@gmail.com	01142043047	yvbuinimo	buonklm
163	asdasdasd	mamaher@outlook.com	01142043047	hahahahahah	xrcvgbhjnkl
164	asdasdasd	mamaher@outlook.com	01142043047	hahahahahah	asdsad
165	asdasdasd	mamaher@outlook.com	01142043047	sdfsfsf	xdfcghv
166	asdasdasd	mamaher@outlook.com	01110001123	hahahahahah	qwqeqwe
167	asdasdasd	asdsadad@hot.com	01142043047	hahahahahah	asdasd
168	asdasdasd	mamaher@outlook.com	01110001111	hahahahahah	asdasdas
169	asdasdasd	mamaher@outlook.com	01110001111	asds	asdasd
170	asdasdasd	mamaher@outlook.com	01142043047	asdas	asdasd
171	asdasdasd	mamaher@outlook.com	01110001111	asdas	asdasd
172	Shaker	youssefaymanshaker@gmail.com	01098872271	Az	az
173	karim	karimwk@hotmail.com	01121135548	Addresses	Hello, I am trying to put my new address but it seems it won't confirm it and I need the order quickly. please fix it. Thanks
\.


--
-- Data for Name: contact_us_contactus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contact_us_contactus (id, title, sub_title, image, phone, email, address, phone1, address_url) FROM stdin;
1	Contact us	Just fill up the form and our team will reach you out in 3 business days.	contact-us/main-page/wallpaperflare.com_wallpaper_3.jpg	01092586388	info@kandilmedical.com	8 Mohamed Youssef El-Qady St., Ard El-Golf. Cairo, Egypt	0223503033	https://maps.app.goo.gl/o3LFCJysyAvoB9pt5?g_st=iw
\.


--
-- Data for Name: coupon_coupon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.coupon_coupon (id, code, discount_percentage, expire_date, usages_per_user, max_discount_value, min_value_to_apply, is_home) FROM stdin;
3	111111	23	2022-06-17	23	23	32	t
4	KMC30C	30	2022-05-31	1	0	0	f
5	test12	10	2023-03-10	1	0	0	f
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
8	courses/WP_logo_0AGqdTP.png	𝐖𝐨𝐨𝐝𝐩𝐞𝐜𝐤𝐞𝐫 𝐎𝐧𝐥𝐢𝐧𝐞 𝐂𝐨𝐮𝐫𝐬𝐞𝐬 𝐍𝐨.202	English	free	Safe ways to the apex	1	22 minutes	advanced	Karim	Dr.	8	11	https://www.youtube.com/embed/wnrGo1SqYCA	3
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
\.


--
-- Data for Name: footer_service; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.footer_service (id, title, description, slug) FROM stdin;
4	Points Terms & Conditions	KMC’s point system ensures customers are always satisfied with what they are getting, and creates a means for providing value for your money. The following terms must be followed upon the usage of the point system such that they are applicable:\r\n      - Points cannot be transferred onto another account.\r\n      - The expiration of your points is one year from being recieved, hence, purchases not made on the website within the specified time, will be \r\n         removed.\r\n      - Points are applicable on all products, no exception.\r\n      - Points are automatically added to your account once purchase is delivered.\r\n      - To collect points, you must be registered on the website.\r\n      - If you bought a product using your points, the points used will not be refunded.\r\n      - Points gifted from the purchase of a product that is then returned later on, will be deducted from the return price. The return price will be the \r\n         original price of the product with the price value of the points gifted deducted from it.	points-terms-conditions
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

COPY public.home_homedetails (id, categories_caption, about_us_1_caption, about_us_2_caption, about_us_1_image, about_us_2_image, about_us_3_image, about_us_4_image) FROM stdin;
1	Top of the range dental tools, materials and devices. Search through our range to find the high\r\nquality supplies that you need.sible.	KMC is a well-established Egyptian medical company that specialises in dental supplies. They\r\nhave expanded their operations all over Egypt covering Heliopolis, El Manial, Alexandria, Nasr\r\nCity, El Qasr El Ainy and has made connections with multinational companies to introduce high\r\nrange brands to the Egyptian market	Kandil Medical Company was founded in 1989 by Dr. Waleed Kandil and he strived in achieving\r\nthe company mission to continuously supply the newest and updated dentistry technology that\r\nserves the Egyptian market in the most professional and effective way possible.	home/home-details/about_us.jpeg	home/home-details/Rectangle_308_YR11wJE.jpeg	home/home-details/Rectangle_308_EgDPP02.jpeg	home/home-details/Rectangle_308_86A8Q6M.jpeg
\.


--
-- Data for Name: home_homeswiper; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.home_homeswiper (id, title, media, quote, button_text, button_link) FROM stdin;
2	We have the  best offers	home/home-swiper/engin-akyurt-WQ5fGfFHGZ0-unsplash_1_1.jpeg	"Beyond the bound of dental supplies"	Hot Offers	http://staging.freaksrepublic.com:8012/courses/
1	KMC Got Your Back	home/home-swiper/7_1.jpg	test test test test	shop test	http://staging.freaksrepublic.com:8012/courses
4	Endo pace	home/home-swiper/WhatsApp_Image_2022-06-01_at_7.53.16_PM.jpeg	NEW ARRIVAL!	ORDER NOW!	http://staging.freaksrepublic.com:8012/products/details/1/12d9387b-15e5-44a6-ab0c-aba8cd5a6c0b
\.


--
-- Data for Name: offers_offer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.offers_offer (id, title, image) FROM stdin;
1	offers	offers/offers.jpeg
\.


--
-- Data for Name: order_order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_order (id, code, price_paid, points_paid, total_price, created_at, order_status, payment_type, transaction_id, delivery_date, coupon_id, user_id, points_value, tax_value, registered_order_id, one_point_value, compelted_at) FROM stdin;
190	2c6f1d2a2023	16300	12000	17500	2023-05-01 08:15:41.235016+00	Ordered	Cash On Delivery	\N	\N	\N	42	1200	2450	\N	0.100000000000000006	\N
188	443a81e62023	0	8000	750	2023-04-30 12:52:24.318521+00	Refunded	Cash On Delivery	\N	\N	\N	42	800	105	\N	0.100000000000000006	2023-04-30
47	f43ebe5c2022	45094	0	45094	2022-05-18 09:01:17.470304+00	Ordered	Credit Card	\N	\N	\N	12	0	6313.15999999999985	47225756	0	\N
91	f50b80412022	246	0	246	2022-05-18 17:39:06.090756+00	Ordered	Credit Card	\N	\N	\N	12	0	34.4399999999999977	47295286	0	\N
92	c967b0322022	246	0	246	2022-05-18 17:47:45.649755+00	Ordered	Credit Card	\N	\N	\N	12	0	34.4399999999999977	47296538	0	\N
93	30a157bb2022	246	0	246	2022-05-18 17:47:49.476003+00	Transaction Failed	Credit Card	\N	\N	\N	12	0	34.4399999999999977	47296543	0	\N
167	ec0702a82022	11400	0	11400	2022-10-23 10:08:57.916271+00	Refunded	Cash On Delivery	\N	\N	\N	41	0	1596	\N	0.100000000000000006	\N
96	816e71ab2022	0	3000	246	2022-05-19 09:00:34.858259+00	Ordered	Credit Card	\N	\N	\N	12	300	34.4399999999999977	47380525	0	\N
79	d2815b442022	123	0	123	2022-05-18 14:25:38.24823+00	Ordered	Credit Card	\N	\N	\N	12	0	17.2199999999999989	47266575	0	\N
186	24a73cfb2023	0	7000	675	2023-04-30 12:29:35.307931+00	Refunded	Cash On Delivery	\N	\N	\N	42	700	94.5	\N	0.100000000000000006	2023-04-30
81	43ed98872022	50	0	50	2022-05-18 14:41:34.106091+00	Ordered	Credit Card	\N	\N	\N	12	0	7	47269709	0	\N
82	3a4d4e532022	296	0	296	2022-05-18 15:50:05.091406+00	Ordered	Credit Card	\N	\N	\N	12	0	41.4399999999999977	47279869	0	\N
83	484a89582022	296	0	296	2022-05-18 16:00:42.903389+00	Paid	Credit Card	123456789	\N	\N	12	0	41.4399999999999977	47281303	0	\N
84	4c767c252022	296	0	296	2022-05-18 16:18:03.026784+00	Ordered	Credit Card	\N	\N	\N	12	0	41.4399999999999977	47283773	0	\N
85	c708b3342022	246	0	246	2022-05-18 16:26:09.838419+00	Ordered	Credit Card	\N	\N	\N	12	0	34.4399999999999977	47285038	0	\N
86	3db18a942022	123	0	123	2022-05-18 16:28:49.508514+00	Ordered	Credit Card	\N	\N	\N	12	0	17.2199999999999989	47285438	0	\N
87	490c51862022	246	0	246	2022-05-18 16:44:31.681775+00	Ordered	Credit Card	\N	\N	\N	12	0	34.4399999999999977	47287684	0	\N
88	8101f7de2022	246	0	246	2022-05-18 16:54:12.632679+00	Ordered	Credit Card	\N	\N	\N	12	0	34.4399999999999977	47289003	0	\N
90	33708d202022	246	0	246	2022-05-18 17:25:39.683762+00	Ordered	Credit Card	\N	\N	\N	12	0	34.4399999999999977	47293337	0	\N
169	e0848f912022	34500	0	34500	2022-10-30 07:58:38.141441+00	Refunded	Cash On Delivery	\N	\N	\N	41	0	4830	\N	0.100000000000000006	\N
97	a17fff3a2022	0	54000	5369	2022-05-19 09:02:34.739127+00	Refund requested	Credit Card	\N	\N	\N	12	5400	751.659999999999968	47380671	0	\N
101	b6bfc4e82022	392	1000	492	2022-05-19 09:59:56.725049+00	Refund requested	Cash On Delivery	\N	\N	\N	12	100	68.8799999999999955	\N	0	\N
102	734515272022	233	0	233	2022-05-19 10:30:42.906754+00	Refund requested	Cash On Delivery	\N	\N	\N	12	0	32.6199999999999974	\N	0	\N
171	3eea8b832022	34500	0	34500	2022-10-30 08:59:48.467518+00	Refunded	Cash On Delivery	\N	\N	\N	41	0	4830	\N	0.100000000000000006	\N
165	d41d44982022	1750	1000	1850	2022-10-23 09:58:17.789823+00	Refund requested	Cash On Delivery	\N	\N	\N	42	100	259	\N	0.100000000000000006	\N
163	810665792022	2650	7000	10000000	2022-10-23 09:53:27.625056+00	Refunded	Cash On Delivery	\N	\N	\N	41	700	469	\N	0.100000000000000006	\N
173	cf8901992022	65100	129000	78000	2022-11-03 06:22:38.629975+00	Ordered	Cash On Delivery	\N	\N	\N	31	12900	10920	\N	0.100000000000000006	\N
175	76d748112022	0	16000	1500	2022-11-03 06:49:53.77204+00	Paid	Cash On Delivery	\N	\N	\N	31	1600	210	\N	0.100000000000000006	2022-11-03
177	871fb2cf2022	7600	20000	9600	2022-11-03 07:40:25.628421+00	Ordered	Cash On Delivery	\N	\N	\N	31	2000	1344	\N	0.100000000000000006	\N
179	8e769b702022	14800	2000	15000	2022-11-09 07:06:56.614679+00	Ordered	Cash On Delivery	\N	\N	\N	31	200	2100	\N	0.100000000000000006	\N
180	e6649ef72023	19350	15000	20850	2023-04-30 08:16:55.760893+00	Ordered	Cash On Delivery	\N	\N	\N	31	1500	2919	\N	0.100000000000000006	\N
182	bdb53d0c2023	17500	0	17500	2023-04-30 12:12:45.471933+00	Ordered	Cash On Delivery	\N	\N	\N	42	0	2450	\N	0.100000000000000006	\N
184	306378582023	475	2000	675	2023-04-30 12:13:53.947529+00	Ordered	Cash On Delivery	\N	\N	\N	42	200	94.5	\N	0.100000000000000006	\N
164	c08cb8762022	1850	0	1850	2022-10-23 09:55:46.821286+00	Paid	Cash On Delivery	\N	\N	\N	42	0	259	\N	0.100000000000000006	\N
166	3a065f4e2022	6700	4000	7100	2022-10-23 09:59:43.62524+00	Refunded	Cash On Delivery	\N	\N	\N	41	400	994	\N	0.100000000000000006	\N
168	22e2ef712022	34500	0	34500	2022-10-30 07:57:10.028975+00	Ordered	Credit Card	\N	\N	\N	41	0	4830	\N	0.100000000000000006	\N
170	6e289a9a2022	5550	0	5550	2022-10-30 08:55:36.7221+00	Ordered	Cash On Delivery	\N	\N	5	41	0	777	\N	0.100000000000000006	\N
172	eabe34f42022	17200	3000	17500	2022-10-30 15:34:31.422232+00	Ordered	Credit Card	\N	\N	\N	41	300	2450	\N	0.100000000000000006	\N
174	d1e6c9b52022	32500	78000	40300	2022-11-03 06:41:47.549729+00	Ordered	Cash On Delivery	\N	\N	\N	31	7800	5642	\N	0.100000000000000006	\N
176	3bead48a2022	17500	26000	20100	2022-11-03 06:54:52.233261+00	Ordered	Cash On Delivery	\N	\N	\N	31	2600	2814	\N	0.100000000000000006	\N
145	33cc2b5e2022	17450	0	17450	2022-09-18 10:40:21.819527+00	Ordered	Cash On Delivery	\N	\N	\N	11	0	2443	\N	0.100000000000000006	\N
146	0a9714202022	5800	0	5800	2022-09-18 10:40:43.200728+00	Ordered	Cash On Delivery	\N	\N	\N	11	0	812	\N	0.100000000000000006	\N
178	640541212022	1250	10000	2250	2022-11-03 07:45:30.494087+00	Ordered	Cash On Delivery	\N	\N	\N	31	1000	315	\N	0.100000000000000006	\N
181	602dfd852023	20850	0	20850	2023-04-30 09:23:11.61335+00	Ordered	Cash On Delivery	\N	\N	\N	31	0	2919	\N	0.100000000000000006	\N
183	54191c842023	475	2000	675	2023-04-30 12:13:40.477871+00	Ordered	Credit Card	\N	\N	\N	42	200	94.5	\N	0.100000000000000006	\N
185	2b2d77652023	0	7000	675	2023-04-30 12:26:37.749719+00	Paid	Cash On Delivery	\N	\N	\N	42	700	94.5	\N	0.100000000000000006	2023-04-30
187	8e170ce62023	0	7000	675	2023-04-30 12:32:45.327219+00	Paid	Cash On Delivery	\N	\N	\N	42	700	94.5	\N	0.100000000000000006	2023-04-30
154	68ca17382022	21600	0	21600	2022-10-13 09:47:01.932854+00	Ordered	Cash On Delivery	\N	\N	\N	31	0	3024	\N	0.100000000000000006	\N
189	da2f248b2023	49600	29000	52500	2023-04-30 12:53:10.698671+00	Ordered	Cash On Delivery	\N	\N	\N	42	2900	7350	\N	0.100000000000000006	\N
156	d066d73c2022	750	0	750	2022-10-13 10:31:29.108241+00	Ordered	Cash On Delivery	\N	\N	\N	31	0	105	\N	0.100000000000000006	\N
155	4254bea72022	21600	0	21600	2022-10-13 10:08:57.406786+00	Paid	Cash On Delivery	TX-883098718	\N	\N	31	0	3024	563c3c76-c658-45f5-a477-a7778c5afe44	0.100000000000000006	\N
159	aa52ed482022	1	0	1	2022-10-16 14:00:12.56755+00	Ordered	Cash On Delivery	\N	\N	\N	31	0	0.140000000000000013	\N	0.100000000000000006	\N
160	4bd8b1502022	90000	0	90000	2022-10-16 14:01:43.147043+00	Ordered	Cash On Delivery	\N	\N	\N	31	0	12600	\N	0.100000000000000006	\N
161	55f869e42022	28500	0	28500	2022-10-23 09:06:56.798765+00	Refunded	Cash On Delivery	\N	\N	\N	31	0	3990	\N	0.100000000000000006	\N
162	8aa5fb1a2022	7900	0	7900	2022-10-23 09:49:47.869202+00	Ordered	Cash On Delivery	\N	\N	\N	41	0	1106	\N	0.100000000000000006	\N
\.


--
-- Data for Name: order_orderaddress; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_orderaddress (id, name, phone, country, city, address, order_id, phone_country_code) FROM stdin;
163	mousa nageh	01067849428	Egypt	Cairo	el marg	167	+20
87	loay moataz	01111737173	Egypt	Cairo	rehab	91	+20
88	loay moataz	01111737173	Egypt	Cairo	rehab	92	+20
89	loay moataz	01111737173	Egypt	Cairo	rehab	93	+20
164	mousa nageh	01067849428	Egypt	Cairo	el marg	168	+20
92	loay moataz	01111737173	Egypt	Cairo	rehab	96	+20
93	loay moataz	01111737173	Egypt	Cairo	rehab	97	+20
165	mousa nageh	01067849428	Egypt	Cairo	el marg	169	+20
166	mousa nageh	01067849428	Egypt	Cairo	el marg	170	+20
167	mousa nageh	01067849428	Egypt	Cairo	el marg	171	+20
168	mousa nageh	01067849428	Egypt	Cairo	el marg	172	+20
97	loay moataz	01111737173	Egypt	Cairo	rehab	101	+20
98	loay moataz	01111737173	Egypt	Cairo	rehab	102	+20
169	karim Zen	01121135548	Egypt	Cairo	Mohamed Youssef El-Qady St.- Al Golf, Nasr City	173	+20
170	karim Zen	01121135548	Egypt	Cairo	Mohamed Youssef El-Qady St.- Al Golf, Nasr City	174	+20
171	karim Zen	01121135548	Egypt	Cairo	Mohamed Youssef El-Qady St.- Al Golf, Nasr City	175	+20
172	karim Zen	01121135548	Egypt	Cairo	Mohamed Youssef El-Qady St.- Al Golf, Nasr City	176	+20
173	karim Zen	01121135548	Egypt	Cairo	Mohamed Youssef El-Qady St.- Al Golf, Nasr City	177	+20
174	karim Zen	01121135548	Egypt	Cairo	Mohamed Youssef El-Qady St.- Al Golf, Nasr City	178	+20
43	loay moataz	01111737173	Egypt	Cairo	rehab	47	+20
175	karim Zen	01121135548	Egypt	Cairo	Mohamed Youssef El-Qady St.- Al Golf, Nasr City	179	+20
176	karim Zen	01121135548	Egypt	Cairo	Mohamed Youssef El-Qady St.- Al Golf, Nasr City	180	+20
177	karim Zen	01121135548	Egypt	Cairo	Mohamed Youssef El-Qady St.- Al Golf, Nasr City	181	+20
75	loay moataz	01111737173	Egypt	Cairo	rehab	79	+20
77	loay moataz	01111737173	Egypt	Cairo	rehab	81	+20
78	loay moataz	01111737173	Egypt	Cairo	rehab	82	+20
79	loay moataz	01111737173	Egypt	Cairo	rehab	83	+20
80	loay moataz	01111737173	Egypt	Cairo	rehab	84	+20
81	loay moataz	01111737173	Egypt	Cairo	rehab	85	+20
82	loay moataz	01111737173	Egypt	Cairo	rehab	86	+20
83	loay moataz	01111737173	Egypt	Cairo	rehab	87	+20
84	loay moataz	01111737173	Egypt	Cairo	rehab	88	+20
178	Youssef	01098872271	Egypt	Madinat an Nasr	Baron City	182	+20
86	loay moataz	01111737173	Egypt	Cairo	rehab	90	+20
179	Youssef	01098872271	Egypt	Madinat an Nasr	Baron City	183	+20
180	Youssef	01098872271	Egypt	Madinat an Nasr	Baron City	184	+20
181	Youssef	01098872271	Egypt	Madinat an Nasr	Baron City	185	+20
182	Youssef	01098872271	Egypt	Madinat an Nasr	Baron City	186	+20
183	Youssef	01098872271	Egypt	Madinat an Nasr	Baron City	187	+20
184	Youssef	01098872271	Egypt	Madinat an Nasr	Baron City	188	+20
185	Youssef	01098872271	Egypt	Madinat an Nasr	Baron City	189	+20
141	Eslam  Ghanem	01226264270	Albania	Elbasan	El sheihk st.	145	+355
142	Eslam  Ghanem	01226264270	Albania	Elbasan	El sheihk st.	146	+355
186	Youssef	01098872271	Egypt	Madinat an Nasr	Baron City	190	+20
150	karim Zen	01121135548	Egypt	Cairo	Mohamed Youssef El-Qady St.- Al Golf, Nasr City	154	+20
151	karim Zen	01121135548	Egypt	Cairo	Mohamed Youssef El-Qady St.- Al Golf, Nasr City	155	+20
152	karim Zen	01121135548	Egypt	Cairo	Mohamed Youssef El-Qady St.- Al Golf, Nasr City	156	+20
159	mousa nageh	01067849428	Egypt	Cairo	el marg	163	+20
155	karim Zen	01121135548	Egypt	Cairo	Mohamed Youssef El-Qady St.- Al Golf, Nasr City	159	+20
156	karim Zen	01121135548	Egypt	Cairo	Mohamed Youssef El-Qady St.- Al Golf, Nasr City	160	+20
157	karim Zen	01121135548	Egypt	Cairo	Mohamed Youssef El-Qady St.- Al Golf, Nasr City	161	+20
158	mousa nageh	01067849428	Egypt	Cairo	el marg	162	+20
160	Youssef	01098872271	Egypt	Madinat an Nasr	Baron City	164	+20
161	Youssef	01098872271	Egypt	Madinat an Nasr	Baron City	165	+20
162	mousa nageh	01067849428	Egypt	Cairo	el marg	166	+20
\.


--
-- Data for Name: order_orderitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_orderitem (id, product_title_en, product_image, quantity, price, status, order_id, return_points, product_title_ar, product_uuid, product_item_title, product_item_type) FROM stdin;
353	Led F	product/Led F/10.png	1	2450	Ordered	162	2450	\N	ccc7cccf-0d02-4c98-aeec-928390dbad8f	\N	\N
354	Apex Blue	product/Apex Blue/1.png	1	3000	Ordered	162	3000	\N	7b48ce26-a176-4a24-8d87-8379c99e0c60	\N	\N
355	UDS-K LED	product/UDS-K LED/UDS-K_LED.png	1	2450	Ordered	162	2450	\N	55a70082-0bdc-4b4b-a1d7-57e90c3a4847	\N	\N
359	Zoom single kit	product/Zoom single kit/Zoom_office.jpeg	1	3350	Ordered	166	3350	\N	03b72a45-05f7-4cc9-8e25-95365bf03849	\N	\N
360	Apex Blue	product/Apex Blue/1.png	1	3000	Refunded	166	3000	\N	7b48ce26-a176-4a24-8d87-8379c99e0c60	\N	\N
361	MiniS (RTA)	product/MiniS (RTA)/Minis_190227.png	1	750	Refunded	166	750	\N	2ede9c6f-c5fb-4a24-8e51-15a93f2380dc	\N	\N
371	King Kong (Japanese Bearings)	product/King Kong (Japanese Bearings)/2.png	3	1850	Ordered	170	5550	\N	165144d1-88c4-470e-b35f-dd6071d0da33	\N	\N
377	Q7	product/Q7/5_qFJXDPg.png	1	17500	Ordered	174	17500	\N	04e74632-6afd-4f2f-8d40-4d1145cb577a	\N	\N
378	i-Led	product/i-Led/4.jpeg	1	2100	Ordered	174	2100	\N	2c5633e0-786a-4d67-a7e2-6e3572c6b508	\N	\N
379	Fi-G & Fi-P	product/Fi-G & Fi-P/2.jpeg	1	17500	Ordered	174	17500	\N	41594e5b-8b19-4656-8e18-907be15f61ed	\N	\N
380	MiniS (RTA)	product/MiniS (RTA)/Minis_190227.png	1	750	Ordered	174	750	\N	2ede9c6f-c5fb-4a24-8e51-15a93f2380dc	\N	\N
381	UDS-K LED	product/UDS-K LED/UDS-K_LED.png	1	2450	Ordered	174	2450	\N	55a70082-0bdc-4b4b-a1d7-57e90c3a4847	\N	\N
387	MiniS (RTA)	product/MiniS (RTA)/Minis_190227.png	3	750	Ordered	178	2250	\N	2ede9c6f-c5fb-4a24-8e51-15a93f2380dc	\N	\N
394	Fischer's Ultrapak Packers (45º to handle)	product/Fischer's Ultrapak Packers (45º to handle)/Ultrapak_Packer_TissueManagment.png	1	675	Ordered	183	675	\N	7011f172-99ac-4eb0-8daa-e6e9126d69fd	\N	\N
398	Fischer's Ultrapak Packers (45º to handle)	product/Fischer's Ultrapak Packers (45º to handle)/Ultrapak_Packer_TissueManagment.png	1	675	Ordered	187	675	\N	7011f172-99ac-4eb0-8daa-e6e9126d69fd	\N	\N
356	Zoom single kit	product/Zoom single kit/Zoom_office.jpeg	1	3350	Refunded	163	3350	\N	03b72a45-05f7-4cc9-8e25-95365bf03849	\N	\N
362	MiniS (RTA)	product/MiniS (RTA)/Minis_190227.png	1	750	Ordered	167	750	\N	2ede9c6f-c5fb-4a24-8e51-15a93f2380dc	\N	\N
128	wqewqe	product/wqewqe/DenFil_N_Syringe.png	1	321	Ordered	47	0	\N	402c1ae4-7693-445c-abe6-5724e1307acc	\N	\N
129	12321	product/12321/Ai-motor_2.png	1	2131	Ordered	47	0	\N	35347840-dbb6-4e4d-aed4-9198b165cb68	\N	\N
130	12321321	product/12321321/Acid_Etch.png	2	21321	Ordered	47	0	\N	2861ae8d-21da-4df3-85e5-3a3b1a0a1322	\N	\N
363	Zoom single kit	product/Zoom single kit/Zoom_office.jpeg	1	3350	Ordered	167	3350	\N	03b72a45-05f7-4cc9-8e25-95365bf03849	\N	\N
399	MiniS (RTA)	product/MiniS (RTA)/Minis_190227.png	1	750	Refunded	188	750	\N	2ede9c6f-c5fb-4a24-8e51-15a93f2380dc	\N	\N
323	MotoPex	product/MotoPex/motopex_front_view.jpeg	1	15000	Ordered	145	15000	\N	821375a9-17ca-4a00-b8ac-9a8362887704	\N	\N
324	Led F	product/Led F/10.png	1	2450	Ordered	145	2450	\N	ccc7cccf-0d02-4c98-aeec-928390dbad8f	\N	\N
364	Apex Blue	product/Apex Blue/1.png	1	3000	Refunded	167	3000	\N	7b48ce26-a176-4a24-8d87-8379c99e0c60	\N	\N
207	sadsad	product/sadsad/1_5BPUXeV.png	1	123	Ordered	79	0	\N	232805b9-2c26-4841-a2e5-e9d182f9a4b1	\N	\N
209	test	product/test/8.png	1	50	Ordered	81	200	\N	2882d660-7420-4d2a-b7a6-9ac8193bc534	\N	\N
210	test	product/test/8.png	1	50	Ordered	82	200	\N	2882d660-7420-4d2a-b7a6-9ac8193bc534	\N	\N
211	sadsad	product/sadsad/1_5BPUXeV.png	2	123	Ordered	82	0	\N	232805b9-2c26-4841-a2e5-e9d182f9a4b1	\N	\N
212	test	product/test/8.png	1	50	Ordered	83	200	\N	2882d660-7420-4d2a-b7a6-9ac8193bc534	\N	\N
213	sadsad	product/sadsad/1_5BPUXeV.png	2	123	Ordered	83	0	\N	232805b9-2c26-4841-a2e5-e9d182f9a4b1	\N	\N
214	test	product/test/8.png	1	50	Ordered	84	200	\N	2882d660-7420-4d2a-b7a6-9ac8193bc534	\N	\N
215	sadsad	product/sadsad/1_5BPUXeV.png	2	123	Ordered	84	0	\N	232805b9-2c26-4841-a2e5-e9d182f9a4b1	\N	\N
216	sadsad	product/sadsad/1_5BPUXeV.png	2	123	Ordered	85	0	\N	232805b9-2c26-4841-a2e5-e9d182f9a4b1	\N	\N
217	sadsad	product/sadsad/1_5BPUXeV.png	1	123	Ordered	86	0	\N	232805b9-2c26-4841-a2e5-e9d182f9a4b1	\N	\N
218	sadsad	product/sadsad/1_5BPUXeV.png	2	123	Ordered	87	0	\N	232805b9-2c26-4841-a2e5-e9d182f9a4b1	\N	\N
219	sadsad	product/sadsad/1_5BPUXeV.png	2	123	Ordered	88	0	\N	232805b9-2c26-4841-a2e5-e9d182f9a4b1	\N	\N
366	King Kong (Japanese Bearings)	product/King Kong (Japanese Bearings)/2.png	1	1850	Refunded	167	1850	\N	165144d1-88c4-470e-b35f-dd6071d0da33	\N	\N
365	UDS-K LED	product/UDS-K LED/UDS-K_LED.png	1	2450	Refunded	167	2450	\N	55a70082-0bdc-4b4b-a1d7-57e90c3a4847	\N	\N
222	sadsad	product/sadsad/1_5BPUXeV.png	2	123	Ordered	90	0	\N	232805b9-2c26-4841-a2e5-e9d182f9a4b1	\N	\N
223	sadsad	product/sadsad/1_5BPUXeV.png	2	123	Ordered	91	0	\N	232805b9-2c26-4841-a2e5-e9d182f9a4b1	\N	\N
224	sadsad	product/sadsad/1_5BPUXeV.png	2	123	Ordered	92	0	\N	232805b9-2c26-4841-a2e5-e9d182f9a4b1	\N	\N
225	sadsad	product/sadsad/1_5BPUXeV.png	2	123	Ordered	93	0	\N	232805b9-2c26-4841-a2e5-e9d182f9a4b1	\N	\N
372	Apex Blue	product/Apex Blue/1.png	11	3000	Ordered	171	33000	\N	7b48ce26-a176-4a24-8d87-8379c99e0c60	\N	\N
373	MiniS (RTA)	product/MiniS (RTA)/Minis_190227.png	2	750	Refunded	171	1500	\N	2ede9c6f-c5fb-4a24-8e51-15a93f2380dc	\N	\N
382	MiniS (RTA)	product/MiniS (RTA)/Minis_190227.png	2	750	Ordered	175	1500	\N	2ede9c6f-c5fb-4a24-8e51-15a93f2380dc	\N	\N
388	MotoPex	product/MotoPex/motopex_front_view.jpeg	1	15000	Ordered	179	15000	\N	821375a9-17ca-4a00-b8ac-9a8362887704	\N	\N
232	sadsad	product/sadsad/1_5BPUXeV.png	2	123	Ordered	96	0	\N	232805b9-2c26-4841-a2e5-e9d182f9a4b1	\N	\N
389	Zoom single kit	product/Zoom single kit/Acid_Etch.png	1	3350	Ordered	180	3350	\N	03b72a45-05f7-4cc9-8e25-95365bf03849	\N	\N
390	Q7	product/Q7/5_qFJXDPg.png	1	17500	Ordered	180	17500	\N	04e74632-6afd-4f2f-8d40-4d1145cb577a	\N	\N
395	Fischer's Ultrapak Packers (45º to handle)	product/Fischer's Ultrapak Packers (45º to handle)/Ultrapak_Packer_TissueManagment.png	1	675	Ordered	184	675	\N	7011f172-99ac-4eb0-8daa-e6e9126d69fd	\N	\N
233	sadsad	product/sadsad/1_5BPUXeV.png	3	123	Refund Requested	97	0	\N	232805b9-2c26-4841-a2e5-e9d182f9a4b1	\N	\N
234	11	product/11/Ai-motor_2.png	5	1000	Refund Requested	97	0	\N	2cdf790e-64bb-44bc-9629-a09b1331cef2	\N	\N
244	LED Curing light-	product/sadsad/1_5BPUXeV.png	4	123	Refund Requested	101	0	\N	232805b9-2c26-4841-a2e5-e9d182f9a4b1	\N	\N
245	LED Curing light-	product/sadsad/1_5BPUXeV.png	1	123	Ordered	102	0	\N	232805b9-2c26-4841-a2e5-e9d182f9a4b1	\N	\N
246	Pliers	product/Pliers/broduct.png	1	110	Refund Requested	102	120	\N	1d65f60d-7041-4ac1-80f0-80663a3c86fc	\N	\N
357	King Kong (Japanese Bearings)	product/King Kong (Japanese Bearings)/2.png	1	1850	Ordered	164	1850	\N	165144d1-88c4-470e-b35f-dd6071d0da33	\N	\N
367	MiniS (RTA)	product/MiniS (RTA)/Minis_190227.png	2	750	Ordered	168	1500	\N	2ede9c6f-c5fb-4a24-8e51-15a93f2380dc	\N	\N
368	Apex Blue	product/Apex Blue/1.png	11	3000	Ordered	168	33000	\N	7b48ce26-a176-4a24-8d87-8379c99e0c60	\N	\N
374	Q7	product/Q7/5_qFJXDPg.png	1	17500	Ordered	172	17500	\N	04e74632-6afd-4f2f-8d40-4d1145cb577a	\N	\N
383	Zoom single kit	product/Zoom single kit/Acid_Etch.png	6	3350	Ordered	176	20100	\N	03b72a45-05f7-4cc9-8e25-95365bf03849	\N	\N
391	Zoom single kit	product/Zoom single kit/Acid_Etch.png	1	3350	Ordered	181	3350	\N	03b72a45-05f7-4cc9-8e25-95365bf03849	\N	\N
392	Q7	product/Q7/5_qFJXDPg.png	1	17500	Ordered	181	17500	\N	04e74632-6afd-4f2f-8d40-4d1145cb577a	\N	\N
396	Fischer's Ultrapak Packers (45º to handle)	product/Fischer's Ultrapak Packers (45º to handle)/Ultrapak_Packer_TissueManagment.png	1	675	Ordered	185	675	\N	7011f172-99ac-4eb0-8daa-e6e9126d69fd	\N	\N
400	Q7	product/Q7/5_qFJXDPg.png	3	17500	Ordered	189	52500	\N	04e74632-6afd-4f2f-8d40-4d1145cb577a	\N	\N
325	UDS-K LED	product/UDS-K LED/UDS-K_LED.png	1	2450	Ordered	146	2450	\N	55a70082-0bdc-4b4b-a1d7-57e90c3a4847	\N	\N
326	Zoom single kit	product/Zoom single kit/Zoom_office.jpeg	1	3350	Ordered	146	3350	\N	03b72a45-05f7-4cc9-8e25-95365bf03849	\N	\N
334	Q7	product/Q7/3901638972844_.pic_hd.jpeg	1	17500	Ordered	154	17500	\N	04e74632-6afd-4f2f-8d40-4d1145cb577a	\N	\N
335	Soft Tray Classic Sheets	product/Sof-Tray Classic Sheets/Soft_tray_Classic_Sheets.png	3	750	Ordered	154	2250	\N	021f7ba2-5e3a-4d2b-b5fd-386005b6fe72	A2	Size
336	King Kong (Japanese Bearings)	product/King Kong (Japanese Bearings)/2.png	1	1850	Ordered	154	1850	\N	165144d1-88c4-470e-b35f-dd6071d0da33	\N	\N
339	King Kong (Japanese Bearings)	product/King Kong (Japanese Bearings)/2.png	1	1850	Ordered	155	1850	\N	165144d1-88c4-470e-b35f-dd6071d0da33	\N	\N
337	Q7	product/Q7/3901638972844_.pic_hd.jpeg	1	17500	Refund Requested	155	17500	\N	04e74632-6afd-4f2f-8d40-4d1145cb577a	\N	\N
338	Soft Tray Classic Sheets	product/Sof-Tray Classic Sheets/Soft_tray_Classic_Sheets.png	3	750	Refund Requested	155	2250	\N	021f7ba2-5e3a-4d2b-b5fd-386005b6fe72	\N	\N
340	MiniS (RTA)	product/MiniS (RTA)/Minis_190227.png	1	750	Ordered	156	750	\N	2ede9c6f-c5fb-4a24-8e51-15a93f2380dc	\N	\N
345	Q7	product/Q7/3901638972844_.pic_hd.jpeg	1	1	Ordered	159	17500	\N	04e74632-6afd-4f2f-8d40-4d1145cb577a	\N	\N
346	Apex Blue	product/Apex Blue/1.png	30	3000	Ordered	160	90000	\N	7b48ce26-a176-4a24-8d87-8379c99e0c60	\N	\N
348	Zoom single kit	product/Zoom single kit/Zoom_office.jpeg	1	3350	Ordered	161	3350	\N	03b72a45-05f7-4cc9-8e25-95365bf03849	\N	\N
349	Soft Tray Classic Sheets	product/Sof-Tray Classic Sheets/Soft_tray_Classic_Sheets.png	1	750	Ordered	161	750	\N	021f7ba2-5e3a-4d2b-b5fd-386005b6fe72	\N	\N
350	Q7	product/Q7/3901638972844_.pic_hd.jpeg	1	17500	Ordered	161	17500	\N	04e74632-6afd-4f2f-8d40-4d1145cb577a	\N	\N
351	King Kong (Japanese Bearings)	product/King Kong (Japanese Bearings)/2.png	2	1850	Ordered	161	3700	\N	165144d1-88c4-470e-b35f-dd6071d0da33	\N	\N
352	MiniS (RTA)	product/MiniS (RTA)/Minis_190227.png	1	750	Ordered	161	750	\N	2ede9c6f-c5fb-4a24-8e51-15a93f2380dc	\N	\N
347	UDS-K LED	product/UDS-K LED/UDS-K_LED.png	1	2450	Refunded	161	2450	\N	55a70082-0bdc-4b4b-a1d7-57e90c3a4847	\N	\N
370	Apex Blue	product/Apex Blue/1.png	11	3000	Refunded	169	33000	\N	7b48ce26-a176-4a24-8d87-8379c99e0c60	\N	\N
369	MiniS (RTA)	product/MiniS (RTA)/Minis_190227.png	2	750	Refunded	169	1500	\N	2ede9c6f-c5fb-4a24-8e51-15a93f2380dc	\N	\N
358	King Kong (Japanese Bearings)	product/King Kong (Japanese Bearings)/2.png	1	1850	Refund Requested	165	1850	\N	165144d1-88c4-470e-b35f-dd6071d0da33	\N	\N
375	MiniS (RTA)	product/MiniS (RTA)/Minis_190227.png	4	750	Ordered	173	3000	\N	2ede9c6f-c5fb-4a24-8e51-15a93f2380dc	\N	\N
376	MotoPex	product/MotoPex/motopex_front_view.jpeg	5	15000	Ordered	173	75000	\N	821375a9-17ca-4a00-b8ac-9a8362887704	\N	\N
384	MiniS (RTA)	product/MiniS (RTA)/Minis_190227.png	2	750	Ordered	177	1500	\N	2ede9c6f-c5fb-4a24-8e51-15a93f2380dc	\N	\N
385	i-Led	product/i-Led/4.jpeg	1	2100	Ordered	177	2100	\N	2c5633e0-786a-4d67-a7e2-6e3572c6b508	\N	\N
386	Apex Blue	product/Apex Blue/1.png	2	3000	Ordered	177	6000	\N	7b48ce26-a176-4a24-8d87-8379c99e0c60	\N	\N
393	Q7	product/Q7/5_qFJXDPg.png	1	17500	Ordered	182	17500	\N	04e74632-6afd-4f2f-8d40-4d1145cb577a	\N	\N
401	Q7	product/Q7/5_qFJXDPg.png	1	17500	Ordered	190	17500	\N	04e74632-6afd-4f2f-8d40-4d1145cb577a	\N	\N
397	Fischer's Ultrapak Packers (45º to handle)	product/Fischer's Ultrapak Packers (45º to handle)/Ultrapak_Packer_TissueManagment.png	1	675	Refunded	186	675	\N	7011f172-99ac-4eb0-8daa-e6e9126d69fd	\N	\N
\.


--
-- Data for Name: order_refund; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_refund (id, created, modified, reason, order_id) FROM stdin;
36	2022-05-19 09:58:20.132948+00	2022-05-19 09:58:20.146304+00	\N	97
37	2022-05-19 10:00:10.602942+00	2022-05-19 10:00:10.613432+00	\N	101
38	2022-05-19 10:30:53.97014+00	2022-05-19 10:30:53.97326+00	\N	102
47	2022-10-13 10:11:07.920085+00	2022-10-13 10:13:17.922401+00	\N	155
49	2022-10-23 09:10:16.446385+00	2022-10-23 09:12:51.420208+00	\N	161
50	2022-10-23 10:04:43.644237+00	2022-10-23 10:06:21.747948+00	\N	166
51	2022-10-23 10:06:56.538071+00	2022-10-23 10:07:27.543459+00	\N	163
52	2022-10-23 10:10:03.583786+00	2022-10-23 10:15:25.456742+00	\N	167
53	2022-10-30 08:03:20.350165+00	2022-10-30 08:05:36.752384+00	\N	169
54	2022-10-30 09:00:15.025629+00	2022-10-30 09:01:00.766972+00	\N	171
55	2022-10-30 12:02:44.168114+00	2022-10-30 12:02:44.172775+00	\N	165
56	2023-05-01 08:16:20.487991+00	2023-05-01 11:57:08.934837+00	\N	188
57	2023-05-01 12:22:10.681332+00	2023-05-01 12:23:05.014797+00	\N	186
\.


--
-- Data for Name: order_refunditem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_refunditem (id, requested_quantity, refunded_quantity, reason, to_refund_quantity, order_item_id, refund_id) FROM stdin;
47	3	0		0	233	36
48	5	0		0	234	36
49	2	0	hello	0	244	37
50	1	0	kda	0	246	38
61	3	0	no	0	338	47
60	1	0	no	0	337	47
63	1	1	do not need it	0	347	49
65	1	0	dfsdf	0	361	50
64	1	1	dfd	0	360	50
66	1	1	767	0	356	51
68	1	0	rterte	0	365	52
69	1	0	gdfgd	0	366	52
67	1	1	rtret	0	364	52
70	1	1	no	0	369	53
71	11	5	no	0	370	53
72	2	2	refund 2	0	373	54
73	1	0	شءِ~	0	358	55
74	1	1	reason	0	399	56
75	1	1	resa	0	397	57
\.


--
-- Data for Name: points_points; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.points_points (id, points, expire_date, is_expired, order_id, user_id, used_points) FROM stdin;
72	17450	2024-09-18	f	145	11	0
73	5800	2024-09-18	f	146	11	0
48	0	2024-05-19	f	101	12	0
45	942000	2022-07-13	f	91	12	58000
49	120	2024-05-19	f	102	12	0
79	0	2024-10-13	f	154	31	0
80	0	2024-10-13	f	155	31	21600
87	0	2024-10-23	f	161	31	28500
88	0	2024-10-23	f	162	41	7900
92	0	2024-10-23	f	166	41	7100
89	0	2024-10-23	f	163	41	6450
93	0	2024-10-23	f	167	41	11400
94	0	2024-10-30	f	169	41	34500
96	0	2024-10-30	f	171	41	34500
95	2550	2024-10-30	f	170	41	3000
81	0	2024-10-13	f	156	31	750
83	0	2024-10-16	f	155	31	21600
85	0	2024-10-16	f	159	31	17500
86	0	2024-10-16	f	160	31	90000
97	0	2024-11-03	f	173	31	78000
98	0	2024-11-03	f	174	31	40300
99	0	2024-11-03	f	175	31	1500
100	0	2024-11-03	f	176	31	20100
101	0	2024-11-03	f	177	31	9600
102	0	2024-11-03	f	178	31	2250
103	600	2024-11-09	f	179	31	14400
104	20850	2025-04-30	f	180	31	0
105	20850	2025-04-30	f	181	31	0
90	0	2024-10-23	f	164	42	1850
91	0	2024-10-23	f	165	42	1850
106	0	2025-04-30	f	182	42	17500
107	0	2025-04-30	f	184	42	675
108	0	2025-04-30	f	185	42	675
110	675	2025-04-30	f	187	42	0
112	52500	2025-04-30	f	189	42	0
113	17500	2025-05-01	f	190	42	0
111	0	2025-04-30	f	188	42	750
109	0	2025-04-30	f	186	42	100000000
\.


--
-- Data for Name: product_branch; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_branch (id, name, type_id, image) FROM stdin;
8	Operative	11	
9	Steam Sterilizers	11	
10	Cosmetics	12	
11	Periodontics	11	
12	Endodontics	11	
13	Air Purifiers and thermometers	11	
14	Fixed Prosthodontics	12	
15	Radiology	11	
16	Laser	11	
17	Others	11	
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
\.


--
-- Data for Name: product_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_product (id, title, description, price, sale_price, stock, rate, point_price, is_archived, created_at, branch_id, brand_id, sub_branch_id, type_id, product_item_title) FROM stdin;
e07b0a55-832a-40b5-893c-d7686bd3f666	B-cure	• More uniform light for better ortho bracket's curing.\r\n• ORTHO mode: 10 cycles with an interval of one second after each cycle. Setting time for each cycle is 3 or 5 seconds.\r\n• Equipped with 5 watts LED.\r\n• Maximum light intensity is up to 2000 mw/cm2\r\n• Two original batteries to keep the device working continuously.\r\n• Two sockets so that the battery can be charged separately\r\n• 5 working modes: Normal, Soft, Pulse, Turbo and Otho modes.	2850	0	50	5	2850	f	2022-06-29 14:10:57.912626+00	8	3	4	11	\N
5b1f4e89-e9fe-4ba2-8e8e-03b6813d0597	Ai-Motor	• Brushless Endo motor\r\n• Built in apex locator\r\n• Wireless charging\r\n• Brushless motor, hence longer life span and more durability\r\n• Super silent endo motor\r\n• 6:1 contra-angle (to ensure smooth rotation with the low speed with high torque)\r\n• Super mini-Head\r\n• 360 degrees rotatable contra-angle\r\n• 2000mAh Lithium battery	16500	0	49	5	16500	f	2022-07-19 10:09:45.003139+00	12	3	14	11	\N
ef2a66ca-ed73-4ee2-a3fe-49a3ea9db75a	Q3	The high pressure plasma air purifier KILLS viruses and bacteria as small as 14 nanometers by generating an electric field from 20,000 to 40,000 volts killing all bacteria and viruses that enter this field. (TPA technology)\r\n\r\n• No filters, no need to replace the filters every time (NO CONSUMABLES)\r\n• Elimination of bacteria, viruses, microbes, pet dander, smoke, dust, smog, mites and peculiar smell.\r\n• Application area: 30 to 40 meter squared\r\n• Fan Speed level: 4 levels\r\n• Clean air delivery rate (CADR): 200 CFM or 350 meter cube/hr\r\n• Power: 55W\r\n• Weight: 10.7 KG	11900	0	98	5	11900	f	2022-07-19 15:34:57.096956+00	13	3	\N	11	\N
8bce460e-76fa-4ac4-9e55-f2bbf7bc5616	E-com	• Speed: Up to 1000 rpm\r\n• Torque: 0.6Ncm-5.0Ncm\r\n• Can be connected to Woodpecker apex locator.\r\n• Auto apical reverse/stop.\r\n• Auto apical slow down.\r\n• Auto start/stop.\r\n• Preset various file systems.\r\n• Can customize up to 9 modes\r\n• O-LED screen\r\n• Cordless handpiece.	6500	0	49	5	6500	f	2022-07-19 09:41:21.25551+00	12	3	13	11	\N
d03f68d5-1c9e-4f4e-b8a8-aeca15c31f91	U-Cem	Indications: Cementation of ceramic, metal or composite inlays, onlays, crowns, bridges, posts.\r\n\r\nSize: 9 gm dispenser syringe.\r\n\r\nFeatures:\r\n\r\n● Uniform luting cementation\r\n● Continuous fluoride ion release effect\r\n● Easy removal & easy handling\r\n● Available in all cases of cementation\r\n● Powerful bonding strength\r\n● Satisfaction of the ISO 13485 requirements	695	0	10	5	695	f	2022-07-24 06:52:30.735197+00	14	6	15	12	\N
0d373ffd-51a7-4095-9f82-6f979738d86b	DenFil Etchant	● 37% Phosphoric acid\r\n● Etching the enamel and dentine for adhesive restoration\r\n● Natural polymeric materials	50	0	10	5	50	f	2022-07-24 07:02:30.344274+00	8	6	16	12	\N
6d9cc09a-e26a-40bd-9cb6-8b5acad702f9	U-Bond	Size: 5ml x 1 bottle\r\n\r\n● 7th generation one-step bonding agent.\r\n● Light-cured self etching adhesive designed to bond composite to dentin and enamel.	225	0	10	5	225	f	2022-07-24 07:08:28.369148+00	8	6	17	12	\N
a6340c5a-42d7-40b1-ae2f-2685748d0f82	DenFil Flow	Size: 2 gm syringe\r\n\r\nIndications:\r\n\r\n● Restorations of Class III, Class V, Smaller Class IV\r\n● Base/liner in the Class I, Class II restorations\r\n● Pit and fissure sealant\r\n● Undercut blockout\r\n\r\nFeatures:\r\n\r\n● Optimum flowability and handling\r\n● Low polymerization shrinkage\r\n● Nature-like esthetics by micro-hybrid fillers\r\n● Various shades and transparency\r\n● High radiopaque	215	0	10	5	215	f	2022-07-24 07:29:33.2556+00	8	6	18	12	\N
6d7fc330-7c9d-404f-9152-1af900cc46ab	DenFil Bulk Flow	Size: 2 gm syringe\r\n\r\nIndications:\r\n\r\n● Base/Liner under direct restorations (Class I, II)\r\n● Blocking out of undercuts\r\n● Repair of composite/ceramic veneers\r\n● Anterior restorations (Class III, IV)\r\n● Class V restorations (cervical caries, root erosion, wedge shaped defects)\r\n\r\nFeatures:\r\n\r\n● Fast and easy procedure\r\n● One increment up to 4mm\r\n● Void-Free\r\n● High radiopaque\r\n● Good cavity adaptation\r\n● Excellent wear resistance\r\n● Satisfaction of the ISO 4049 requirements	275	0	10	5	275	f	2022-07-24 07:43:27.250333+00	8	6	18	12	\N
d06f336a-f7d6-409d-ad0d-1350ccd26ed4	Dual Core	Dual-cured Core Build-up Material\r\n\r\n● Dual-cured (light+chemical) polymerization compounds\r\n● Thixotropic properties\r\n● High compressive and flexural strength	495	0	10	5	495	f	2022-07-25 06:37:00.686253+00	8	6	19	12	\N
2ede9c6f-c5fb-4a24-8e51-15a93f2380dc	MiniS (RTA)	• The most economic light cure in the market.\r\n\r\n• Power: from 900 to 1000 mw/cm2.	750	0	179	5	750	f	2022-06-28 14:05:09.299766+00	8	3	4	11	\N
03b72a45-05f7-4cc9-8e25-95365bf03849	Zoom single kit	25% Hydrogen Peroxide\r\nWhiten up to 8 shades in one visit only\r\none kit is sufficient for 4 sessions. \r\nEach session is for 15 minutes.	3750	3350	32	5	3350	f	2022-06-27 13:51:31.361118+00	10	5	8	12	\N
2c5633e0-786a-4d67-a7e2-6e3572c6b508	i-Led	• Two modes: Normal mode and high mode with maximum light intensity of 2300 mw/cm2.\r\n\r\n• Curing 2 mm of resin in 1 second which make it suitable for ortho brackets, porcelain veneers and post-core adhesives	2100	0	196	0	2100	f	2022-06-28 15:28:18.832853+00	8	3	4	11	\N
7b48ce26-a176-4a24-8d87-8379c99e0c60	Apex Blue	• Fourth generation\r\n• Accuracy : 97%\r\n• HQ screen\r\n• Battery : 750 mA	3000	0	138	5	3000	f	2022-07-05 14:51:22.699426+00	12	3	12	11	\N
ccc7cccf-0d02-4c98-aeec-928390dbad8f	Led F	• Light meter is attached.\r\n• Three working modes (Low, Normal, High)\r\n• Built in fan to reduce heat generation.\r\n• Automatic memory: Avoid setting frequently.\r\n• Ergonomic design for comfortable use.	2450	0	192	4	2450	f	2022-06-19 10:28:57.697563+00	8	3	4	11	\N
55a70082-0bdc-4b4b-a1d7-57e90c3a4847	UDS-K LED	• Mode: Perio\r\n• Frequency: 29,000 Hz\r\n• Led \r\n• Autoclavable handpiece at 134 ºC\r\n• 5 scaling tips included	2450	0	194	5	2450	f	2022-07-03 14:16:51.212605+00	11	3	10	11	\N
d063cc1e-10e3-48cb-9339-b70b0a3bb999	Gemini™ Laser	810 + 980 Diode Laser. The unique dual-wavelength technology combines the optimal melanin absorption of a 810 nanometer wavelength diode laser with the optimal water absorption of a 980 nanometer wavelength diode laser.\r\n\r\n• 20 watts of peak super-pulsed power means faster, smoother cutting\r\n• Innovative design features a stunning transparent electroluminescent display\r\n• 20 preset procedures in 980 and 21 in 810, including Pain Relief, to enhance ease of use\r\n• Bluetooth foot pedal allows for wireless control\r\n• Autoclavable handpiece makes sterilization simple\r\n• Tip illumination provides better visibility at surgical site\r\n• 2 year manufacturer’s warranty	110000	0	2	5	110000	f	2022-07-26 08:17:10.202663+00	16	7	\N	11	\N
f4c5e182-a1f3-4fb2-9e9b-da2857859ddd	Tanda 23L	1. Pipe rinse function for product longevity.\r\n2. Three different temperature sensors: Internal, heating ring, and steam generator sensor.\r\n3. Pressure, Water quality and Water tank sensors.\r\n4. ISO and CE certified beside being in accordance with the requirements of European class B.\r\n5. High density air filter to ensure the returned air is dry & pure.\r\n6. Italian water pump & Vacuum pump with German key parts.\r\n7. Optimized Sterilization speed.\r\n8. Built in printer.	27500	0	10	5	27500	f	2022-07-25 06:54:44.228677+00	9	4	6	11	\N
cf47ba15-2d0c-487f-9f03-8a99768eedcb	Tanda 18L	1. Pipe rinse function for product longevity.\r\n2. Three different temperature sensors: Internal, heating ring, and steam generator sensor.\r\n3. Pressure, Water quality and Water tank sensors.\r\n4. ISO and CE certified beside being in accordance with the requirements of European class B.\r\n5. High density air filter to ensure the returned air is dry & pure.\r\n6. Italian water pump & Vacuum pump with German key parts.\r\n7. Optimized Sterilization speed.\r\n8. Built in printer.	26000	0	7	5	26000	f	2022-06-19 10:53:35.438071+00	9	4	6	11	\N
09d4f44f-e1b5-4f4e-829d-3da5b51a765b	DenFil N	Light-cured Restorative Nano Hybrid Composite Resin\r\n\r\nIndications:\r\n\r\n● Posterior (class I, II, V) and anterior (class III, IV, V) restoration\r\n● Core build-up\r\n● Splinting\r\n\r\nFeatures:\r\n\r\n● Multi Nano-Sized Particle distribution Technology (MNPT)\r\n● High esthetic appearance\r\n● Optical handling and non-slumping\r\n● High radiopaque	275	0	8	5	275	f	2022-07-24 08:26:19.7974+00	8	6	19	12	\N
36391c85-567b-4740-8e45-1f82597c0c01	Ultrapak	Ultrapak cord is made of 100% cotton, knitted into thousands of tiny loops to form long, interlocking chains. This unique knitted design exerts a gentle, continuous outward force following placement, as the knitted loops seek to open. Optimal tissue displacement occurs in 5 minutes.\r\n\r\n• The original—and smallest—knitted cord\r\n• Provides rapid tissue displacement, detailed margins, and quality impressions\r\n• Facilitates easy packing and stays placed better than any twisted or braided cord\r\n• Compresses upon packing then expands for optimal retraction\r\n• Does not entangle in diamond bur\r\n• High carbon steel blade ensures a clean cut\r\n• Thin plastic gate prevents cord from falling into the bottle upon cutting\r\n• Ruler printed on label provides easy cord measurement	265	0	10	5	265	f	2022-07-26 07:44:28.692625+00	14	7	21	12	\N
c4b17ff2-5676-4608-a561-d14812432f44	Apex Gold Plus III	• Can be connected to rotary motor (E-com or Endo Pace)\r\n• Sixth generation edition 4\r\n• Accuracy: 97%\r\n• HQ screen\r\n• Battery: 750 mA	3850	0	199	5	3850	f	2022-07-05 15:14:59.110884+00	12	3	12	11	\N
68a3d57a-608f-4be7-88fc-f6299964a47b	Ultrapak E	Epinephrine cord made of 100% cotton, knitted into thousands of tiny loops to form long, interlocking chains. Ultrapak E knitted cord is impregnated with racemic epinephrine hydrochloride. \r\n\r\n*Note: Do not use Ultrapak E knitted cord or other epinephrine preparations with ferric sulfate solutions, including ViscoStat™, Astringedent™, and Astringedent™ X hemostatics, as a blue/black precipitate will occur.\r\n\r\n• The original—and smallest—knitted cord\r\n• Provides rapid tissue displacement, detailed margins, and quality impressions\r\n• Facilitates easy packing and stays placed better than any twisted or braided cord\r\n• Compresses upon packing then expands for optimal retraction\r\n• Does not entangle in diamond bur\r\n• High carbon steel blade ensures a clean cut\r\n• Thin plastic gate prevents cord from falling into the bottle upon cutting\r\n• Ruler printed on label provides easy cord measurement	295	0	50	5	295	f	2022-08-02 07:43:58.25637+00	14	7	21	12	\N
eafb75a8-4bb7-499c-89c3-adca04e1a6ad	Zoom NiteWhite 22% CP	22% Carbamide Peroxide.\r\n3 syringes are needed for one complete case.\r\nEach syringe is used for 3 days.	275	0	196	5	275	f	2022-06-27 14:48:24.15804+00	10	5	9	12	\N
d00163c7-ec90-40ad-8113-3230290440a1	A-Led	1- Mode : Scaling, Perio & Endo modes\r\n2- Frequency: 29,000 Hz\r\n3- Led\r\n4- Autoclavable handpiece at 134 ºC\r\n5- 5 scaling tips + 1 activation of irrigation tip included	2750	0	338	5	2750	f	2022-07-03 14:43:40.076166+00	11	3	10	11	\N
cac23bb0-443f-473c-9490-bf2aff0c09d4	Led D	• Replaceable battery.\r\n\r\n• Three working modes: Full, Ramping & Pulse.\r\n\r\n• Full charge can be used over 400 times (10s/time)	975	0	94	4	975	f	2022-06-28 14:27:41.678785+00	8	3	4	11	\N
76aea991-1405-4bf9-986a-6869f96f7872	U-6	1- Mode : Scaling, Perio & Endo modes\r\n2- Functions : can do Implant maintenance and Cavity preparation.\r\n3- Amplitude of tip : 20-90 um only (more comfort to the patient)\r\n4-Frequency: 30,000 Hz\r\n5- Intelligent degenerative feedback (automatically adjust the power)\r\n6- Led\r\n7- Ceramic shell of handpiece\r\n8- 5 scaling tips + 1 activation of irrigation tip included \r\n9- Ultrasensitive Waterproof touch screen\r\n10- Sine wave drive (avoiding stimulation caused by sudden current output)	3950	0	24	5	3950	f	2022-07-03 15:56:55.256484+00	11	3	10	11	\N
165144d1-88c4-470e-b35f-dd6071d0da33	King Kong (Japanese Bearings)	• Anti-drop contra-angle up to 1 m distance.\r\n• Japanese bearings\r\n• Push button contra-angle	1850	0	0	5	1850	f	2022-06-29 14:39:54.852327+00	8	3	5	11	\N
7011f172-99ac-4eb0-8daa-e6e9126d69fd	Fischer's Ultrapak Packers (45º to handle)	Thin Serrated Packing Instruments. Their thin edges and fine serrations sink into the cord, preventing it from slipping off and reducing the risk of cutting the gingival attachment.\r\n\r\nOur most popular packers, with heads at 45° to the handle and three packing sides. Circular packing of the prep can be completed without the need to flip the instrument end to end. Use the small packer on lower anteriors and upper lateral incisors.	675	0	6	5	675	f	2022-08-07 07:21:50.139231+00	14	7	\N	13	\N
94066a49-0d5e-4fe5-b11d-be8569c7cb03	Apex Gold Plus V	Woodpex V is the Fifth Generation of the popular Gold series.\r\n\r\nFeatures:\r\n1) Accurate: Eliminate interference through DSP data processing system.\r\n2) New technology: US data processing chip\r\n3) Sound volume can be adjusted: OFF, Low, medium and High.\r\n4) O-led colored screen display.	7000	6500	4	5	7000	f	2023-05-16 08:35:27.598217+00	12	3	12	11	\N
021f7ba2-5e3a-4d2b-b5fd-386005b6fe72	Soft Tray Classic Sheets	Sheet Material for Vacuum-Forming of Trays.\r\n\r\nSof-Tray Classic Sheets are specifically designed to create custom-made whitening trays for patients interested in take-home whitening treatments.\r\n\r\nAvailable in Regular, Medium, and Heavy thicknesses\r\nSelect Regular (0.035") for most whitening trays\r\nSelect Medium (0.060") for bruxers’ whitening trays\r\nSelect Heavy (0.080") for severe bruxers' whitening trays	750	0	6	5	750	f	2022-08-07 07:48:47.275984+00	17	7	\N	12	Size
04e74632-6afd-4f2f-8d40-4d1145cb577a	Q7	The high pressure plasma air purifier KILLS viruses and bacteria as small as 14 nanometers by generating an electric field from 20,000 to 40,000 volts killing all bacteria and viruses that enter this field. (TPA technology)\r\n\r\n• No filters, no need to replace the filters every time (NO CONSUMABLES)\r\n• Elimination of bacteria, viruses, microbes, pet dander, smoke, dust, smog, mites and peculiar smell.\r\n• Application area: 70 to 110 meter squared\r\n• Fan Speed level: 5 levels\r\n• Clean air delivery rate (CADR): 470.9 CFM or 800 meter cube/hr\r\n• Power: 110W\r\n• Weight: 19.7 KG	17500	0	28	5	17500	f	2022-07-20 15:15:53.985827+00	13	3	\N	11	\N
41594e5b-8b19-4656-8e18-907be15f61ed	Fi-G & Fi-P	Fi-G:\r\n• Quick heating within 15 seconds\r\n• 0.5 mm injection needle\r\n• Pushing ram with anti-return structure.\r\n• 360 degree rotatable needle\r\n\r\nFi-P:\r\n•  0.2 second heating system\r\n• 0.35 mm pre-bend tip\r\n• 4 working temperatures ( 150ºc, 180ºc, 200ºc, 230ºc )\r\n• 4 hours of endurance (Panasonic batteries)	17500	0	4	5	17500	f	2022-10-20 14:44:18.134118+00	12	3	23	11	\N
821375a9-17ca-4a00-b8ac-9a8362887704	MotoPex	• First Brushless Endo motor\r\n• Built in apex locator\r\n• Brushless motor, hence longer life span and more durability\r\n• Silent endo motor\r\n• 6:1 contra-angle (to ensure smooth rotation with the low speed with high torque)\r\n• Super mini-head\r\n• 360 degrees rotatable contra-angle\r\n• 2000mAh Lithium battery	15000	0	41	0	15000	f	2022-07-19 09:57:08.48464+00	12	3	14	11	\N
\.


--
-- Data for Name: product_productimage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_productimage (id, image, is_main, product_id) FROM stdin;
52	product/Led F/6.png	f	ccc7cccf-0d02-4c98-aeec-928390dbad8f
51	product/Led F/1.png	f	ccc7cccf-0d02-4c98-aeec-928390dbad8f
53	product/Led F/10.png	t	ccc7cccf-0d02-4c98-aeec-928390dbad8f
56	product/Zoom single kit/Zoom.png	f	03b72a45-05f7-4cc9-8e25-95365bf03849
57	product/Zoom NiteWhite 22% CP/NW.jpeg	t	eafb75a8-4bb7-499c-89c3-adca04e1a6ad
58	product/Zoom NiteWhite 22% CP/NW22.jpeg	f	eafb75a8-4bb7-499c-89c3-adca04e1a6ad
59	product/Tanda 18L/Tanda_1.png	t	cf47ba15-2d0c-487f-9f03-8a99768eedcb
60	product/Tanda 18L/Tanda_2.png	f	cf47ba15-2d0c-487f-9f03-8a99768eedcb
61	product/Tanda 18L/Tanda_3.jpeg	f	cf47ba15-2d0c-487f-9f03-8a99768eedcb
63	product/MiniS (RTA)/MINI_S新包装.jpeg	f	2ede9c6f-c5fb-4a24-8e51-15a93f2380dc
64	product/Led D/7.png	t	cac23bb0-443f-473c-9490-bf2aff0c09d4
65	product/Led D/5.png	f	cac23bb0-443f-473c-9490-bf2aff0c09d4
66	product/Led D/8.png	f	cac23bb0-443f-473c-9490-bf2aff0c09d4
69	product/i-Led/21.png	f	2c5633e0-786a-4d67-a7e2-6e3572c6b508
75	product/UDS-K LED/K_3.jpeg	f	55a70082-0bdc-4b4b-a1d7-57e90c3a4847
67	product/i-Led/17.jpeg	f	2c5633e0-786a-4d67-a7e2-6e3572c6b508
68	product/i-Led/4.jpeg	t	2c5633e0-786a-4d67-a7e2-6e3572c6b508
71	product/King Kong (Japanese Bearings)/2.png	t	165144d1-88c4-470e-b35f-dd6071d0da33
72	product/King Kong (Japanese Bearings)/6.png	f	165144d1-88c4-470e-b35f-dd6071d0da33
73	product/UDS-K LED/UDS-K_LED.png	t	55a70082-0bdc-4b4b-a1d7-57e90c3a4847
74	product/UDS-K LED/k_5x4_1.jpeg	f	55a70082-0bdc-4b4b-a1d7-57e90c3a4847
76	product/A-Led/UDS-A_LED_.jpeg	t	d00163c7-ec90-40ad-8113-3230290440a1
77	product/A-Led/A2.jpeg	f	d00163c7-ec90-40ad-8113-3230290440a1
78	product/A-Led/A_5X4.jpeg	f	d00163c7-ec90-40ad-8113-3230290440a1
80	product/U-6/2.png	f	76aea991-1405-4bf9-986a-6869f96f7872
79	product/U-6/1.png	f	76aea991-1405-4bf9-986a-6869f96f7872
81	product/U-6/9.png	t	76aea991-1405-4bf9-986a-6869f96f7872
82	product/Apex Blue/1.png	t	7b48ce26-a176-4a24-8d87-8379c99e0c60
83	product/Apex Blue/2.jpeg	f	7b48ce26-a176-4a24-8d87-8379c99e0c60
84	product/Apex Blue/3.png	f	7b48ce26-a176-4a24-8d87-8379c99e0c60
85	product/Apex Gold Plus III/WOODPEX_III_Plus_3.png	t	c4b17ff2-5676-4608-a561-d14812432f44
86	product/Apex Gold Plus III/WOODPEX_III_Plus_4.png	f	c4b17ff2-5676-4608-a561-d14812432f44
90	product/E-com/2.png	t	8bce460e-76fa-4ac4-9e55-f2bbf7bc5616
91	product/E-com/4.jpeg	f	8bce460e-76fa-4ac4-9e55-f2bbf7bc5616
92	product/E-com/11.png	f	8bce460e-76fa-4ac4-9e55-f2bbf7bc5616
93	product/MotoPex/motopex_front_view.jpeg	t	821375a9-17ca-4a00-b8ac-9a8362887704
94	product/MotoPex/MotoPex__正面.png	f	821375a9-17ca-4a00-b8ac-9a8362887704
95	product/Ai-Motor/Ai-motor_2.png	t	5b1f4e89-e9fe-4ba2-8e8e-03b6813d0597
96	product/Ai-Motor/Ai-motor_6.png	f	5b1f4e89-e9fe-4ba2-8e8e-03b6813d0597
97	product/Q3/3801638971789_.pic_hd.jpeg	t	ef2a66ca-ed73-4ee2-a3fe-49a3ea9db75a
99	product/U-Cem/U_Cem.png	t	d03f68d5-1c9e-4f4e-b8a8-aeca15c31f91
100	product/U-Cem/U_Cem_2.png	f	d03f68d5-1c9e-4f4e-b8a8-aeca15c31f91
101	product/DenFil Etchant/Acid_Etch.png	t	0d373ffd-51a7-4095-9f82-6f979738d86b
102	product/U-Bond/U_Bond.png	t	6d9cc09a-e26a-40bd-9cb6-8b5acad702f9
103	product/DenFil Flow/DenFil_Flow_Syringe_2_gm.png	t	a6340c5a-42d7-40b1-ae2f-2685748d0f82
104	product/DenFil Bulk Flow/DenFil_Bulk_Flow.png	t	6d7fc330-7c9d-404f-9152-1af900cc46ab
105	product/DenFil N/DenFil_N_Syringe_4_gm.png	t	09d4f44f-e1b5-4f4e-829d-3da5b51a765b
106	product/DenFil N/DenFil_N_4_gm.png	f	09d4f44f-e1b5-4f4e-829d-3da5b51a765b
107	product/Dual Core/Dual_Core.png	t	d06f336a-f7d6-409d-ad0d-1350ccd26ed4
108	product/Dual Core/Dual_Core_2.png	f	d06f336a-f7d6-409d-ad0d-1350ccd26ed4
109	product/Tanda 23L/Tanda_1.png	t	f4c5e182-a1f3-4fb2-9e9b-da2857859ddd
110	product/Tanda 23L/Tanda_2.png	f	f4c5e182-a1f3-4fb2-9e9b-da2857859ddd
111	product/Tanda 23L/Tanda_4.jpeg	f	f4c5e182-a1f3-4fb2-9e9b-da2857859ddd
115	product/Gemini™ Laser/Gemini_Diode_laser_with_PBM_adaptor.jpeg	t	d063cc1e-10e3-48cb-9339-b70b0a3bb999
116	product/Gemini™ Laser/Gemini_Diode_laser.jpeg	f	d063cc1e-10e3-48cb-9339-b70b0a3bb999
117	product/Gemini™ Laser/Gemini_Laser_Kit.jpeg	f	d063cc1e-10e3-48cb-9339-b70b0a3bb999
114	product/Ultrapak/Ultrapak_family.png	t	36391c85-567b-4740-8e45-1f82597c0c01
120	product/Ultrapak/Ultrapak_family_2.png	f	36391c85-567b-4740-8e45-1f82597c0c01
121	product/Ultrapak/Ultrapak_Cord_Size_000.jpeg	f	36391c85-567b-4740-8e45-1f82597c0c01
122	product/Ultrapak/Ultrapak_Cord_Size_00.jpeg	f	36391c85-567b-4740-8e45-1f82597c0c01
123	product/Ultrapak/Ultrapak_0.png	f	36391c85-567b-4740-8e45-1f82597c0c01
124	product/Ultrapak/Ultrapak_Cord_Size_1.jpeg	f	36391c85-567b-4740-8e45-1f82597c0c01
70	product/B-cure/7.png	f	e07b0a55-832a-40b5-893c-d7686bd3f666
125	product/Ultrapak/Ultrapak_2.png	f	36391c85-567b-4740-8e45-1f82597c0c01
126	product/Ultrapak/Ultrapak_3.png	f	36391c85-567b-4740-8e45-1f82597c0c01
127	product/B-cure/1.png	t	e07b0a55-832a-40b5-893c-d7686bd3f666
130	product/Ultrapak E/Ultrapak_E_Cord_Size_00_1.jpeg	f	68a3d57a-608f-4be7-88fc-f6299964a47b
131	product/Ultrapak E/Ultrapak_E_Cord_Size_0_1.jpeg	f	68a3d57a-608f-4be7-88fc-f6299964a47b
132	product/Ultrapak E/Ultrapak_E_Cord_Size_1_1.jpeg	f	68a3d57a-608f-4be7-88fc-f6299964a47b
55	product/Zoom single kit/Acid_Etch.png	t	03b72a45-05f7-4cc9-8e25-95365bf03849
62	product/MiniS (RTA)/Minis_190227.png	t	2ede9c6f-c5fb-4a24-8e51-15a93f2380dc
98	product/Q7/5_qFJXDPg.png	t	04e74632-6afd-4f2f-8d40-4d1145cb577a
129	product/Ultrapak E/Ultrapak_Epinephrine_Family_AUC8mlO.jpeg	t	68a3d57a-608f-4be7-88fc-f6299964a47b
138	product/Fischer's Ultrapak Packers (45º to handle)/Ultrapak_Packer_TissueManagment.png	t	7011f172-99ac-4eb0-8daa-e6e9126d69fd
139	product/Fischer's Ultrapak Packers (45º to handle)/Fischers_Ultrapak_Packer.png	f	7011f172-99ac-4eb0-8daa-e6e9126d69fd
140	product/Fischer's Ultrapak Packers (45º to handle)/170_Fischers_Ultrapak_Packers_Serrat_Nj0KkwO.jpeg	f	7011f172-99ac-4eb0-8daa-e6e9126d69fd
142	product/Fi-G & Fi-P/2.jpeg	t	41594e5b-8b19-4656-8e18-907be15f61ed
133	product/Ultrapak E/Ultrapak_E_Cord_Size_2_1.jpeg	f	68a3d57a-608f-4be7-88fc-f6299964a47b
141	product/Soft Tray Classic Sheets/Soft_tray_Classic_Sheets.png	t	021f7ba2-5e3a-4d2b-b5fd-386005b6fe72
143	product/Apex Gold Plus V/Gold_plus_V_1.png	t	94066a49-0d5e-4fe5-b11d-be8569c7cb03
144	product/Apex Gold Plus V/Gold_Plus_V_2.png	f	94066a49-0d5e-4fe5-b11d-be8569c7cb03
145	product/Apex Gold Plus V/Gold_plus_V_3.png	f	94066a49-0d5e-4fe5-b11d-be8569c7cb03
146	product/Apex Gold Plus V/Gold_plus_V_4.png	f	94066a49-0d5e-4fe5-b11d-be8569c7cb03
\.


--
-- Data for Name: product_productitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_productitem (id, species, stock, product_id) FROM stdin;
1	A1	25	021f7ba2-5e3a-4d2b-b5fd-386005b6fe72
2	A2	6	021f7ba2-5e3a-4d2b-b5fd-386005b6fe72
\.


--
-- Data for Name: product_productvideourl; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_productvideourl (id, url, product_id) FROM stdin;
8	https://www.youtube.com/embed/rV1q96bUV5w	ccc7cccf-0d02-4c98-aeec-928390dbad8f
11	https://www.youtube.com/embed/Cr4BQW9o3LU	03b72a45-05f7-4cc9-8e25-95365bf03849
12	https://www.youtube.com/embed/ZpvETrISBcw	03b72a45-05f7-4cc9-8e25-95365bf03849
13	https://www.youtube.com/embed/Hro29kh8l6A	03b72a45-05f7-4cc9-8e25-95365bf03849
14	https://www.youtube.com/embed/PeImAu65msM	821375a9-17ca-4a00-b8ac-9a8362887704
15	https://www.youtube.com/embed/dJNPSPVOZy0	821375a9-17ca-4a00-b8ac-9a8362887704
16	https://www.youtube.com/embed/l9uEfwAm_N0	821375a9-17ca-4a00-b8ac-9a8362887704
17	https://www.youtube.com/embed/EcdJj-amezU	821375a9-17ca-4a00-b8ac-9a8362887704
18	https://www.youtube.com/embed/-F516kvzKm8	5b1f4e89-e9fe-4ba2-8e8e-03b6813d0597
19	https://www.youtube.com/embed/xeUGz4Fy87Q	5b1f4e89-e9fe-4ba2-8e8e-03b6813d0597
20	https://www.youtube.com/embed/zSwiNU8OvBE	5b1f4e89-e9fe-4ba2-8e8e-03b6813d0597
21	https://www.youtube.com/embed/bLIhquHsOfg	5b1f4e89-e9fe-4ba2-8e8e-03b6813d0597
23	https://www.youtube.com/embed/-LMAAYHLpMw	36391c85-567b-4740-8e45-1f82597c0c01
24	https://www.youtube.com/embed/vm52iReD8fQ	36391c85-567b-4740-8e45-1f82597c0c01
25	https://www.youtube.com/embed/lVMjX24RMEo	d063cc1e-10e3-48cb-9339-b70b0a3bb999
26	https://www.youtube.com/embed/E-ca0vGhiBE	d063cc1e-10e3-48cb-9339-b70b0a3bb999
27	https://www.youtube.com/embed/w6Nvfu1DmDc	d063cc1e-10e3-48cb-9339-b70b0a3bb999
28	https://www.youtube.com/embed/vm52iReD8fQ	68a3d57a-608f-4be7-88fc-f6299964a47b
29	https://www.youtube.com/embed/-LMAAYHLpMw	68a3d57a-608f-4be7-88fc-f6299964a47b
30	https://www.youtube.com/embed/bHVnVKtARTA	41594e5b-8b19-4656-8e18-907be15f61ed
31	https://www.youtube.com/embed/seGUyvtvU3c	41594e5b-8b19-4656-8e18-907be15f61ed
32	https://www.youtube.com/embed/66sgCyqeY-c	41594e5b-8b19-4656-8e18-907be15f61ed
33	https://www.youtube.com/embed/1knNihLUDfE	41594e5b-8b19-4656-8e18-907be15f61ed
34	https://www.youtube.com/embed/UuCvpEbgurI	94066a49-0d5e-4fe5-b11d-be8569c7cb03
\.


--
-- Data for Name: product_review; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_review (id, content, rate, product_id, user_id) FROM stdin;
80	very good. the tools are autoclaved well. Thank you.	4	cf47ba15-2d0c-487f-9f03-8a99768eedcb	11
82	good	0	ccc7cccf-0d02-4c98-aeec-928390dbad8f	31
83	Great Device!	5	94066a49-0d5e-4fe5-b11d-be8569c7cb03	31
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
19	Composite	8
20	Sensors	15
21	Retraction cords	14
22	Micromotors	17
23	Obtura System	12
\.


--
-- Data for Name: product_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_type (id, name, image, hover_image, category_details_image, category_image, display_ordering) FROM stdin;
11	Devices	type/Devices/KMC-1-.jpeg	type/Devices/KMC-1-_Jbxw062.jpeg	type/Devices/1_2dmOhOZ.jpeg	type/Devices/KMC-1-_J2CiYd6.jpeg	\N
13	Tools	type/Tools/tools_outer_cover_bscEWUl.jpeg	type/Tools/tools_outer_cover.jpeg	type/Tools/WhatsApp_Image_2022-10-13_at_11.26.59_AM.jpeg	type/Tools/tools_hzPHRWw.jpeg	\N
12	Materials	type/Materials/Materials_outer_cover.jpeg	type/Materials/Materials_outer_cover_keAExeW.jpeg	type/Materials/WhatsApp_Image_2022-10-13_at_11.27.16_AM.jpeg	type/Materials/Materials_inner_cover.jpeg	\N
\.


--
-- Data for Name: product_wishlist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_wishlist (id, product_id, user_id) FROM stdin;
\.


--
-- Data for Name: translations_translation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.translations_translation (id, object_id, field, language, text, content_type_id) FROM stdin;
15	1	title	ar	عننا	8
16	1	sub_title	ar	أملأ الفراغات	8
17	1	about_title	ar	معلومات عنا	9
19	1	testimonial_title	ar	شهادة	9
20	1	testimonial_subtitle	ar	إليك بعض ما قاله عملاؤنا عن KMC.	9
21	1	text	ar	الزبائن السعداء	11
22	3	text	ar	عيادات و مراكز	11
23	2	text	ar	علامات تجارية	11
24	1	name	ar	دكتور. خالد عمار	10
25	1	title	ar	مركز الحياة لطب الاسنان	10
26	1	text	ar	لوريم إيبسوم هو ببساطة نص شكلي للطباعة و\r\n                  صناعة التنضيد. لقد كان لوريم إيبسوم هو صاحب الصناعة\r\n                  نص وهمي قياسي منذ القرن الخامس عشر الميلادي ، عندما كان مجهولاً\r\n                  أخذت الطابعة لوحًا من النوع وتدافعت لتكوين نوع\r\n                  كتاب العينة.	10
27	3	name	ar	دكتورز علي رأفت	10
28	3	title	ar	نورسبتليا إلشيخ زايد	10
29	3	text	ar	اجعل مبادئك خطًا أحمر، ولا تجعل رغبتك في النجاح سببًا في تنازلك عن مبادئك، فلن يهم أن تكون ناجحًا ودون مبادئ.\r\nولكم كل الشكر و الاحترام و التقدير.\r\nاجعل مبادئك خطًا أحمر، ولا تجعل رغبتك في النجاح سببًا في تنازلك عن مبادئك، فلن يهم أن تكون ناجحًا ودون مبادئ.\r\nولكم كل الشكر و الاحترام و التقدير.	10
30	2	name	ar	دكتور ابراهيم عبدالرحمن	10
31	2	text	ar	اجعل مبادئك خطًا أحمر، ولا تجعل رغبتك في النجاح سببًا في تنازلك عن مبادئك، فلن يهم أن تكون ناجحًا ودون مبادئ.\r\nولكم كل الشكر و الاحترام و التقدير.اجعل مبادئك خطًا أحمر، ولا تجعل رغبتك في النجاح سببًا في تنازلك عن مبادئك، فلن يهم أن تكون ناجحًا ودون مبادئ.\r\nولكم كل الشكر و الاحترام و التقدير.	10
32	2	title	ar	نويرو اسبتاليا المتميز	10
40	3	number	ar	٧٠	11
41	2	number	ar	٣٠	11
43	1	number	ar	٣٣٤	11
18	1	about_text	ar	الألم في حد ذاته مهم للنخبة الشحمية الرئيسية. نعومة الحرية هي نتيجة حقيقة أن الحياة كلها لها تمييز مماثل ، وأنه لا فائدة من المقاضاة ، وأنه لا يوجد خيار سهل ، لكنه خيار رائع ، من الأساسي. مصدر. الألم في حد ذاته هو الألم ، إنه حب النخبة الرئيسية المنغمسة. مرحبًا ، اكتشف! لن نلجأ أبدًا إلى كرهنا من خلال متعة أن تفسدنا نعومة خياراتنا! وجع المخاض وآلام اللذة! المرونة\r\n يحصلون على أكبر قدر من الحرية ، لأن الحياة كلها لها تمييز مماثل ؛\r\n   لا فائدة من حل المتهمين ، لكن البعض الآخر بدون عوائق\r\n الاختيار ، التي تعززها.الألم في حد ذاته مهم للنخبة الشحمية الرئيسية. نعومة الحرية هي نتيجة حقيقة أن الحياة كلها لها تمييز مماثل ، وأنه لا فائدة من المقاضاة ، وأنه لا يوجد خيار سهل ، لكنه خيار رائع ، من الأساسي. مصدر. الألم في حد ذاته هو الألم ، إنه حب النخبة الرئيسية المنغمسة. مرحبًا ، اكتشف! لن نلجأ أبدًا إلى كرهنا من خلال متعة أن تفسدنا نعومة خياراتنا! وجع المخاض وآلام اللذة! المرونة\r\nيحصلون على أكبر قدر من الحرية ، لأن الحياة كلها لها تمييز مماثل ؛\r\n لا فائدة من حل المتهمين ، لكن البعض الآخر بدون عوائق\r\n الاختيار ، التي تعززها.	9
45	1	quote	ar	"ما وراء حدود مستلزمات طب الأسنان"	46
46	1	button_text	ar	اطلب الان	46
78	821375a9-17ca-4a00-b8ac-9a8362887704	description	ar	اول جهاز إندو موتور تم انتاجه بموتور برشلس\r\nموتور برشلس يجعل العمر الافتراضي للجهاز اطول\r\nمزود بابيكس لوكيتور داخلي\r\nالجهاز صامت لا يخرج منه اي صوت\r\nهيد الكونترا صغيرة للغاية\r\nالكونترا تدور ٣٦٠ درجة\r\nقوة البطارية تصل الي ٢٠٠ مللي امبير	14
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
66	03b72a45-05f7-4cc9-8e25-95365bf03849	description	ar	يحتوي على ٢٥٪ هيدروجين بيروكسيد\r\nاسنان تصل إلى ٨ درجات أكثر بياضا فى جلسة واحدة فقط\r\nالكيت تكفى ٤ جلسات\r\nالجلسة الواحدة تأخذ ١٥ دقيقة	14
67	eafb75a8-4bb7-499c-89c3-adca04e1a6ad	description	ar	٢٢٪ كارباميد بيروكسيد\r\n٣ سرنجات مطلوبة للحالة الواحدة\r\nالسرنجة الواحدة تكفى لثلاثة ايام	14
68	ccc7cccf-0d02-4c98-aeec-928390dbad8f	description	ar	مقياس الضوء في القاعدة\r\n٣ انظمة للتشغيل\r\nمروحة داخلية لتهدئة الحرارة\r\nذاكرة داخلية للحفظ\r\nشكل انسيابي لسهولة التحكم	14
69	2c5633e0-786a-4d67-a7e2-6e3572c6b508	description	ar	له نظامين: النظام العادي و النظام القوي الذي يصل الى ٢٣٠٠ وات \r\n\r\nيستطيع تنشيف ٢ مللي من الكمبوزيت في الثانية الواحدة في النظام القوي\r\n\r\nيمكن استخدامه في حالات الاورثو، الفينير او البوست و كور	14
70	e07b0a55-832a-40b5-893c-d7686bd3f666	description	ar	اضاءة و برنامج  خصيصا لتنشيف براكت الاورثو\r\n\r\nاللمبة ٥ وات ليد\r\n\r\nقوة تصل الي ٢٠٠٠ وات\r\n\r\n٢ بطارية للعمل بدون انقطاع\r\n\r\n٢ مكان لشحن البطاريات\r\n\r\n٥ برامج للتشغيل في جهاز واحد	14
71	165144d1-88c4-470e-b35f-dd6071d0da33	description	ar	ضد الصدمات من على بعد ١ متر\r\n\r\nرمان بلي ياباني	14
72	55a70082-0bdc-4b4b-a1d7-57e90c3a4847	description	ar	البرنامج: بريو\r\nالذبذبة: ٢٩،٠٠٠\r\nليد\r\nيمكن تعقيم الهاندبيس على درجة ١٣٤\r\n٥ تب سكيلر مع الجهاز	14
73	d00163c7-ec90-40ad-8113-3230290440a1	description	ar	٣ برامج: سكيلينج، بريو و اندو\r\n٢٩،٠٠٠ ذبذبة\r\nليد\r\nيمكن تعقيم الهاندبيس على درجة حرارة ١٣٤ مئوية\r\n٥ تيب سكيلينج + ١ تب اريجشن مع الجهاز	14
74	7b48ce26-a176-4a24-8d87-8379c99e0c60	description	ar	الجيل الرابع\r\n\r\nالدقة ٩٧٪\r\n\r\nقوة البطارية: ٧٥٠ مللي امبير	14
75	c4b17ff2-5676-4608-a561-d14812432f44	description	ar	يمكن توصيله بجهاز روتاري\r\n\r\nالجيل السادس \r\n\r\nالدقة: ٩٧٪\r\n\r\nالبطارية: ٧٥٠ مللي امبير	14
77	8bce460e-76fa-4ac4-9e55-f2bbf7bc5616	description	ar	سرعة: تصل الي ١٠٠٠ لفة في الدقيقة\r\nقوة: تصل الي ٥ نيوتن\r\nيمكن أن يتم إيصاله بابيكس لوكيتور وودبيكر\r\nخاصية الوقوف او الدوران عكس أو تهدئة السرعة عند الوصول لنهاية القناة\r\nخاصية البدء أو التوقف التلقائي عند الدخول او الخروج من القناة\r\nجميع الفايل سيستم المشهورة تم تسجيلها و يمكن حفظ السيستم الخاص بك	14
79	5b1f4e89-e9fe-4ba2-8e8e-03b6813d0597	description	ar	جهاز إندو موتور تم انتاجه بموتور برشلس\r\nموتور برشلس يجعل العمر الافتراضي للجهاز اطول \r\nالشحن لاسلكي\r\nمزود بابيكس لوكيتور داخلي\r\nالجهاز صامت لا يخرج منه اي صوت\r\nهيد الكونترا صغيرة للغاية\r\nالكونترا تدور ٣٦٠ درجة\r\nقوة البطارية تصل الي ٢٠٠ مللي امبير	14
80	ef2a66ca-ed73-4ee2-a3fe-49a3ea9db75a	description	ar	يمكنه قتل الفيروس مباشرة من خلال جهد كهربائي يصل الي عشرات الآلاف من الفولتات\r\nبإمكان تكنولوجيا الضغط العالي القضاء علي جسيمات تصل حتى حجم ١٤ نانومتر\r\nالجهاز لا يحتاج إلى تغيير فلاتر و لا يوجد به مستهلكات مثل الأجهزة التي تعمل بفلتر\r\nيقوم بتنقية الهواء من الفيروسات، البكتريا، الميكروبات، دخان السجائر، شعر الحيوانات الأليفة، العثة و الروائح الكريهة\r\nالمساحة التي يغطيها تصل من ٣٠ الي ٤٠ متر مربع\r\n٤ مستويات لقوة المروحة الداخلية\r\nقوة إيصال الهواء النظيف للغرفة تصل الى ٣٥٠ متر مكعب في الساعة\r\nيوجد به نظام ضبط القوة التلقائي ونظام النوم المؤقت	14
81	04e74632-6afd-4f2f-8d40-4d1145cb577a	description	ar	يمكنه قتل الفيروس مباشرة من خلال جهد كهربائي يصل الي عشرات الآلاف من الفولتات\r\nبإمكان تكنولوجيا الضغط العالي القضاء علي جسيمات تصل حتى حجم ١٤ نانومتر\r\n\r\nالجهاز لا يحتاج إلى تغيير فلاتر و لا يوجد به مستهلكات مثل الأجهزة التي تعمل بفلتر\r\nيقوم بتنقية الهواء من الفيروسات، البكتريا، الميكروبات، دخان السجائر، شعر الحيوانات الأليفة، العثة و الروائح الكريهة\r\nالمساحة التي يغطيها تصل من ٧٠ الي ١١٠ متر مربع\r\n٥ مستويات لقوة المروحة الداخلية\r\nقوة إيصال الهواء النظيف للغرفة تصل الى ٨٠٠ متر مكعب في الساعة\r\nيوجد به نظام ضبط القوة التلقائي ونظام النوم المؤقت	14
83	36391c85-567b-4740-8e45-1f82597c0c01	description	ar	مصنوع من ١٠٠٪ قطن، محبوك لالاف من الحلقات الصغيرة و هذا التصميم يمارس الضغط الخفيف عند وضعه فيقوم بابعاد الانسجة عن الأسنان في \r\n٥ دقائق في راحة و امان للانسجة	14
84	68a3d57a-608f-4be7-88fc-f6299964a47b	description	ar	يتم تشريب الحبل المحبوك هيدروكلوريد الإبينفرين الراسيمي\r\n\r\nمصنوع من ١٠٠٪ قطن، محبوك لالاف من الحلقات الصغيرة و هذا التصميم يمارس الضغط الخفيف عند وضعه فيقوم بابعاد الانسجة عن الأسنان في \r\n٥ دقائق في راحة و امان للانسجة	14
85	7011f172-99ac-4eb0-8daa-e6e9126d69fd	description	ar	أدوات التعبئة المسننة الرقيقة، تغرق حوافها الرقيقة وتسنيناتها الدقيقة في الحبل ، مما يمنعه من الانزلاق ويقلل من خطر قطع المرفق اللثوي	14
86	94066a49-0d5e-4fe5-b11d-be8569c7cb03	description	ar	Woodpex V هو الجيل الخامس من السلسلة الذهبية الشهيرة\r\n\r\nسمات\r\nدقيق: تخلص من التداخل من خلال نظام معالجة البيانات DSP.\r\n التكنولوجيا الجديدة: رقاقة معالجة البيانات أمريكية\r\n يمكن تعديل حجم الصوت: إيقاف ، منخفض ، متوسط و​​عالي\r\nشاشة ملونة O-led	14
\.


--
-- Data for Name: user_otp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_otp (id, created, modified, code, user_id) FROM stdin;
35	2022-09-14 14:16:36.877852+00	2022-09-14 14:16:36.877923+00	5353	34
1	2022-03-30 16:02:17.252242+00	2022-04-04 08:13:36.923555+00	932446	1
36	2022-09-14 14:19:34.263021+00	2022-09-14 14:19:34.263082+00	5001	35
38	2022-09-14 14:47:25.92143+00	2022-09-14 14:47:25.921483+00	2853	37
25	2022-05-18 09:51:30.827889+00	2022-05-18 09:51:30.827942+00	3723	25
37	2022-09-14 14:21:32.41728+00	2022-09-14 14:49:23.769795+00	8586	36
39	2022-09-18 08:42:58.715436+00	2022-09-18 08:42:58.715717+00	3232	38
12	2022-04-04 11:04:11.910299+00	2022-04-04 11:04:39.425602+00	3459	12
19	2022-04-12 12:29:06.226839+00	2022-04-12 12:29:06.226935+00	9948	19
15	2022-04-05 13:17:41.907968+00	2022-04-13 20:06:17.587337+00	6974	15
21	2022-04-14 12:19:04.893896+00	2022-04-14 13:22:19.920925+00	8774	21
22	2022-04-20 12:53:14.184549+00	2022-04-20 12:53:14.18459+00	9331	22
23	2022-04-25 13:56:01.299571+00	2022-04-25 13:56:01.299618+00	5435	23
11	2022-04-04 09:38:24.061006+00	2022-05-24 10:04:05.159069+00	9808	11
24	2022-04-26 09:40:49.526579+00	2022-04-26 09:41:08.119014+00	2614	24
31	2022-07-03 09:19:22.257679+00	2022-09-22 15:20:36.923234+00	1617	31
41	2022-10-13 09:05:18.07226+00	2022-10-13 09:05:18.072767+00	8328	40
14	2022-04-05 10:53:02.175259+00	2022-10-13 10:05:24.894809+00	4064	14
42	2022-10-23 09:47:51.993385+00	2022-10-23 09:47:51.993425+00	6665	41
43	2022-10-23 09:53:14.147408+00	2022-10-23 09:53:14.147465+00	8202	42
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
42	pbkdf2_sha256$216000$IuHMNzytGmnZ$ZYzgV2Vm+iGksJURPyaOO6R9QomKrFsX1pfEX6/nDg4=	\N	f	01098872271	Youssef Shaker	f	t	youssefaymanshaker@outlook.com
40	pbkdf2_sha256$216000$Xdk5LwJQdoKW$YdXO8IGKZXch0zn6gI7/ZFbWemB+6Im72p1oa5fUWW8=	\N	f	01010081222	Abdulrahman Hashem	f	t	masben_98@hotmail.com
14	pbkdf2_sha256$216000$QFgAI4eGQgdy$6aYXIxB09TjvbbaQTG/ok3Wta7qfMan7e6G1x57/yUk=	\N	f	01000832338	mahmoud	f	f	3bdelnaser@gmail.com
1	pbkdf2_sha256$216000$H95uWInmUohf$BDMWuu2+9aLJbvF4FeA0uhjfOWgAq8FEiCgssf1/Tfg=	2023-04-30 12:21:28.765039+00	t	0123456789	Az studios	t	t	az@az.com
31	pbkdf2_sha256$216000$N7PPmlWDOGsy$m/yNrlmgMQXfzwDZdpxi7HM4AKz/R/sKUbS9zDUbTug=	2023-05-14 10:24:28.055308+00	t	01121135548	karim	t	t	karimwk@hotmail.com
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

COPY public.user_useraddress (id, name, phone, country, city, address, building, floor, apartment, is_default, user_id, phone_country_code) FROM stdin;
3	mohamed	0123456789	egypt	new cairo	safer	28	3	5	f	1	+20
80	mousa	01060396411	Albania	Elbasan	minia	1	4	4	f	15	+20
78	ahmed sah	01208271271	Albania	Elbasan	minia	29	4	5	t	15	+20
93	Mohamed Maher	01142403047	Egypt	Giza	Hadayk El Ahram	273	5	703	f	22	+20
100	Mohamed	01142403047	Albania	Petran	asdfc gvhbgjnkl	2	2	2345	t	22	+20
79	Azab	01208271271	Iran	`Aliabad	minia k09.,	29	4	2	f	15	+20
77	maryam	01208271271	Albania	Elbasan	minia	29	4	2	f	15	+20
98	loay moataz	01111737173	Egypt	Cairo	rehab	1	1	13	t	12	+20
109	Eslam  Ghanem	01226264270	Albania	Elbasan	El sheihk st.	1	1	1	t	11	+355
110	eslam Ghanem	01226264270	Egypt	Al Mahallah al Kubra	El sheihk st	1	1	5	f	11	+20
192	karim Zen	01121135548	Egypt	Cairo	Mohamed Youssef El-Qady St.- Al Golf, Nasr City	8	3	5	t	31	+20
193	mousa nageh	01067849428	Egypt	Cairo	el marg	3	3	3	t	41	+20
194	Youssef	01098872271	Egypt	Madinat an Nasr	Baron City	58	8	86	t	42	+20
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

SELECT pg_catalog.setval('public.about_us_testimonial_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.auth_permission_id_seq', 179, true);


--
-- Name: cart_cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cart_cart_id_seq', 109, true);


--
-- Name: cart_cartitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cart_cartitem_id_seq', 571, true);


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

SELECT pg_catalog.setval('public.courses_course_id_seq', 9, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 843, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 53, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 375, true);


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

SELECT pg_catalog.setval('public.home_homeswiper_id_seq', 4, true);


--
-- Name: offers_offer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.offers_offer_id_seq', 1, true);


--
-- Name: order_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_order_id_seq', 190, true);


--
-- Name: order_orderaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_orderaddress_id_seq', 186, true);


--
-- Name: order_orderitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_orderitem_id_seq', 401, true);


--
-- Name: order_refund_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_refund_id_seq', 57, true);


--
-- Name: order_refunditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_refunditem_id_seq', 75, true);


--
-- Name: points_points_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.points_points_id_seq', 113, true);


--
-- Name: product_branch_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_branch_id_seq', 17, true);


--
-- Name: product_brand_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_brand_id_seq', 8, true);


--
-- Name: product_productimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_productimage_id_seq', 146, true);


--
-- Name: product_productitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_productitem_id_seq', 4, true);


--
-- Name: product_productvideourl_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_productvideourl_id_seq', 34, true);


--
-- Name: product_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_review_id_seq', 83, true);


--
-- Name: product_subbranch_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_subbranch_id_seq', 23, true);


--
-- Name: product_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_type_id_seq', 13, true);


--
-- Name: product_wishlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_wishlist_id_seq', 585, true);


--
-- Name: translations_translation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.translations_translation_id_seq', 86, true);


--
-- Name: user_otp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_otp_id_seq', 43, true);


--
-- Name: user_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_user_groups_id_seq', 1, false);


--
-- Name: user_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_user_id_seq', 42, true);


--
-- Name: user_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_user_user_permissions_id_seq', 1, false);


--
-- Name: user_useraddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_useraddress_id_seq', 194, true);


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
-- Name: points_points points_points_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.points_points
    ADD CONSTRAINT points_points_pkey PRIMARY KEY (id);


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
-- Name: product_review product_review_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_review
    ADD CONSTRAINT product_review_pkey PRIMARY KEY (id);


--
-- Name: product_review product_review_product_id_user_id_ae9672e7_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_review
    ADD CONSTRAINT product_review_product_id_user_id_ae9672e7_uniq UNIQUE (product_id, user_id);


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
-- Name: user_otp user_otp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_otp
    ADD CONSTRAINT user_otp_pkey PRIMARY KEY (id);


--
-- Name: user_otp user_otp_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_otp
    ADD CONSTRAINT user_otp_user_id_key UNIQUE (user_id);


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
-- Name: points_points_order_id_960ab7fa; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX points_points_order_id_960ab7fa ON public.points_points USING btree (order_id);


--
-- Name: points_points_user_id_7e3910dc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX points_points_user_id_7e3910dc ON public.points_points USING btree (user_id);


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
-- Name: product_review_product_id_428b0c5c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_review_product_id_428b0c5c ON public.product_review USING btree (product_id);


--
-- Name: product_review_user_id_101f565f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_review_user_id_101f565f ON public.product_review USING btree (user_id);


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
-- Name: points_points points_points_order_id_960ab7fa_fk_order_order_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.points_points
    ADD CONSTRAINT points_points_order_id_960ab7fa_fk_order_order_id FOREIGN KEY (order_id) REFERENCES public.order_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: points_points points_points_user_id_7e3910dc_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.points_points
    ADD CONSTRAINT points_points_user_id_7e3910dc_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: product_review product_review_product_id_428b0c5c_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_review
    ADD CONSTRAINT product_review_product_id_428b0c5c_fk FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_review product_review_user_id_101f565f_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_review
    ADD CONSTRAINT product_review_user_id_101f565f_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: translations_translation translations_transla_content_type_id_df479760_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.translations_translation
    ADD CONSTRAINT translations_transla_content_type_id_df479760_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_otp user_otp_user_id_c742b812_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_otp
    ADD CONSTRAINT user_otp_user_id_c742b812_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: user_useraddress user_useraddress_user_id_c23aded4_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_useraddress
    ADD CONSTRAINT user_useraddress_user_id_c23aded4_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

