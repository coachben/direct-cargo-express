--
-- PostgreSQL database dump
--

\restrict OiP96olBvfVDeRGbB6YNuHMbKHXwQANYeQlxzmHTha0XTtyoAb6hn2gdFAOHkE8

-- Dumped from database version 15.15
-- Dumped by pg_dump version 15.15 (Homebrew)

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
-- Data for Name: payload_folders; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_folders (id, name, folder_id, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: media; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.media (id, alt, caption, folder_id, updated_at, created_at, url, thumbnail_u_r_l, filename, mime_type, filesize, width, height, focal_x, focal_y, sizes_thumbnail_url, sizes_thumbnail_width, sizes_thumbnail_height, sizes_thumbnail_mime_type, sizes_thumbnail_filesize, sizes_thumbnail_filename, sizes_square_url, sizes_square_width, sizes_square_height, sizes_square_mime_type, sizes_square_filesize, sizes_square_filename, sizes_small_url, sizes_small_width, sizes_small_height, sizes_small_mime_type, sizes_small_filesize, sizes_small_filename, sizes_medium_url, sizes_medium_width, sizes_medium_height, sizes_medium_mime_type, sizes_medium_filesize, sizes_medium_filename, sizes_large_url, sizes_large_width, sizes_large_height, sizes_large_mime_type, sizes_large_filesize, sizes_large_filename, sizes_xlarge_url, sizes_xlarge_width, sizes_xlarge_height, sizes_xlarge_mime_type, sizes_xlarge_filesize, sizes_xlarge_filename, sizes_og_url, sizes_og_width, sizes_og_height, sizes_og_mime_type, sizes_og_filesize, sizes_og_filename) FROM stdin;
1	Curving abstract shapes with an orange and blue gradient	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Photo by ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://unsplash.com/@kirp", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "Andrew Kliatskyi", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " on Unsplash.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	\N	2026-02-04 03:50:41.744+00	2026-02-04 03:50:41.744+00	/api/media/file/image-post2-2.webp	\N	image-post2-2.webp	image/webp	22332	1920	1080	50	50	/api/media/file/image-post2-2-300x169.webp	300	169	image/webp	2248	image-post2-2-300x169.webp	/api/media/file/image-post2-2-500x500.webp	500	500	image/webp	4952	image-post2-2-500x500.webp	/api/media/file/image-post2-2-600x338.webp	600	338	image/webp	5066	image-post2-2-600x338.webp	/api/media/file/image-post2-2-900x506.webp	900	506	image/webp	8036	image-post2-2-900x506.webp	/api/media/file/image-post2-2-1400x788.webp	1400	788	image/webp	13880	image-post2-2-1400x788.webp	/api/media/file/image-post2-2-1920x1080.webp	1920	1080	image/webp	22332	image-post2-2-1920x1080.webp	/api/media/file/image-post2-2-1200x630.webp	1200	630	image/webp	11010	image-post2-2-1200x630.webp
2	Curving abstract shapes with an orange and blue gradient	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Photo by ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://unsplash.com/@kirp", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "Andrew Kliatskyi", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " on Unsplash.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	\N	2026-02-04 03:50:41.896+00	2026-02-04 03:50:41.896+00	/api/media/file/image-post1-2.webp	\N	image-post1-2.webp	image/webp	15924	1920	1080	50	50	/api/media/file/image-post1-2-300x169.webp	300	169	image/webp	1524	image-post1-2-300x169.webp	/api/media/file/image-post1-2-500x500.webp	500	500	image/webp	3792	image-post1-2-500x500.webp	/api/media/file/image-post1-2-600x338.webp	600	338	image/webp	3622	image-post1-2-600x338.webp	/api/media/file/image-post1-2-900x506.webp	900	506	image/webp	5936	image-post1-2-900x506.webp	/api/media/file/image-post1-2-1400x788.webp	1400	788	image/webp	10210	image-post1-2-1400x788.webp	/api/media/file/image-post1-2-1920x1080.webp	1920	1080	image/webp	15924	image-post1-2-1920x1080.webp	/api/media/file/image-post1-2-1200x630.webp	1200	630	image/webp	8114	image-post1-2-1200x630.webp
3	Curving abstract shapes with an orange and blue gradient	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Photo by ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://unsplash.com/@kirp", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "Andrew Kliatskyi", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " on Unsplash.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	\N	2026-02-04 03:50:42.02+00	2026-02-04 03:50:42.02+00	/api/media/file/image-post3-2.webp	\N	image-post3-2.webp	image/webp	14662	1920	1080	50	50	/api/media/file/image-post3-2-300x169.webp	300	169	image/webp	1240	image-post3-2-300x169.webp	/api/media/file/image-post3-2-500x500.webp	500	500	image/webp	2732	image-post3-2-500x500.webp	/api/media/file/image-post3-2-600x338.webp	600	338	image/webp	3018	image-post3-2-600x338.webp	/api/media/file/image-post3-2-900x506.webp	900	506	image/webp	5010	image-post3-2-900x506.webp	/api/media/file/image-post3-2-1400x788.webp	1400	788	image/webp	9070	image-post3-2-1400x788.webp	/api/media/file/image-post3-2-1920x1080.webp	1920	1080	image/webp	14662	image-post3-2-1920x1080.webp	/api/media/file/image-post3-2-1200x630.webp	1200	630	image/webp	6950	image-post3-2-1200x630.webp
4	Straight metallic shapes with a blue gradient	\N	\N	2026-02-04 03:54:12.226+00	2026-02-04 03:50:42.129+00	/api/media/file/Turning%20Vision%20into%20Legacy-6.png	/api/media/file/image-hero1-2-300x169.webp	Turning Vision into Legacy-6.png	image/png	487138	1584	672	50	50	/api/media/file/Turning%20Vision%20into%20Legacy-6-300x127.png	300	127	image/png	98562	Turning Vision into Legacy-6-300x127.png	/api/media/file/Turning%20Vision%20into%20Legacy-6-500x500.png	500	500	image/png	563737	Turning Vision into Legacy-6-500x500.png	/api/media/file/Turning%20Vision%20into%20Legacy-6-600x255.png	600	255	image/png	372384	Turning Vision into Legacy-6-600x255.png	/api/media/file/Turning%20Vision%20into%20Legacy-6-900x382.png	900	382	image/png	818521	Turning Vision into Legacy-6-900x382.png	/api/media/file/Turning%20Vision%20into%20Legacy-6-1400x594.png	1400	594	image/png	1928542	Turning Vision into Legacy-6-1400x594.png	/api/media/file/image-hero1-2-1920x1080.webp	\N	\N	\N	\N	\N	/api/media/file/Turning%20Vision%20into%20Legacy-6-1200x630.png	1200	630	image/png	1728916	Turning Vision into Legacy-6-1200x630.png
5	\N	\N	\N	2026-02-04 03:57:46.807+00	2026-02-04 03:57:46.807+00	/api/media/file/Barfect%20%20Logo-1.png	\N	Barfect  Logo-1.png	image/png	94807	1024	1024	50	50	/api/media/file/Barfect%20%20Logo-1-300x300.png	300	300	image/png	43505	Barfect  Logo-1-300x300.png	/api/media/file/Barfect%20%20Logo-1-500x500.png	500	500	image/png	100796	Barfect  Logo-1-500x500.png	/api/media/file/Barfect%20%20Logo-1-600x600.png	600	600	image/png	138870	Barfect  Logo-1-600x600.png	/api/media/file/Barfect%20%20Logo-1-900x900.png	900	900	image/png	286275	Barfect  Logo-1-900x900.png	/api/media/file/Barfect%20%20Logo-1.png	\N	\N	\N	\N	\N	/api/media/file/Barfect%20%20Logo-1.png	\N	\N	\N	\N	\N	/api/media/file/Barfect%20%20Logo-1-1200x630.png	1200	630	image/png	295762	Barfect  Logo-1-1200x630.png
6	\N	\N	\N	2026-02-04 03:57:46.916+00	2026-02-04 03:57:46.916+00	/api/media/file/Barfect%20Transparent%20Logo2-1.png	\N	Barfect Transparent Logo2-1.png	image/png	87705	1024	1024	50	50	/api/media/file/Barfect%20Transparent%20Logo2-1-300x300.png	300	300	image/png	44944	Barfect Transparent Logo2-1-300x300.png	/api/media/file/Barfect%20Transparent%20Logo2-1-500x500.png	500	500	image/png	104215	Barfect Transparent Logo2-1-500x500.png	/api/media/file/Barfect%20Transparent%20Logo2-1-600x600.png	600	600	image/png	143015	Barfect Transparent Logo2-1-600x600.png	/api/media/file/Barfect%20Transparent%20Logo2-1-900x900.png	900	900	image/png	287573	Barfect Transparent Logo2-1-900x900.png	/api/media/file/Barfect%20Transparent%20Logo2-1.png	\N	\N	\N	\N	\N	/api/media/file/Barfect%20Transparent%20Logo2-1.png	\N	\N	\N	\N	\N	/api/media/file/Barfect%20Transparent%20Logo2-1-1200x630.png	1200	630	image/png	283586	Barfect Transparent Logo2-1-1200x630.png
7	\N	\N	\N	2026-02-04 03:57:46.988+00	2026-02-04 03:57:46.988+00	/api/media/file/business-card-reference-1.png	\N	business-card-reference-1.png	image/png	206925	513	315	50	50	/api/media/file/business-card-reference-1-300x184.png	300	184	image/png	70836	business-card-reference-1-300x184.png	/api/media/file/business-card-reference-1-500x500.png	500	500	image/png	293973	business-card-reference-1-500x500.png	/api/media/file/business-card-reference-1.png	\N	\N	\N	\N	\N	/api/media/file/business-card-reference-1.png	\N	\N	\N	\N	\N	/api/media/file/business-card-reference-1.png	\N	\N	\N	\N	\N	/api/media/file/business-card-reference-1.png	\N	\N	\N	\N	\N	/api/media/file/business-card-reference-1.png	\N	\N	\N	\N	\N
8	\N	\N	\N	2026-02-04 03:57:47.023+00	2026-02-04 03:57:47.023+00	/api/media/file/content_sample-1.md	\N	content_sample-1.md	text/markdown	10947	\N	\N	\N	\N	/api/media/file/content_sample-1.md	\N	\N	\N	\N	\N	/api/media/file/content_sample-1.md	\N	\N	\N	\N	\N	/api/media/file/content_sample-1.md	\N	\N	\N	\N	\N	/api/media/file/content_sample-1.md	\N	\N	\N	\N	\N	/api/media/file/content_sample-1.md	\N	\N	\N	\N	\N	/api/media/file/content_sample-1.md	\N	\N	\N	\N	\N	/api/media/file/content_sample-1.md	\N	\N	\N	\N	\N
9	\N	\N	\N	2026-02-04 03:57:47.065+00	2026-02-04 03:57:47.065+00	/api/media/file/globe-animation-1.png	\N	globe-animation-1.png	image/png	27443	512	512	50	50	/api/media/file/globe-animation-1-300x300.png	300	300	image/png	13159	globe-animation-1-300x300.png	/api/media/file/globe-animation-1-500x500.png	500	500	image/png	26855	globe-animation-1-500x500.png	/api/media/file/globe-animation-1.png	\N	\N	\N	\N	\N	/api/media/file/globe-animation-1.png	\N	\N	\N	\N	\N	/api/media/file/globe-animation-1.png	\N	\N	\N	\N	\N	/api/media/file/globe-animation-1.png	\N	\N	\N	\N	\N	/api/media/file/globe-animation-1.png	\N	\N	\N	\N	\N
10	\N	\N	\N	2026-02-04 03:57:47.203+00	2026-02-04 03:57:47.203+00	/api/media/file/Innovation-Driven-1.png	\N	Innovation-Driven-1.png	image/png	399905	1024	1024	50	50	/api/media/file/Innovation-Driven-1-300x300.png	300	300	image/png	191769	Innovation-Driven-1-300x300.png	/api/media/file/Innovation-Driven-1-500x500.png	500	500	image/png	508304	Innovation-Driven-1-500x500.png	/api/media/file/Innovation-Driven-1-600x600.png	600	600	image/png	724809	Innovation-Driven-1-600x600.png	/api/media/file/Innovation-Driven-1-900x900.png	900	900	image/png	1588663	Innovation-Driven-1-900x900.png	/api/media/file/Innovation-Driven-1.png	\N	\N	\N	\N	\N	/api/media/file/Innovation-Driven-1.png	\N	\N	\N	\N	\N	/api/media/file/Innovation-Driven-1-1200x630.png	1200	630	image/png	1533543	Innovation-Driven-1-1200x630.png
11	\N	\N	\N	2026-02-04 03:57:47.416+00	2026-02-04 03:57:47.416+00	/api/media/file/Investment-Grade%20Execution-1.png	\N	Investment-Grade Execution-1.png	image/png	389868	1024	1024	50	50	/api/media/file/Investment-Grade%20Execution-1-300x300.png	300	300	image/png	173630	Investment-Grade Execution-1-300x300.png	/api/media/file/Investment-Grade%20Execution-1-500x500.png	500	500	image/png	441767	Investment-Grade Execution-1-500x500.png	/api/media/file/Investment-Grade%20Execution-1-600x600.png	600	600	image/png	622180	Investment-Grade Execution-1-600x600.png	/api/media/file/Investment-Grade%20Execution-1-900x900.png	900	900	image/png	1313033	Investment-Grade Execution-1-900x900.png	/api/media/file/Investment-Grade%20Execution-1.png	\N	\N	\N	\N	\N	/api/media/file/Investment-Grade%20Execution-1.png	\N	\N	\N	\N	\N	/api/media/file/Investment-Grade%20Execution-1-1200x630.png	1200	630	image/png	1322412	Investment-Grade Execution-1-1200x630.png
12	\N	\N	\N	2026-02-04 03:57:47.547+00	2026-02-04 03:57:47.547+00	/api/media/file/logo-main-1.png	\N	logo-main-1.png	image/png	575620	1024	1024	50	50	/api/media/file/logo-main-1-300x300.png	300	300	image/png	62518	logo-main-1-300x300.png	/api/media/file/logo-main-1-500x500.png	500	500	image/png	161670	logo-main-1-500x500.png	/api/media/file/logo-main-1-600x600.png	600	600	image/png	223839	logo-main-1-600x600.png	/api/media/file/logo-main-1-900x900.png	900	900	image/png	456614	logo-main-1-900x900.png	/api/media/file/logo-main-1.png	\N	\N	\N	\N	\N	/api/media/file/logo-main-1.png	\N	\N	\N	\N	\N	/api/media/file/logo-main-1-1200x630.png	1200	630	image/png	447365	logo-main-1-1200x630.png
13	\N	\N	\N	2026-02-04 03:57:47.643+00	2026-02-04 03:57:47.643+00	/api/media/file/logo-transparent-1.png	\N	logo-transparent-1.png	image/png	486107	1024	1024	50	50	/api/media/file/logo-transparent-1-300x300.jpg	300	300	image/jpeg	14187	logo-transparent-1-300x300.jpg	/api/media/file/logo-transparent-1-500x500.jpg	500	500	image/jpeg	29110	logo-transparent-1-500x500.jpg	/api/media/file/logo-transparent-1-600x600.jpg	600	600	image/jpeg	32662	logo-transparent-1-600x600.jpg	/api/media/file/logo-transparent-1-900x900.jpg	900	900	image/jpeg	65607	logo-transparent-1-900x900.jpg	/api/media/file/logo-transparent-1.png	\N	\N	\N	\N	\N	/api/media/file/logo-transparent-1.png	\N	\N	\N	\N	\N	/api/media/file/logo-transparent-1-1200x630.jpg	1200	630	image/jpeg	56700	logo-transparent-1-1200x630.jpg
14	\N	\N	\N	2026-02-04 03:57:47.833+00	2026-02-04 03:57:47.833+00	/api/media/file/Ready%20to%20Build%20Africa's%20Future-1.png	\N	Ready to Build Africa's Future-1.png	image/png	543594	1024	1024	50	50	/api/media/file/Ready%20to%20Build%20Africa's%20Future-1-300x300.png	300	300	image/png	204966	Ready to Build Africa's Future-1-300x300.png	/api/media/file/Ready%20to%20Build%20Africa's%20Future-1-500x500.png	500	500	image/png	551309	Ready to Build Africa's Future-1-500x500.png	/api/media/file/Ready%20to%20Build%20Africa's%20Future-1-600x600.png	600	600	image/png	787176	Ready to Build Africa's Future-1-600x600.png	/api/media/file/Ready%20to%20Build%20Africa's%20Future-1-900x900.png	900	900	image/png	1732224	Ready to Build Africa's Future-1-900x900.png	/api/media/file/Ready%20to%20Build%20Africa's%20Future-1.png	\N	\N	\N	\N	\N	/api/media/file/Ready%20to%20Build%20Africa's%20Future-1.png	\N	\N	\N	\N	\N	/api/media/file/Ready%20to%20Build%20Africa's%20Future-1-1200x630.png	1200	630	image/png	1817846	Ready to Build Africa's Future-1-1200x630.png
15	\N	\N	\N	2026-02-04 03:57:48.036+00	2026-02-04 03:57:48.036+00	/api/media/file/Regenerative%20Impact-1.png	\N	Regenerative Impact-1.png	image/png	432349	1024	1024	50	50	/api/media/file/Regenerative%20Impact-1-300x300.png	300	300	image/png	186266	Regenerative Impact-1-300x300.png	/api/media/file/Regenerative%20Impact-1-500x500.png	500	500	image/png	496436	Regenerative Impact-1-500x500.png	/api/media/file/Regenerative%20Impact-1-600x600.png	600	600	image/png	704406	Regenerative Impact-1-600x600.png	/api/media/file/Regenerative%20Impact-1-900x900.png	900	900	image/png	1525645	Regenerative Impact-1-900x900.png	/api/media/file/Regenerative%20Impact-1.png	\N	\N	\N	\N	\N	/api/media/file/Regenerative%20Impact-1.png	\N	\N	\N	\N	\N	/api/media/file/Regenerative%20Impact-1-1200x630.png	1200	630	image/png	1479662	Regenerative Impact-1-1200x630.png
16	\N	\N	\N	2026-02-04 03:57:48.254+00	2026-02-04 03:57:48.254+00	/api/media/file/Shaping%20Africa's%20Future-1.png	\N	Shaping Africa's Future-1.png	image/png	486096	1024	1024	50	50	/api/media/file/Shaping%20Africa's%20Future-1-300x300.png	300	300	image/png	201102	Shaping Africa's Future-1-300x300.png	/api/media/file/Shaping%20Africa's%20Future-1-500x500.png	500	500	image/png	547918	Shaping Africa's Future-1-500x500.png	/api/media/file/Shaping%20Africa's%20Future-1-600x600.png	600	600	image/png	787055	Shaping Africa's Future-1-600x600.png	/api/media/file/Shaping%20Africa's%20Future-1-900x900.png	900	900	image/png	1758942	Shaping Africa's Future-1-900x900.png	/api/media/file/Shaping%20Africa's%20Future-1.png	\N	\N	\N	\N	\N	/api/media/file/Shaping%20Africa's%20Future-1.png	\N	\N	\N	\N	\N	/api/media/file/Shaping%20Africa's%20Future-1-1200x630.png	1200	630	image/png	1789532	Shaping Africa's Future-1-1200x630.png
17	\N	\N	\N	2026-02-04 03:57:48.401+00	2026-02-04 03:57:48.401+00	/api/media/file/Strategic%20Partnerships-1.png	\N	Strategic Partnerships-1.png	image/png	413251	1024	1024	50	50	/api/media/file/Strategic%20Partnerships-1-300x300.png	300	300	image/png	192032	Strategic Partnerships-1-300x300.png	/api/media/file/Strategic%20Partnerships-1-500x500.png	500	500	image/png	495386	Strategic Partnerships-1-500x500.png	/api/media/file/Strategic%20Partnerships-1-600x600.png	600	600	image/png	699064	Strategic Partnerships-1-600x600.png	/api/media/file/Strategic%20Partnerships-1-900x900.png	900	900	image/png	1485453	Strategic Partnerships-1-900x900.png	/api/media/file/Strategic%20Partnerships-1.png	\N	\N	\N	\N	\N	/api/media/file/Strategic%20Partnerships-1.png	\N	\N	\N	\N	\N	/api/media/file/Strategic%20Partnerships-1-1200x630.png	1200	630	image/png	1237869	Strategic Partnerships-1-1200x630.png
18	\N	\N	\N	2026-02-04 03:57:48.574+00	2026-02-04 03:57:48.574+00	/api/media/file/Turning%20Vision%20into%20Legacy-7.png	\N	Turning Vision into Legacy-7.png	image/png	487138	1584	672	50	50	/api/media/file/Turning%20Vision%20into%20Legacy-7-300x127.png	300	127	image/png	98562	Turning Vision into Legacy-7-300x127.png	/api/media/file/Turning%20Vision%20into%20Legacy-7-500x500.png	500	500	image/png	563737	Turning Vision into Legacy-7-500x500.png	/api/media/file/Turning%20Vision%20into%20Legacy-7-600x255.png	600	255	image/png	372384	Turning Vision into Legacy-7-600x255.png	/api/media/file/Turning%20Vision%20into%20Legacy-7-900x382.png	900	382	image/png	818521	Turning Vision into Legacy-7-900x382.png	/api/media/file/Turning%20Vision%20into%20Legacy-7-1400x594.png	1400	594	image/png	1928542	Turning Vision into Legacy-7-1400x594.png	/api/media/file/Turning%20Vision%20into%20Legacy-7.png	\N	\N	\N	\N	\N	/api/media/file/Turning%20Vision%20into%20Legacy-7-1200x630.png	1200	630	image/png	1728916	Turning Vision into Legacy-7-1200x630.png
19	\N	\N	\N	2026-02-04 05:00:42.826+00	2026-02-04 05:00:42.826+00	/api/media/file/lionheart2.jpeg	\N	lionheart2.jpeg	image/jpeg	261188	994	624	50	50	/api/media/file/lionheart2-300x188.jpg	300	188	image/jpeg	15570	lionheart2-300x188.jpg	/api/media/file/lionheart2-500x500.jpg	500	500	image/jpeg	51461	lionheart2-500x500.jpg	/api/media/file/lionheart2-600x377.jpg	600	377	image/jpeg	48943	lionheart2-600x377.jpg	/api/media/file/lionheart2-900x565.jpg	900	565	image/jpeg	97362	lionheart2-900x565.jpg	/api/media/file/lionheart2.jpeg	\N	\N	\N	\N	\N	/api/media/file/lionheart2.jpeg	\N	\N	\N	\N	\N	/api/media/file/lionheart2.jpeg	\N	\N	\N	\N	\N
\.


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages (id, title, hero_type, hero_rich_text, hero_label, hero_media_id, meta_title, meta_image_id, meta_description, published_at, generate_slug, slug, updated_at, created_at, _status) FROM stdin;
2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Barfect Corporation	4	Turning Vision Into Legacy	2026-02-05 06:28:07.697+00	f	home	2026-02-05 12:40:48.003+00	2026-02-04 03:50:42.202+00	published
1	Contact	none	null	\N	\N	\N	\N	\N	\N	f	contact	2026-02-04 03:50:42.2+00	2026-02-04 03:50:42.2+00	published
\.


--
-- Data for Name: _pages_v; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v (id, parent_id, version_title, version_hero_type, version_hero_rich_text, version_hero_label, version_hero_media_id, version_meta_title, version_meta_image_id, version_meta_description, version_published_at, version_generate_slug, version_slug, version_updated_at, version_created_at, version__status, created_at, updated_at, latest, autosave) FROM stdin;
1	1	Contact	none	null	\N	\N	\N	\N	\N	\N	f	contact	2026-02-04 03:50:42.2+00	2026-02-04 03:50:42.2+00	published	2026-02-04 03:50:42.203+00	2026-02-04 03:50:42.203+00	t	f
39	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Barfect Corporation	4	Turning Vision Into Legacy	2026-02-05 06:33:08.943+00	f	home	2026-02-05 06:33:08.949+00	2026-02-04 03:50:42.202+00	draft	2026-02-05 06:33:08.974+00	2026-02-05 06:33:08.974+00	f	f
6	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2026-02-04 04:11:38.708+00	f	home	2026-02-04 04:14:24.517+00	2026-02-04 03:50:42.202+00	published	2026-02-04 04:14:24.539+00	2026-02-04 04:14:24.539+00	f	f
7	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2026-02-04 04:11:38.708+00	f	home	2026-02-04 04:15:02.406+00	2026-02-04 03:50:42.202+00	draft	2026-02-04 04:14:29.933+00	2026-02-04 04:15:02.406+00	f	t
33	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Barfect Corporation	4	Turning Vision Into Legacy	2026-02-04 04:11:38.708+00	f	home	2026-02-04 05:34:04.014+00	2026-02-04 03:50:42.202+00	draft	2026-02-04 05:34:04.014+00	2026-02-04 05:34:04.014+00	f	t
42	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Barfect Corporation	4	Turning Vision Into Legacy	2026-02-05 06:28:07.697+00	f	home	2026-02-05 12:40:48.003+00	2026-02-04 03:50:42.202+00	published	2026-02-05 12:40:48.051+00	2026-02-05 12:40:48.051+00	t	f
41	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Barfect Corporation	4	Turning Vision Into Legacy	2026-02-05 12:40:46.525+00	f	home	2026-02-05 12:40:46.533+00	2026-02-04 03:50:42.202+00	draft	2026-02-05 12:40:46.611+00	2026-02-05 12:40:46.611+00	f	f
8	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2026-02-04 04:11:38.708+00	f	home	2026-02-04 04:15:04.889+00	2026-02-04 03:50:42.202+00	published	2026-02-04 04:15:04.908+00	2026-02-04 04:15:04.908+00	f	f
9	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2026-02-04 04:11:38.708+00	f	home	2026-02-04 04:16:14.424+00	2026-02-04 03:50:42.202+00	draft	2026-02-04 04:15:14.143+00	2026-02-04 04:16:14.424+00	f	t
10	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2026-02-04 04:11:38.708+00	f	home	2026-02-04 04:16:16.843+00	2026-02-04 03:50:42.202+00	published	2026-02-04 04:16:16.86+00	2026-02-04 04:16:16.86+00	f	f
11	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2026-02-04 04:11:38.708+00	f	home	2026-02-04 04:16:49.022+00	2026-02-04 03:50:42.202+00	draft	2026-02-04 04:16:48.783+00	2026-02-04 04:16:49.022+00	f	t
12	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2026-02-04 04:11:38.708+00	f	home	2026-02-04 04:16:51.007+00	2026-02-04 03:50:42.202+00	published	2026-02-04 04:16:51.025+00	2026-02-04 04:16:51.025+00	f	f
13	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2026-02-04 04:11:38.708+00	f	home	2026-02-04 04:32:22.933+00	2026-02-04 03:50:42.202+00	draft	2026-02-04 04:31:19.175+00	2026-02-04 04:32:22.933+00	f	t
14	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2026-02-04 04:11:38.708+00	f	home	2026-02-04 04:32:26.389+00	2026-02-04 03:50:42.202+00	published	2026-02-04 04:32:26.408+00	2026-02-04 04:32:26.408+00	f	f
15	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2026-02-04 04:11:38.708+00	f	home	2026-02-04 04:32:46.107+00	2026-02-04 03:50:42.202+00	draft	2026-02-04 04:32:46.107+00	2026-02-04 04:32:46.107+00	f	t
16	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2026-02-04 04:11:38.708+00	f	home	2026-02-04 04:32:48.524+00	2026-02-04 03:50:42.202+00	published	2026-02-04 04:32:48.542+00	2026-02-04 04:32:48.542+00	f	f
17	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2026-02-04 04:11:38.708+00	f	home	2026-02-04 04:33:27.011+00	2026-02-04 03:50:42.202+00	draft	2026-02-04 04:33:27.011+00	2026-02-04 04:33:27.011+00	f	t
18	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2026-02-04 04:11:38.708+00	f	home	2026-02-04 04:33:29.142+00	2026-02-04 03:50:42.202+00	published	2026-02-04 04:33:29.168+00	2026-02-04 04:33:29.168+00	f	f
19	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2026-02-04 04:11:38.708+00	f	home	2026-02-04 05:00:43.139+00	2026-02-04 03:50:42.202+00	draft	2026-02-04 04:57:36.98+00	2026-02-04 05:00:43.139+00	f	t
20	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2026-02-04 04:11:38.708+00	f	home	2026-02-04 05:00:45.914+00	2026-02-04 03:50:42.202+00	published	2026-02-04 05:00:45.952+00	2026-02-04 05:00:45.952+00	f	f
21	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2026-02-04 04:11:38.708+00	f	home	2026-02-04 05:02:06.296+00	2026-02-04 03:50:42.202+00	draft	2026-02-04 05:02:02.686+00	2026-02-04 05:02:06.296+00	f	t
22	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2026-02-04 04:11:38.708+00	f	home	2026-02-04 05:02:10.882+00	2026-02-04 03:50:42.202+00	published	2026-02-04 05:02:10.906+00	2026-02-04 05:02:10.906+00	f	f
23	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2026-02-04 04:11:38.708+00	f	home	2026-02-04 05:04:32.833+00	2026-02-04 03:50:42.202+00	draft	2026-02-04 05:04:29.601+00	2026-02-04 05:04:32.833+00	f	t
24	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2026-02-04 04:11:38.708+00	f	home	2026-02-04 05:04:35.215+00	2026-02-04 03:50:42.202+00	published	2026-02-04 05:04:35.24+00	2026-02-04 05:04:35.24+00	f	f
25	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2026-02-04 04:11:38.708+00	f	home	2026-02-04 05:05:09.891+00	2026-02-04 03:50:42.202+00	draft	2026-02-04 05:05:03.463+00	2026-02-04 05:05:09.891+00	f	t
26	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2026-02-04 04:11:38.708+00	f	home	2026-02-04 05:05:11.999+00	2026-02-04 03:50:42.202+00	published	2026-02-04 05:05:12.017+00	2026-02-04 05:05:12.017+00	f	f
27	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2026-02-04 04:11:38.708+00	f	home	2026-02-04 05:05:27.802+00	2026-02-04 03:50:42.202+00	draft	2026-02-04 05:05:27.802+00	2026-02-04 05:05:27.802+00	f	t
28	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2026-02-04 04:11:38.708+00	f	home	2026-02-04 05:05:30.222+00	2026-02-04 03:50:42.202+00	published	2026-02-04 05:05:30.243+00	2026-02-04 05:05:30.243+00	f	f
29	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2026-02-04 04:11:38.708+00	f	home	2026-02-04 05:06:36.932+00	2026-02-04 03:50:42.202+00	draft	2026-02-04 05:06:20.782+00	2026-02-04 05:06:36.932+00	f	t
31	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Barfect Corporation	4	Turning Vision Into Legacy	2026-02-04 04:11:38.708+00	f	home	2026-02-04 05:32:59.377+00	2026-02-04 03:50:42.202+00	draft	2026-02-04 05:32:45.298+00	2026-02-04 05:32:59.377+00	f	t
40	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Barfect Corporation	4	Turning Vision Into Legacy	2026-02-05 06:28:07.697+00	f	home	2026-02-05 06:33:13.266+00	2026-02-04 03:50:42.202+00	published	2026-02-05 06:33:13.294+00	2026-02-05 06:33:13.294+00	f	f
32	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Barfect Corporation	4	Turning Vision Into Legacy	2026-02-04 04:11:38.708+00	f	home	2026-02-04 05:33:07.461+00	2026-02-04 03:50:42.202+00	published	2026-02-04 05:33:07.485+00	2026-02-04 05:33:07.485+00	f	f
34	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Barfect Corporation	4	Turning Vision Into Legacy	2026-02-04 04:11:38.708+00	f	home	2026-02-04 05:34:07.259+00	2026-02-04 03:50:42.202+00	published	2026-02-04 05:34:07.275+00	2026-02-04 05:34:07.275+00	f	f
2	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	\N	f	home	2026-02-04 03:50:42.202+00	2026-02-04 03:50:42.202+00	published	2026-02-04 03:50:42.209+00	2026-02-04 03:50:42.209+00	f	f
3	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2026-02-04 04:11:38.708+00	f	home	2026-02-04 04:12:57.17+00	2026-02-04 03:50:42.202+00	draft	2026-02-04 04:11:38.709+00	2026-02-04 04:12:57.17+00	f	t
35	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Barfect Corporations	4	Turning Vision Into Legacy	2026-02-05 06:28:07.697+00	f	home	2026-02-05 06:28:07.698+00	2026-02-04 03:50:42.202+00	draft	2026-02-05 06:28:07.698+00	2026-02-05 06:28:07.698+00	f	t
36	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Barfect Corporations	4	Turning Vision Into Legacy	2026-02-05 06:28:07.697+00	f	home	2026-02-05 06:28:09.268+00	2026-02-04 03:50:42.202+00	published	2026-02-05 06:28:09.317+00	2026-02-05 06:28:09.317+00	f	f
37	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Barfect Corporation	4	Turning Vision Into Legacy	2026-02-05 06:28:07.697+00	f	home	2026-02-05 06:28:12.82+00	2026-02-04 03:50:42.202+00	draft	2026-02-05 06:28:12.82+00	2026-02-05 06:28:12.82+00	f	t
4	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2026-02-04 04:11:38.708+00	f	home	2026-02-04 04:13:00.036+00	2026-02-04 03:50:42.202+00	published	2026-02-04 04:13:00.052+00	2026-02-04 04:13:00.052+00	f	f
5	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2026-02-04 04:11:38.708+00	f	home	2026-02-04 04:14:18.612+00	2026-02-04 03:50:42.202+00	draft	2026-02-04 04:13:26.077+00	2026-02-04 04:14:18.612+00	f	t
38	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Barfect Corporation	4	Turning Vision Into Legacy	2026-02-05 06:28:07.697+00	f	home	2026-02-05 06:28:15.022+00	2026-02-04 03:50:42.202+00	published	2026-02-05 06:28:15.081+00	2026-02-05 06:28:15.081+00	f	f
30	2	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "TURNING VISION ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "INTO LEGACY", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Barfect Corporation is a pan-African strategic holdings firm transforming bold ideas into sustainable, investment-grade ventures.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	EST. 2015 • PAN-AFRICAN HOLDINGS	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2026-02-04 04:11:38.708+00	f	home	2026-02-04 05:06:39.818+00	2026-02-04 03:50:42.202+00	published	2026-02-04 05:06:39.834+00	2026-02-04 05:06:39.834+00	f	f
\.


--
-- Data for Name: _pages_v_blocks_archive; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_archive (_order, _parent_id, _path, id, intro_content, populate_by, relation_to, "limit", _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_content; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_content (_order, _parent_id, _path, id, _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_content_columns; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_content_columns (_order, _parent_id, id, size, rich_text, enable_link, link_type, link_new_tab, link_url, link_label, link_appearance, _uuid) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_cta; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_cta (_order, _parent_id, _path, id, rich_text, _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_cta_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_cta_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label, link_appearance, _uuid) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_featured_project; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_featured_project (_order, _parent_id, _path, id, pre_heading, heading, subheading, description, project_image_id, link_label, link_url, _uuid, block_name) FROM stdin;
5	35	version.layout	1	FEATURED PROJECT	LIONHEART MEDICAL CITY	A World-Class Teaching, Research & Level 6 Referral Centre	A flagship healthcare infrastructure initiative designed to address Africa's growing demand for advanced, accessible, and high-quality healthcare services. Structured to become a regional center of excellence—combining clinical care, medical education, research, and innovation.	19	Call us Now: +888-BARFECT	#	6982d1ff95af8a311609ac1c	\N
5	36	version.layout	2	FEATURED PROJECT	LIONHEART MEDICAL CITY	A World-Class Teaching, Research & Level 6 Referral Centre	A flagship healthcare infrastructure initiative designed to address Africa's growing demand for advanced, accessible, and high-quality healthcare services. Structured to become a regional center of excellence—combining clinical care, medical education, research, and innovation.	19	Call us Now: +888-BARFECT	#	6982d1ff95af8a311609ac1c	\N
5	37	version.layout	3	FEATURED PROJECT	LIONHEART MEDICAL CITY	A World-Class Teaching, Research & Level 6 Referral Centre	A flagship healthcare infrastructure initiative designed to address Africa's growing demand for advanced, accessible, and high-quality healthcare services. Structured to become a regional center of excellence—combining clinical care, medical education, research, and innovation.	19	Call us Now: +888-BARFECT	#	6982d1ff95af8a311609ac1c	\N
5	38	version.layout	4	FEATURED PROJECT	LIONHEART MEDICAL CITY	A World-Class Teaching, Research & Level 6 Referral Centre	A flagship healthcare infrastructure initiative designed to address Africa's growing demand for advanced, accessible, and high-quality healthcare services. Structured to become a regional center of excellence—combining clinical care, medical education, research, and innovation.	19	Call us Now: +888-BARFECT	#	6982d1ff95af8a311609ac1c	\N
5	39	version.layout	5	FEATURED PROJECT	LIONHEART MEDICAL CITY	A World-Class Teaching, Research & Level 6 Referral Centre	A flagship healthcare infrastructure initiative designed to address Africa's growing demand for advanced, accessible, and high-quality healthcare services. Structured to become a regional center of excellence—combining clinical care, medical education, research, and innovation.	19	Call us Now: +888-BARFECT	#	6982d1ff95af8a311609ac1c	\N
5	40	version.layout	6	FEATURED PROJECT	LIONHEART MEDICAL CITY	A World-Class Teaching, Research & Level 6 Referral Centre	A flagship healthcare infrastructure initiative designed to address Africa's growing demand for advanced, accessible, and high-quality healthcare services. Structured to become a regional center of excellence—combining clinical care, medical education, research, and innovation.	19	Call us Now: +888-BARFECT	#	6982d1ff95af8a311609ac1c	\N
5	41	version.layout	7	FEATURED PROJECT	LIONHEART MEDICAL CITY	A World-Class Teaching, Research & Level 6 Referral Centre	A flagship healthcare infrastructure initiative designed to address Africa's growing demand for advanced, accessible, and high-quality healthcare services. Structured to become a regional center of excellence—combining clinical care, medical education, research, and innovation.	19	Call us Now: +888-BARFECT	#	6982d1ff95af8a311609ac1c	\N
5	42	version.layout	8	FEATURED PROJECT	LIONHEART MEDICAL CITY	A World-Class Teaching, Research & Level 6 Referral Centre	A flagship healthcare infrastructure initiative designed to address Africa's growing demand for advanced, accessible, and high-quality healthcare services. Structured to become a regional center of excellence—combining clinical care, medical education, research, and innovation.	19	Call us Now: +888-BARFECT	#	6982d1ff95af8a311609ac1c	\N
\.


--
-- Data for Name: _pages_v_blocks_featured_project_features; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_featured_project_features (_order, _parent_id, id, title, description, _uuid) FROM stdin;
1	6	1	Level 6 Referral Hospital	Comprehensive tertiary & specialized care	6982d1ff6c9c3b7d77300be8
2	6	2	Teaching Hospital	Training the next generation of professionals	6982d1ff6c9c3b7d77300be9
3	6	3	Research Center	Clinical trials & biotechnology innovation	6982d1ff6c9c3b7d77300bea
4	6	4	Smart Infrastructure	AI-assisted diagnostics & digital health	6982d1ff6c9c3b7d77300beb
1	7	5	Level 6 Referral Hospital	Comprehensive tertiary & specialized care	6982d1ff6c9c3b7d77300be8
2	7	6	Teaching Hospital	Training the next generation of professionals	6982d1ff6c9c3b7d77300be9
3	7	7	Research Center	Clinical trials & biotechnology innovation	6982d1ff6c9c3b7d77300bea
4	7	8	Smart Infrastructure	AI-assisted diagnostics & digital health	6982d1ff6c9c3b7d77300beb
1	8	9	Level 6 Referral Hospital	Comprehensive tertiary & specialized care	6982d1ff6c9c3b7d77300be8
2	8	10	Teaching Hospital	Training the next generation of professionals	6982d1ff6c9c3b7d77300be9
3	8	11	Research Center	Clinical trials & biotechnology innovation	6982d1ff6c9c3b7d77300bea
4	8	12	Smart Infrastructure	AI-assisted diagnostics & digital health	6982d1ff6c9c3b7d77300beb
\.


--
-- Data for Name: forms; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms (id, title, submit_button_label, confirmation_type, confirmation_message, redirect_url, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_form_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_form_block (_order, _parent_id, _path, id, form_id, enable_intro, intro_content, _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_media_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_media_block (_order, _parent_id, _path, id, media_id, _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_team; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_team (_order, _parent_id, _path, id, heading, background_image_id, _uuid, block_name) FROM stdin;
3	35	version.layout	1	LEADERSHIP	\N	6982d1c03b35b33808415922	\N
3	36	version.layout	2	LEADERSHIP	\N	6982d1c03b35b33808415922	\N
3	37	version.layout	3	LEADERSHIP	\N	6982d1c03b35b33808415922	\N
3	38	version.layout	4	LEADERSHIP	\N	6982d1c03b35b33808415922	\N
3	39	version.layout	5	LEADERSHIP	\N	6982d1c03b35b33808415922	\N
3	40	version.layout	6	LEADERSHIP	\N	6982d1c03b35b33808415922	\N
3	41	version.layout	7	LEADERSHIP	\N	6982d1c03b35b33808415922	\N
3	42	version.layout	8	LEADERSHIP	\N	6982d1c03b35b33808415922	\N
\.


--
-- Data for Name: _pages_v_blocks_team_leaders; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_team_leaders (_order, _parent_id, id, image_id, name, role, description, _uuid) FROM stdin;
1	1	1	\N	RAYMOND KAPTICH	CHIEF EXECUTIVE OFFICER	Leads partnerships, communications, and stakeholder engagement.	6982d1c06c9c3b7d77300be0
2	1	2	\N	DR. JOE SAGINI	CHIEF STRATEGIST	Oversees governance, venture structuring, and long-term sustainability alignment.	6982d1c06c9c3b7d77300be1
3	1	3	\N	EMMACULATE CHEPTOO	BRAND VISIONARY	Leads strategic direction, innovation, and brand positioning.	6982d1c06c9c3b7d77300be2
4	1	4	\N	HON. PROF. DICKSON N. ORUKO	DIRECTOR, PROJECTS	Oversees project execution, technical delivery, and performance oversight.	6982d1c06c9c3b7d77300be3
1	2	5	\N	RAYMOND KAPTICH	CHIEF EXECUTIVE OFFICER	Leads partnerships, communications, and stakeholder engagement.	6982d1c06c9c3b7d77300be0
2	2	6	\N	DR. JOE SAGINI	CHIEF STRATEGIST	Oversees governance, venture structuring, and long-term sustainability alignment.	6982d1c06c9c3b7d77300be1
3	2	7	\N	EMMACULATE CHEPTOO	BRAND VISIONARY	Leads strategic direction, innovation, and brand positioning.	6982d1c06c9c3b7d77300be2
4	2	8	\N	HON. PROF. DICKSON N. ORUKO	DIRECTOR, PROJECTS	Oversees project execution, technical delivery, and performance oversight.	6982d1c06c9c3b7d77300be3
1	3	9	\N	RAYMOND KAPTICH	CHIEF EXECUTIVE OFFICER	Leads partnerships, communications, and stakeholder engagement.	6982d1c06c9c3b7d77300be0
2	3	10	\N	DR. JOE SAGINI	CHIEF STRATEGIST	Oversees governance, venture structuring, and long-term sustainability alignment.	6982d1c06c9c3b7d77300be1
3	3	11	\N	EMMACULATE CHEPTOO	BRAND VISIONARY	Leads strategic direction, innovation, and brand positioning.	6982d1c06c9c3b7d77300be2
4	3	12	\N	HON. PROF. DICKSON N. ORUKO	DIRECTOR, PROJECTS	Oversees project execution, technical delivery, and performance oversight.	6982d1c06c9c3b7d77300be3
1	4	13	\N	RAYMOND KAPTICH	CHIEF EXECUTIVE OFFICER	Leads partnerships, communications, and stakeholder engagement.	6982d1c06c9c3b7d77300be0
2	4	14	\N	DR. JOE SAGINI	CHIEF STRATEGIST	Oversees governance, venture structuring, and long-term sustainability alignment.	6982d1c06c9c3b7d77300be1
3	4	15	\N	EMMACULATE CHEPTOO	BRAND VISIONARY	Leads strategic direction, innovation, and brand positioning.	6982d1c06c9c3b7d77300be2
4	4	16	\N	HON. PROF. DICKSON N. ORUKO	DIRECTOR, PROJECTS	Oversees project execution, technical delivery, and performance oversight.	6982d1c06c9c3b7d77300be3
1	5	17	\N	RAYMOND KAPTICH	CHIEF EXECUTIVE OFFICER	Leads partnerships, communications, and stakeholder engagement.	6982d1c06c9c3b7d77300be0
2	5	18	\N	DR. JOE SAGINI	CHIEF STRATEGIST	Oversees governance, venture structuring, and long-term sustainability alignment.	6982d1c06c9c3b7d77300be1
3	5	19	\N	EMMACULATE CHEPTOO	BRAND VISIONARY	Leads strategic direction, innovation, and brand positioning.	6982d1c06c9c3b7d77300be2
4	5	20	\N	HON. PROF. DICKSON N. ORUKO	DIRECTOR, PROJECTS	Oversees project execution, technical delivery, and performance oversight.	6982d1c06c9c3b7d77300be3
1	6	21	\N	RAYMOND KAPTICH	CHIEF EXECUTIVE OFFICER	Leads partnerships, communications, and stakeholder engagement.	6982d1c06c9c3b7d77300be0
2	6	22	\N	DR. JOE SAGINI	CHIEF STRATEGIST	Oversees governance, venture structuring, and long-term sustainability alignment.	6982d1c06c9c3b7d77300be1
3	6	23	\N	EMMACULATE CHEPTOO	BRAND VISIONARY	Leads strategic direction, innovation, and brand positioning.	6982d1c06c9c3b7d77300be2
4	6	24	\N	HON. PROF. DICKSON N. ORUKO	DIRECTOR, PROJECTS	Oversees project execution, technical delivery, and performance oversight.	6982d1c06c9c3b7d77300be3
1	7	25	\N	RAYMOND KAPTICH	CHIEF EXECUTIVE OFFICER	Leads partnerships, communications, and stakeholder engagement.	6982d1c06c9c3b7d77300be0
2	7	26	\N	DR. JOE SAGINI	CHIEF STRATEGIST	Oversees governance, venture structuring, and long-term sustainability alignment.	6982d1c06c9c3b7d77300be1
3	7	27	\N	EMMACULATE CHEPTOO	BRAND VISIONARY	Leads strategic direction, innovation, and brand positioning.	6982d1c06c9c3b7d77300be2
4	7	28	\N	HON. PROF. DICKSON N. ORUKO	DIRECTOR, PROJECTS	Oversees project execution, technical delivery, and performance oversight.	6982d1c06c9c3b7d77300be3
1	8	29	\N	RAYMOND KAPTICH	CHIEF EXECUTIVE OFFICER	Leads partnerships, communications, and stakeholder engagement.	6982d1c06c9c3b7d77300be0
2	8	30	\N	DR. JOE SAGINI	CHIEF STRATEGIST	Oversees governance, venture structuring, and long-term sustainability alignment.	6982d1c06c9c3b7d77300be1
3	8	31	\N	EMMACULATE CHEPTOO	BRAND VISIONARY	Leads strategic direction, innovation, and brand positioning.	6982d1c06c9c3b7d77300be2
4	8	32	\N	HON. PROF. DICKSON N. ORUKO	DIRECTOR, PROJECTS	Oversees project execution, technical delivery, and performance oversight.	6982d1c06c9c3b7d77300be3
\.


--
-- Data for Name: _pages_v_blocks_thesis; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_thesis (_order, _parent_id, _path, id, pre_heading, heading, content, background_image_id, _uuid, block_name) FROM stdin;
2	35	version.layout	1	01 • THE THESIS	The Thesis	We believe Africa is the future engine of the global economy.	15	6982c6fa8be43a21d8c09c3c	\N
2	36	version.layout	2	01 • THE THESIS	The Thesis	We believe Africa is the future engine of the global economy.	15	6982c6fa8be43a21d8c09c3c	\N
2	37	version.layout	3	01 • THE THESIS	The Thesis	We believe Africa is the future engine of the global economy.	15	6982c6fa8be43a21d8c09c3c	\N
2	38	version.layout	4	01 • THE THESIS	The Thesis	We believe Africa is the future engine of the global economy.	15	6982c6fa8be43a21d8c09c3c	\N
2	39	version.layout	5	01 • THE THESIS	The Thesis	We believe Africa is the future engine of the global economy.	15	6982c6fa8be43a21d8c09c3c	\N
2	40	version.layout	6	01 • THE THESIS	The Thesis	We believe Africa is the future engine of the global economy.	15	6982c6fa8be43a21d8c09c3c	\N
2	41	version.layout	7	01 • THE THESIS	The Thesis	We believe Africa is the future engine of the global economy.	15	6982c6fa8be43a21d8c09c3c	\N
2	42	version.layout	8	01 • THE THESIS	The Thesis	We believe Africa is the future engine of the global economy.	15	6982c6fa8be43a21d8c09c3c	\N
\.


--
-- Data for Name: _pages_v_blocks_thesis_features; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_thesis_features (_order, _parent_id, id, icon, title, description, _uuid) FROM stdin;
1	6	1	globe	Pan-African	Networks that span sectors and borders, connecting vision with execution.	6982c7653b0778497b174319
2	6	2	lightning	Adaptive Model	Operating as strategic advisors, development partners, or integrated management teams.	6982c7a53b0778497b17431b
3	6	3	chart	Project Excellence	Feasibility, capital structuring, and end-to-end implementation.	6982c7d13b0778497b17431d
1	7	4	globe	Pan-African	Networks that span sectors and borders, connecting vision with execution.	6982c7653b0778497b174319
2	7	5	lightning	Adaptive Model	Operating as strategic advisors, development partners, or integrated management teams.	6982c7a53b0778497b17431b
3	7	6	chart	Project Excellence	Feasibility, capital structuring, and end-to-end implementation.	6982c7d13b0778497b17431d
1	8	7	globe	Pan-African	Networks that span sectors and borders, connecting vision with execution.	6982c7653b0778497b174319
2	8	8	lightning	Adaptive Model	Operating as strategic advisors, development partners, or integrated management teams.	6982c7a53b0778497b17431b
3	8	9	chart	Project Excellence	Feasibility, capital structuring, and end-to-end implementation.	6982c7d13b0778497b17431d
\.


--
-- Data for Name: _pages_v_blocks_ventures; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_ventures (_order, _parent_id, _path, id, pre_heading, heading, intro_text, background_image_id, _uuid, block_name) FROM stdin;
4	35	version.layout	1	02 • VENTURES	Our Ventures	Our portfolio spans critical sectors driving the African renaissance.	10	6982cba781482f4a39dfb733	\N
4	36	version.layout	2	02 • VENTURES	Our Ventures	Our portfolio spans critical sectors driving the African renaissance.	10	6982cba781482f4a39dfb733	\N
4	37	version.layout	3	02 • VENTURES	Our Ventures	Our portfolio spans critical sectors driving the African renaissance.	10	6982cba781482f4a39dfb733	\N
4	38	version.layout	4	02 • VENTURES	Our Ventures	Our portfolio spans critical sectors driving the African renaissance.	10	6982cba781482f4a39dfb733	\N
4	39	version.layout	5	02 • VENTURES	Our Ventures	Our portfolio spans critical sectors driving the African renaissance.	10	6982cba781482f4a39dfb733	\N
4	40	version.layout	6	02 • VENTURES	Our Ventures	Our portfolio spans critical sectors driving the African renaissance.	10	6982cba781482f4a39dfb733	\N
4	41	version.layout	7	02 • VENTURES	Our Ventures	Our portfolio spans critical sectors driving the African renaissance.	10	6982cba781482f4a39dfb733	\N
4	42	version.layout	8	02 • VENTURES	Our Ventures	Our portfolio spans critical sectors driving the African renaissance.	10	6982cba781482f4a39dfb733	\N
\.


--
-- Data for Name: _pages_v_blocks_ventures_ventures; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_ventures_ventures (_order, _parent_id, id, icon, title, description, _uuid) FROM stdin;
1	1	1	activity	Barfect Energy	Investments in next-generation renewable energy, hydrokinetic power, and decentralized solutions.	6982cba75590e57141dae7a8
2	1	2	layers	Barfect Estates	Development of premium real estate, sustainable communities, and strategic land assets.	6982cba75590e57141dae7a9
3	1	3	sprout	Barfect Earth	Responsible resource development, ethical mining, and regenerative agriculture.	6982cba75590e57141dae7aa
1	2	4	activity	Barfect Energy	Investments in next-generation renewable energy, hydrokinetic power, and decentralized solutions.	6982cba75590e57141dae7a8
2	2	5	layers	Barfect Estates	Development of premium real estate, sustainable communities, and strategic land assets.	6982cba75590e57141dae7a9
3	2	6	sprout	Barfect Earth	Responsible resource development, ethical mining, and regenerative agriculture.	6982cba75590e57141dae7aa
1	3	7	activity	Barfect Energy	Investments in next-generation renewable energy, hydrokinetic power, and decentralized solutions.	6982cba75590e57141dae7a8
2	3	8	layers	Barfect Estates	Development of premium real estate, sustainable communities, and strategic land assets.	6982cba75590e57141dae7a9
3	3	9	sprout	Barfect Earth	Responsible resource development, ethical mining, and regenerative agriculture.	6982cba75590e57141dae7aa
1	4	10	activity	Barfect Energy	Investments in next-generation renewable energy, hydrokinetic power, and decentralized solutions.	6982cba75590e57141dae7a8
2	4	11	layers	Barfect Estates	Development of premium real estate, sustainable communities, and strategic land assets.	6982cba75590e57141dae7a9
3	4	12	sprout	Barfect Earth	Responsible resource development, ethical mining, and regenerative agriculture.	6982cba75590e57141dae7aa
1	5	13	activity	Barfect Energy	Investments in next-generation renewable energy, hydrokinetic power, and decentralized solutions.	6982cba75590e57141dae7a8
2	5	14	layers	Barfect Estates	Development of premium real estate, sustainable communities, and strategic land assets.	6982cba75590e57141dae7a9
3	5	15	sprout	Barfect Earth	Responsible resource development, ethical mining, and regenerative agriculture.	6982cba75590e57141dae7aa
1	6	16	activity	Barfect Energy	Investments in next-generation renewable energy, hydrokinetic power, and decentralized solutions.	6982cba75590e57141dae7a8
2	6	17	layers	Barfect Estates	Development of premium real estate, sustainable communities, and strategic land assets.	6982cba75590e57141dae7a9
3	6	18	sprout	Barfect Earth	Responsible resource development, ethical mining, and regenerative agriculture.	6982cba75590e57141dae7aa
1	7	19	activity	Barfect Energy	Investments in next-generation renewable energy, hydrokinetic power, and decentralized solutions.	6982cba75590e57141dae7a8
2	7	20	layers	Barfect Estates	Development of premium real estate, sustainable communities, and strategic land assets.	6982cba75590e57141dae7a9
3	7	21	sprout	Barfect Earth	Responsible resource development, ethical mining, and regenerative agriculture.	6982cba75590e57141dae7aa
1	8	22	activity	Barfect Energy	Investments in next-generation renewable energy, hydrokinetic power, and decentralized solutions.	6982cba75590e57141dae7a8
2	8	23	layers	Barfect Estates	Development of premium real estate, sustainable communities, and strategic land assets.	6982cba75590e57141dae7a9
3	8	24	sprout	Barfect Earth	Responsible resource development, ethical mining, and regenerative agriculture.	6982cba75590e57141dae7aa
\.


--
-- Data for Name: _pages_v_blocks_what_we_do; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_what_we_do (_order, _parent_id, _path, id, heading, intro_text, background_image_id, _uuid, block_name) FROM stdin;
1	35	version.layout	1	WHAT WE DO	Our work is anchored in comprehensive, end-to-end project development—bridging the gap between concept and commission.	14	6982cb9681482f4a39dfb731	\N
1	36	version.layout	2	WHAT WE DO	Our work is anchored in comprehensive, end-to-end project development—bridging the gap between concept and commission.	14	6982cb9681482f4a39dfb731	\N
1	37	version.layout	3	WHAT WE DO	Our work is anchored in comprehensive, end-to-end project development—bridging the gap between concept and commission.	14	6982cb9681482f4a39dfb731	\N
1	38	version.layout	4	WHAT WE DO	Our work is anchored in comprehensive, end-to-end project development—bridging the gap between concept and commission.	14	6982cb9681482f4a39dfb731	\N
1	39	version.layout	5	WHAT WE DO	Our work is anchored in comprehensive, end-to-end project development—bridging the gap between concept and commission.	14	6982cb9681482f4a39dfb731	\N
1	40	version.layout	6	WHAT WE DO	Our work is anchored in comprehensive, end-to-end project development—bridging the gap between concept and commission.	14	6982cb9681482f4a39dfb731	\N
1	41	version.layout	7	WHAT WE DO	Our work is anchored in comprehensive, end-to-end project development—bridging the gap between concept and commission.	14	6982cb9681482f4a39dfb731	\N
1	42	version.layout	8	WHAT WE DO	Our work is anchored in comprehensive, end-to-end project development—bridging the gap between concept and commission.	14	6982cb9681482f4a39dfb731	\N
\.


--
-- Data for Name: _pages_v_blocks_what_we_do_columns; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_what_we_do_columns (_order, _parent_id, id, title, description, _uuid) FROM stdin;
1	6	1	FEASIBILITY & STUDIES	Rigorous technical, financial, and environmental assessments through reputable consultants.	6982cb975590e57141dae7a2
2	6	2	PROFESSIONAL MANAGEMENT	Structured governance and experienced management teams to ensure operational excellence.	6982cb975590e57141dae7a3
3	6	3	OPPORTUNITY IDENTIFICATION	Structuring high-impact projects across energy, real estate, and natural resources.	6982cb975590e57141dae7a4
4	6	4	CAPITAL STRUCTURING	Designing blended financing solutions with DFIs and private investors.	6982cb975590e57141dae7a5
5	6	5	IMPLEMENTATION	Managing execution with precision, accountability, and measurable outcomes.	6982cb975590e57141dae7a6
6	6	6	STRATEGIC ADVISORY	Data-driven strategies and stakeholder engagement for complex ventures.	6982cb975590e57141dae7a7
1	7	7	FEASIBILITY & STUDIES	Rigorous technical, financial, and environmental assessments through reputable consultants.	6982cb975590e57141dae7a2
2	7	8	PROFESSIONAL MANAGEMENT	Structured governance and experienced management teams to ensure operational excellence.	6982cb975590e57141dae7a3
3	7	9	OPPORTUNITY IDENTIFICATION	Structuring high-impact projects across energy, real estate, and natural resources.	6982cb975590e57141dae7a4
4	7	10	CAPITAL STRUCTURING	Designing blended financing solutions with DFIs and private investors.	6982cb975590e57141dae7a5
5	7	11	IMPLEMENTATION	Managing execution with precision, accountability, and measurable outcomes.	6982cb975590e57141dae7a6
6	7	12	STRATEGIC ADVISORY	Data-driven strategies and stakeholder engagement for complex ventures.	6982cb975590e57141dae7a7
1	8	13	FEASIBILITY & STUDIES	Rigorous technical, financial, and environmental assessments through reputable consultants.	6982cb975590e57141dae7a2
2	8	14	PROFESSIONAL MANAGEMENT	Structured governance and experienced management teams to ensure operational excellence.	6982cb975590e57141dae7a3
3	8	15	OPPORTUNITY IDENTIFICATION	Structuring high-impact projects across energy, real estate, and natural resources.	6982cb975590e57141dae7a4
4	8	16	CAPITAL STRUCTURING	Designing blended financing solutions with DFIs and private investors.	6982cb975590e57141dae7a5
5	8	17	IMPLEMENTATION	Managing execution with precision, accountability, and measurable outcomes.	6982cb975590e57141dae7a6
6	8	18	STRATEGIC ADVISORY	Data-driven strategies and stakeholder engagement for complex ventures.	6982cb975590e57141dae7a7
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.categories (id, title, generate_slug, slug, parent_id, updated_at, created_at) FROM stdin;
1	Technology	t	technology	\N	2026-02-04 03:50:40.695+00	2026-02-04 03:50:40.679+00
2	News	t	news	\N	2026-02-04 03:50:40.695+00	2026-02-04 03:50:40.679+00
3	Finance	t	finance	\N	2026-02-04 03:50:40.695+00	2026-02-04 03:50:40.679+00
4	Design	t	design	\N	2026-02-04 03:50:40.695+00	2026-02-04 03:50:40.679+00
5	Software	t	software	\N	2026-02-04 03:50:40.695+00	2026-02-04 03:50:40.679+00
6	Engineering	t	engineering	\N	2026-02-04 03:50:40.695+00	2026-02-04 03:50:40.679+00
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.posts (id, title, hero_image_id, content, meta_title, meta_image_id, meta_description, published_at, generate_slug, slug, updated_at, created_at, _status) FROM stdin;
1	Digital Horizons: A Glimpse into Tomorrow	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dive into the marvels of modern innovation, where the only constant is change. A journey where pixels and data converge to craft the future.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"id": "6982c2125b675955ca35c39e", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Rise of AI and Machine Learning", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "We find ourselves in a transformative era where artificial intelligence (AI) stands at the forefront of technological evolution. The ripple effects of its advancements are reshaping industries at an unprecedented pace. No longer are businesses bound by the limitations of tedious, manual processes. Instead, sophisticated machines, fueled by vast amounts of historical data, are now capable of making decisions previously left to human intuition. These intelligent systems are not only optimizing operations but also pioneering innovative approaches, heralding a new age of business transformation worldwide. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"tag": "h4", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "To demonstrate basic AI functionality, here is a javascript snippet that makes a POST request to a generic AI API in order to generate text based on a prompt. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"id": "6982c2125b675955ca35c39f", "code": "async function generateText(prompt) {\\n    const apiKey = 'your-api-key';\\n    const apiUrl = 'https://api.example.com/generate-text';\\n\\n    const response = await fetch(apiUrl, {\\n        method: 'POST',\\n        headers: {\\n            'Content-Type': 'application/json',\\n            'Authorization': `Bearer ${apiKey}`\\n        },\\n        body: JSON.stringify({\\n            model: 'text-generation-model',\\n            prompt: prompt,\\n            max_tokens: 50\\n        })\\n    });\\n\\n    const data = await response.json();\\n    console.log(data.choices[0].text.trim());\\n}\\n\\n// Example usage\\ngenerateText(\\"Once upon a time in a faraway land,\\");\\n", "language": "javascript", "blockName": "Generate Text", "blockType": "code"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "IoT: Connecting the World Around Us", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "In today's rapidly evolving technological landscape, the Internet of Things (IoT) stands out as a revolutionary force. From transforming our residences with smart home systems to redefining transportation through connected cars, IoT's influence is palpable in nearly every facet of our daily lives.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This technology hinges on the seamless integration of devices and systems, allowing them to communicate and collaborate effortlessly. With each connected device, we move a step closer to a world where convenience and efficiency are embedded in the very fabric of our existence. As a result, we're transitioning into an era where our surroundings intuitively respond to our needs, heralding a smarter and more interconnected global community.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6982c2125b675955ca35c3a0", "media": 1, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "block", "fields": {"id": "6982c2125b675955ca35c3a1", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic Components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Digital Horizons: A Glimpse into Tomorrow	2	Dive into the marvels of modern innovation, where the only constant is change. A journey where pixels and data converge to craft the future.	\N	f	digital-horizons	2026-02-04 05:23:55.635+00	2026-02-04 03:50:42.132+00	published
2	Global Gaze: Beyond the Headlines	1	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Explore the untold and overlooked. A magnified view into the corners of the world, where every story deserves its spotlight.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"id": "6982c2125b675955ca35c3a8", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textFormat": 1}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Power of Resilience: Stories of Recovery and Hope", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Throughout history, regions across the globe have faced the devastating impact of natural disasters, the turbulence of political unrest, and the challenging ripples of economic downturns. In these moments of profound crisis, an often-underestimated force emerges: the indomitable resilience of the human spirit. These aren't just tales of mere survival, but stories of communities forging bonds, uniting with a collective purpose, and demonstrating an innate ability to overcome.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6982c2125b675955ca35c3a9", "media": 3, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "From neighbors forming makeshift rescue teams during floods to entire cities rallying to rebuild after economic collapse, the essence of humanity is most evident in these acts of solidarity. As we delve into these narratives, we witness the transformative power of community spirit, where adversity becomes a catalyst for growth, unity, and a brighter, rebuilt future.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6982c2125b675955ca35c3aa", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Global Gaze: Beyond the Headlines	1	Explore the untold and overlooked. A magnified view into the corners of the world, where every story deserves its spotlight.	\N	f	global-gaze	2026-02-04 05:23:55.63+00	2026-02-04 03:50:42.142+00	published
3	Dollar and Sense: The Financial Forecast	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "block", "fields": {"id": "6982c2125b675955ca35c3ae", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": "This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textFormat": 1}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Money isn't just currency; ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "it's a language. ", "type": "text", "style": "", "detail": 0, "format": 2, "version": 1}, {"mode": "normal", "text": "Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Money, in its essence, transcends the mere concept of coins and paper notes; it becomes a profound language that speaks of value, trust, and societal structures. Like any language, it possesses intricate nuances and subtleties that require a discerning understanding. It's in these depths where the calculated world of financial strategy collides with the raw, instinctive nature of human intuition. Just as a seasoned linguist might dissect the syntax and semantics of a sentence, a financial expert navigates the vast and tumultuous ocean of finance, guided not only by logic and data but also by gut feelings and foresight. Every transaction, investment, and financial decision becomes a dialogue in this expansive lexicon of commerce and value.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6982c2125b675955ca35c3af", "media": 2, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Stock Market Dynamics: Bulls, Bears, and the Uncertain Middle", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market is a realm of vast opportunity but also poses risks. Discover the forces that drive market trends and the strategies employed by top traders to navigate this complex ecosystem. From market analysis to understanding investor psychology, get a comprehensive insight into the world of stocks.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market, often visualized as a bustling arena of numbers and ticker tapes, is as much about human behavior as it is about economics. It's a place where optimism, represented by the bullish rally, meets the caution of bearish downturns, with each vying to dictate the market's direction. But between these two extremes lies an uncertain middle ground, a zone populated by traders and investors who constantly weigh hope against fear. Successful navigation requires more than just financial acumen; it demands an understanding of collective sentiments and the ability to predict not just market movements, but also the reactions of other market participants. In this intricate dance of numbers and nerves, the most astute players are those who master both the hard data and the soft nuances of human behavior.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6982c2125b675955ca35c3b0", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Dollar and Sense: The Financial Forecast	3	Money isn't just currency; it's a language. Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.	\N	f	dollar-and-sense-the-financial-forecast	2026-02-04 05:23:55.63+00	2026-02-04 03:50:42.148+00	published
\.


--
-- Data for Name: _pages_v_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_rels (id, "order", parent_id, path, pages_id, posts_id, categories_id) FROM stdin;
\.


--
-- Data for Name: _pages_v_version_hero_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_version_hero_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label, link_appearance, _uuid) FROM stdin;
1	35	1	custom	f	\\#ventures	DISCOVER OUR VENTURES	default	6982c2125b675955ca35c3b6
1	36	2	custom	f	\\#ventures	DISCOVER OUR VENTURES	default	6982c2125b675955ca35c3b6
1	37	3	custom	f	\\#ventures	DISCOVER OUR VENTURES	default	6982c2125b675955ca35c3b6
1	38	4	custom	f	\\#ventures	DISCOVER OUR VENTURES	default	6982c2125b675955ca35c3b6
1	39	5	custom	f	\\#ventures	DISCOVER OUR VENTURES	default	6982c2125b675955ca35c3b6
1	40	6	custom	f	\\#ventures	DISCOVER OUR VENTURES	default	6982c2125b675955ca35c3b6
1	41	7	custom	f	\\#ventures	DISCOVER OUR VENTURES	default	6982c2125b675955ca35c3b6
1	42	8	custom	f	\\#ventures	DISCOVER OUR VENTURES	default	6982c2125b675955ca35c3b6
\.


--
-- Data for Name: _posts_v; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._posts_v (id, parent_id, version_title, version_hero_image_id, version_content, version_meta_title, version_meta_image_id, version_meta_description, version_published_at, version_generate_slug, version_slug, version_updated_at, version_created_at, version__status, created_at, updated_at, latest, autosave) FROM stdin;
1	1	Digital Horizons: A Glimpse into Tomorrow	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dive into the marvels of modern innovation, where the only constant is change. A journey where pixels and data converge to craft the future.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Rise of AI and Machine Learning", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "We find ourselves in a transformative era where artificial intelligence (AI) stands at the forefront of technological evolution. The ripple effects of its advancements are reshaping industries at an unprecedented pace. No longer are businesses bound by the limitations of tedious, manual processes. Instead, sophisticated machines, fueled by vast amounts of historical data, are now capable of making decisions previously left to human intuition. These intelligent systems are not only optimizing operations but also pioneering innovative approaches, heralding a new age of business transformation worldwide. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"tag": "h4", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "To demonstrate basic AI functionality, here is a javascript snippet that makes a POST request to a generic AI API in order to generate text based on a prompt. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"code": "async function generateText(prompt) {\\n    const apiKey = 'your-api-key';\\n    const apiUrl = 'https://api.example.com/generate-text';\\n\\n    const response = await fetch(apiUrl, {\\n        method: 'POST',\\n        headers: {\\n            'Content-Type': 'application/json',\\n            'Authorization': `Bearer ${apiKey}`\\n        },\\n        body: JSON.stringify({\\n            model: 'text-generation-model',\\n            prompt: prompt,\\n            max_tokens: 50\\n        })\\n    });\\n\\n    const data = await response.json();\\n    console.log(data.choices[0].text.trim());\\n}\\n\\n// Example usage\\ngenerateText(\\"Once upon a time in a faraway land,\\");\\n", "language": "javascript", "blockName": "Generate Text", "blockType": "code"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "IoT: Connecting the World Around Us", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "In today's rapidly evolving technological landscape, the Internet of Things (IoT) stands out as a revolutionary force. From transforming our residences with smart home systems to redefining transportation through connected cars, IoT's influence is palpable in nearly every facet of our daily lives.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This technology hinges on the seamless integration of devices and systems, allowing them to communicate and collaborate effortlessly. With each connected device, we move a step closer to a world where convenience and efficiency are embedded in the very fabric of our existence. As a result, we're transitioning into an era where our surroundings intuitively respond to our needs, heralding a smarter and more interconnected global community.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"media": 1, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "block", "fields": {"style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic Components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Digital Horizons: A Glimpse into Tomorrow	2	Dive into the marvels of modern innovation, where the only constant is change. A journey where pixels and data converge to craft the future.	2026-02-04 03:50:42.132+00	f	digital-horizons	2026-02-04 03:50:42.132+00	2026-02-04 03:50:42.132+00	published	2026-02-05 05:52:06.59+00	2026-02-05 05:52:06.59+00	f	f
2	2	Global Gaze: Beyond the Headlines	1	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Explore the untold and overlooked. A magnified view into the corners of the world, where every story deserves its spotlight.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textFormat": 1}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Power of Resilience: Stories of Recovery and Hope", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Throughout history, regions across the globe have faced the devastating impact of natural disasters, the turbulence of political unrest, and the challenging ripples of economic downturns. In these moments of profound crisis, an often-underestimated force emerges: the indomitable resilience of the human spirit. These aren't just tales of mere survival, but stories of communities forging bonds, uniting with a collective purpose, and demonstrating an innate ability to overcome.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"media": 3, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "From neighbors forming makeshift rescue teams during floods to entire cities rallying to rebuild after economic collapse, the essence of humanity is most evident in these acts of solidarity. As we delve into these narratives, we witness the transformative power of community spirit, where adversity becomes a catalyst for growth, unity, and a brighter, rebuilt future.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Global Gaze: Beyond the Headlines	1	Explore the untold and overlooked. A magnified view into the corners of the world, where every story deserves its spotlight.	2026-02-04 03:50:42.142+00	f	global-gaze	2026-02-04 03:50:42.142+00	2026-02-04 03:50:42.142+00	published	2026-02-05 05:52:06.616+00	2026-02-05 05:52:06.616+00	f	f
3	3	Dollar and Sense: The Financial Forecast	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "block", "fields": {"style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": "This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textFormat": 1}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Money isn't just currency; ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "it's a language. ", "type": "text", "style": "", "detail": 0, "format": 2, "version": 1}, {"mode": "normal", "text": "Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Money, in its essence, transcends the mere concept of coins and paper notes; it becomes a profound language that speaks of value, trust, and societal structures. Like any language, it possesses intricate nuances and subtleties that require a discerning understanding. It's in these depths where the calculated world of financial strategy collides with the raw, instinctive nature of human intuition. Just as a seasoned linguist might dissect the syntax and semantics of a sentence, a financial expert navigates the vast and tumultuous ocean of finance, guided not only by logic and data but also by gut feelings and foresight. Every transaction, investment, and financial decision becomes a dialogue in this expansive lexicon of commerce and value.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"media": 2, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Stock Market Dynamics: Bulls, Bears, and the Uncertain Middle", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market is a realm of vast opportunity but also poses risks. Discover the forces that drive market trends and the strategies employed by top traders to navigate this complex ecosystem. From market analysis to understanding investor psychology, get a comprehensive insight into the world of stocks.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market, often visualized as a bustling arena of numbers and ticker tapes, is as much about human behavior as it is about economics. It's a place where optimism, represented by the bullish rally, meets the caution of bearish downturns, with each vying to dictate the market's direction. But between these two extremes lies an uncertain middle ground, a zone populated by traders and investors who constantly weigh hope against fear. Successful navigation requires more than just financial acumen; it demands an understanding of collective sentiments and the ability to predict not just market movements, but also the reactions of other market participants. In this intricate dance of numbers and nerves, the most astute players are those who master both the hard data and the soft nuances of human behavior.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Dollar and Sense: The Financial Forecast	3	Money isn't just currency; it's a language. Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.	2026-02-04 03:50:42.148+00	f	dollar-and-sense-the-financial-forecast	2026-02-04 03:50:42.148+00	2026-02-04 03:50:42.148+00	published	2026-02-05 05:52:06.618+00	2026-02-05 05:52:06.618+00	f	f
4	1	Digital Horizons: A Glimpse into Tomorrow	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dive into the marvels of modern innovation, where the only constant is change. A journey where pixels and data converge to craft the future.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"id": "6982c2125b675955ca35c39e", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Rise of AI and Machine Learning", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "We find ourselves in a transformative era where artificial intelligence (AI) stands at the forefront of technological evolution. The ripple effects of its advancements are reshaping industries at an unprecedented pace. No longer are businesses bound by the limitations of tedious, manual processes. Instead, sophisticated machines, fueled by vast amounts of historical data, are now capable of making decisions previously left to human intuition. These intelligent systems are not only optimizing operations but also pioneering innovative approaches, heralding a new age of business transformation worldwide. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"tag": "h4", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "To demonstrate basic AI functionality, here is a javascript snippet that makes a POST request to a generic AI API in order to generate text based on a prompt. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"id": "6982c2125b675955ca35c39f", "code": "async function generateText(prompt) {\\n    const apiKey = 'your-api-key';\\n    const apiUrl = 'https://api.example.com/generate-text';\\n\\n    const response = await fetch(apiUrl, {\\n        method: 'POST',\\n        headers: {\\n            'Content-Type': 'application/json',\\n            'Authorization': `Bearer ${apiKey}`\\n        },\\n        body: JSON.stringify({\\n            model: 'text-generation-model',\\n            prompt: prompt,\\n            max_tokens: 50\\n        })\\n    });\\n\\n    const data = await response.json();\\n    console.log(data.choices[0].text.trim());\\n}\\n\\n// Example usage\\ngenerateText(\\"Once upon a time in a faraway land,\\");\\n", "language": "javascript", "blockName": "Generate Text", "blockType": "code"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "IoT: Connecting the World Around Us", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "In today's rapidly evolving technological landscape, the Internet of Things (IoT) stands out as a revolutionary force. From transforming our residences with smart home systems to redefining transportation through connected cars, IoT's influence is palpable in nearly every facet of our daily lives.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This technology hinges on the seamless integration of devices and systems, allowing them to communicate and collaborate effortlessly. With each connected device, we move a step closer to a world where convenience and efficiency are embedded in the very fabric of our existence. As a result, we're transitioning into an era where our surroundings intuitively respond to our needs, heralding a smarter and more interconnected global community.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6982c2125b675955ca35c3a0", "media": 1, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "block", "fields": {"id": "6982c2125b675955ca35c3a1", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic Components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Digital Horizons: A Glimpse into Tomorrow	2	Dive into the marvels of modern innovation, where the only constant is change. A journey where pixels and data converge to craft the future.	2026-02-04 03:50:42.132+00	f	digital-horizons	2026-02-04 03:50:42.157+00	2026-02-04 03:50:42.132+00	published	2026-02-05 05:52:06.619+00	2026-02-05 05:52:06.619+00	f	f
5	2	Global Gaze: Beyond the Headlines	1	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Explore the untold and overlooked. A magnified view into the corners of the world, where every story deserves its spotlight.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"id": "6982c2125b675955ca35c3a8", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textFormat": 1}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Power of Resilience: Stories of Recovery and Hope", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Throughout history, regions across the globe have faced the devastating impact of natural disasters, the turbulence of political unrest, and the challenging ripples of economic downturns. In these moments of profound crisis, an often-underestimated force emerges: the indomitable resilience of the human spirit. These aren't just tales of mere survival, but stories of communities forging bonds, uniting with a collective purpose, and demonstrating an innate ability to overcome.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6982c2125b675955ca35c3a9", "media": 3, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "From neighbors forming makeshift rescue teams during floods to entire cities rallying to rebuild after economic collapse, the essence of humanity is most evident in these acts of solidarity. As we delve into these narratives, we witness the transformative power of community spirit, where adversity becomes a catalyst for growth, unity, and a brighter, rebuilt future.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6982c2125b675955ca35c3aa", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Global Gaze: Beyond the Headlines	1	Explore the untold and overlooked. A magnified view into the corners of the world, where every story deserves its spotlight.	2026-02-04 03:50:42.142+00	f	global-gaze	2026-02-04 03:50:42.172+00	2026-02-04 03:50:42.142+00	published	2026-02-05 05:52:06.623+00	2026-02-05 05:52:06.623+00	f	f
6	3	Dollar and Sense: The Financial Forecast	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "block", "fields": {"id": "6982c2125b675955ca35c3ae", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": "This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textFormat": 1}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Money isn't just currency; ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "it's a language. ", "type": "text", "style": "", "detail": 0, "format": 2, "version": 1}, {"mode": "normal", "text": "Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Money, in its essence, transcends the mere concept of coins and paper notes; it becomes a profound language that speaks of value, trust, and societal structures. Like any language, it possesses intricate nuances and subtleties that require a discerning understanding. It's in these depths where the calculated world of financial strategy collides with the raw, instinctive nature of human intuition. Just as a seasoned linguist might dissect the syntax and semantics of a sentence, a financial expert navigates the vast and tumultuous ocean of finance, guided not only by logic and data but also by gut feelings and foresight. Every transaction, investment, and financial decision becomes a dialogue in this expansive lexicon of commerce and value.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6982c2125b675955ca35c3af", "media": 2, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Stock Market Dynamics: Bulls, Bears, and the Uncertain Middle", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market is a realm of vast opportunity but also poses risks. Discover the forces that drive market trends and the strategies employed by top traders to navigate this complex ecosystem. From market analysis to understanding investor psychology, get a comprehensive insight into the world of stocks.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market, often visualized as a bustling arena of numbers and ticker tapes, is as much about human behavior as it is about economics. It's a place where optimism, represented by the bullish rally, meets the caution of bearish downturns, with each vying to dictate the market's direction. But between these two extremes lies an uncertain middle ground, a zone populated by traders and investors who constantly weigh hope against fear. Successful navigation requires more than just financial acumen; it demands an understanding of collective sentiments and the ability to predict not just market movements, but also the reactions of other market participants. In this intricate dance of numbers and nerves, the most astute players are those who master both the hard data and the soft nuances of human behavior.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6982c2125b675955ca35c3b0", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Dollar and Sense: The Financial Forecast	3	Money isn't just currency; it's a language. Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.	2026-02-04 03:50:42.148+00	f	dollar-and-sense-the-financial-forecast	2026-02-04 03:50:42.183+00	2026-02-04 03:50:42.148+00	published	2026-02-05 05:52:06.625+00	2026-02-05 05:52:06.625+00	f	f
7	2	Global Gaze: Beyond the Headlines	1	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Explore the untold and overlooked. A magnified view into the corners of the world, where every story deserves its spotlight.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"id": "6982c2125b675955ca35c3a8", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textFormat": 1}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Power of Resilience: Stories of Recovery and Hope", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Throughout history, regions across the globe have faced the devastating impact of natural disasters, the turbulence of political unrest, and the challenging ripples of economic downturns. In these moments of profound crisis, an often-underestimated force emerges: the indomitable resilience of the human spirit. These aren't just tales of mere survival, but stories of communities forging bonds, uniting with a collective purpose, and demonstrating an innate ability to overcome.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6982c2125b675955ca35c3a9", "media": 3, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "From neighbors forming makeshift rescue teams during floods to entire cities rallying to rebuild after economic collapse, the essence of humanity is most evident in these acts of solidarity. As we delve into these narratives, we witness the transformative power of community spirit, where adversity becomes a catalyst for growth, unity, and a brighter, rebuilt future.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6982c2125b675955ca35c3aa", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Global Gaze: Beyond the Headlines	1	Explore the untold and overlooked. A magnified view into the corners of the world, where every story deserves its spotlight.	2026-02-04 03:50:42.142+00	f	global-gaze	2026-02-04 05:23:55.63+00	2026-02-04 03:50:42.142+00	draft	2026-02-05 05:52:06.627+00	2026-02-05 05:52:06.627+00	t	f
8	3	Dollar and Sense: The Financial Forecast	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "block", "fields": {"id": "6982c2125b675955ca35c3ae", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": "This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textFormat": 1}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Money isn't just currency; ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "it's a language. ", "type": "text", "style": "", "detail": 0, "format": 2, "version": 1}, {"mode": "normal", "text": "Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Money, in its essence, transcends the mere concept of coins and paper notes; it becomes a profound language that speaks of value, trust, and societal structures. Like any language, it possesses intricate nuances and subtleties that require a discerning understanding. It's in these depths where the calculated world of financial strategy collides with the raw, instinctive nature of human intuition. Just as a seasoned linguist might dissect the syntax and semantics of a sentence, a financial expert navigates the vast and tumultuous ocean of finance, guided not only by logic and data but also by gut feelings and foresight. Every transaction, investment, and financial decision becomes a dialogue in this expansive lexicon of commerce and value.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6982c2125b675955ca35c3af", "media": 2, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Stock Market Dynamics: Bulls, Bears, and the Uncertain Middle", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market is a realm of vast opportunity but also poses risks. Discover the forces that drive market trends and the strategies employed by top traders to navigate this complex ecosystem. From market analysis to understanding investor psychology, get a comprehensive insight into the world of stocks.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market, often visualized as a bustling arena of numbers and ticker tapes, is as much about human behavior as it is about economics. It's a place where optimism, represented by the bullish rally, meets the caution of bearish downturns, with each vying to dictate the market's direction. But between these two extremes lies an uncertain middle ground, a zone populated by traders and investors who constantly weigh hope against fear. Successful navigation requires more than just financial acumen; it demands an understanding of collective sentiments and the ability to predict not just market movements, but also the reactions of other market participants. In this intricate dance of numbers and nerves, the most astute players are those who master both the hard data and the soft nuances of human behavior.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6982c2125b675955ca35c3b0", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Dollar and Sense: The Financial Forecast	3	Money isn't just currency; it's a language. Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.	2026-02-04 03:50:42.148+00	f	dollar-and-sense-the-financial-forecast	2026-02-04 05:23:55.63+00	2026-02-04 03:50:42.148+00	draft	2026-02-05 05:52:06.628+00	2026-02-05 05:52:06.628+00	t	f
9	1	Digital Horizons: A Glimpse into Tomorrow	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dive into the marvels of modern innovation, where the only constant is change. A journey where pixels and data converge to craft the future.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"id": "6982c2125b675955ca35c39e", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Rise of AI and Machine Learning", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "We find ourselves in a transformative era where artificial intelligence (AI) stands at the forefront of technological evolution. The ripple effects of its advancements are reshaping industries at an unprecedented pace. No longer are businesses bound by the limitations of tedious, manual processes. Instead, sophisticated machines, fueled by vast amounts of historical data, are now capable of making decisions previously left to human intuition. These intelligent systems are not only optimizing operations but also pioneering innovative approaches, heralding a new age of business transformation worldwide. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"tag": "h4", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "To demonstrate basic AI functionality, here is a javascript snippet that makes a POST request to a generic AI API in order to generate text based on a prompt. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"id": "6982c2125b675955ca35c39f", "code": "async function generateText(prompt) {\\n    const apiKey = 'your-api-key';\\n    const apiUrl = 'https://api.example.com/generate-text';\\n\\n    const response = await fetch(apiUrl, {\\n        method: 'POST',\\n        headers: {\\n            'Content-Type': 'application/json',\\n            'Authorization': `Bearer ${apiKey}`\\n        },\\n        body: JSON.stringify({\\n            model: 'text-generation-model',\\n            prompt: prompt,\\n            max_tokens: 50\\n        })\\n    });\\n\\n    const data = await response.json();\\n    console.log(data.choices[0].text.trim());\\n}\\n\\n// Example usage\\ngenerateText(\\"Once upon a time in a faraway land,\\");\\n", "language": "javascript", "blockName": "Generate Text", "blockType": "code"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "IoT: Connecting the World Around Us", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "In today's rapidly evolving technological landscape, the Internet of Things (IoT) stands out as a revolutionary force. From transforming our residences with smart home systems to redefining transportation through connected cars, IoT's influence is palpable in nearly every facet of our daily lives.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This technology hinges on the seamless integration of devices and systems, allowing them to communicate and collaborate effortlessly. With each connected device, we move a step closer to a world where convenience and efficiency are embedded in the very fabric of our existence. As a result, we're transitioning into an era where our surroundings intuitively respond to our needs, heralding a smarter and more interconnected global community.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6982c2125b675955ca35c3a0", "media": 1, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "block", "fields": {"id": "6982c2125b675955ca35c3a1", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic Components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Digital Horizons: A Glimpse into Tomorrow	2	Dive into the marvels of modern innovation, where the only constant is change. A journey where pixels and data converge to craft the future.	2026-02-04 03:50:42.132+00	f	digital-horizons	2026-02-04 05:23:55.635+00	2026-02-04 03:50:42.132+00	draft	2026-02-05 05:52:06.629+00	2026-02-05 05:52:06.629+00	t	f
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users (id, name, updated_at, created_at, email, reset_password_token, reset_password_expiration, salt, hash, login_attempts, lock_until) FROM stdin;
2	Demo Author	2026-02-04 03:50:40.738+00	2026-02-04 03:50:40.738+00	demo-author@example.com	\N	\N	935f63449b944089bb9a4b123b6e2026bda0bede659b33d19a762c2e907f1316	80548ab8fe1e8962c8b96bb0b1390ba1df372851c2019c33ae0cd04768f148ceaf304baec5768f43035c05273a3deef3e1e0af2404aa5210441837c401f3971436afb50df3b04a8b0c80cb1480fbc2fc7d26a37bd9b3eced1d2c42d29530de02f307f290c547af67b2d49123de6e547901e1cdfe2e9fba40ad5b66cbdcd6344afe5a5d4aafec8a0b2f3bbdb27ad086993e634fc245a48dff7435fb393c30bfdab0b6019e3d7fc8ca271414a60d39b7057fa9eadc567ca6d4d1beb2b0ee63279375e8b83baab2dd97870c146f3af905a11572a44731a835bda0cd90733efa20ce9d7c22698aea07b907c44e562f27ecf6988440dbe1b10e0ace5423ed4bfd1ebd6be2d51685c374961661e95454c8825d06b8d24877f667eb89cd8bfc24faec2d46558ea2e13fe63c2c41e521fc0184fc44153cd6560e318cef998ba789292cfe012c0869c9aa37993ffa9910d8611a5fdd4a54ef95d5688367a95f9a0356b0fbfb63bd8b3ca2324e1e3d5273614b85f27d1fae75471b50e2583b604e4788e30f9057da32cb9b0e7dae0b3a6336ed67e0332afa034ca217c04260ee5543ce122baeca37c982eabb05dad664d40b500a0272143b58f22b604132634586ab900f47a5a9f9437fc0c977d709ee2fea5c38113ba24bb44feb60ef9e1b93d2f3346b1c52d1cad7ef22439d10784608ee262cd7e0681b4b9beab98e945970f928d2c7ce	0	\N
1	Admin	2026-02-04 01:50:20.558+00	2026-02-04 01:50:20.557+00	admin@example.com	\N	\N	7cc57a449942eae02c39c76b5ab3475d82f9233cf5d9879c59292e6c0182f593	692e28924c4646ac914e842f1e09990e311bd3d637b8a96b092be253bd33d591a08b4c2a3be9ba1fa0abfb6b9c36f070cda2fbabc256820bd4d3737cb9eba45f14d3a61bb722d77a59e8b43c5f35e0a8490dbac18ad24357fc65928811bd31e8bd2a10e7445f1a5853a35bd2f7d5d6dc9127faa08a6a90f66ec940c4750c47519b165a01679491f5594b5c4cd9f27729acee17d237fdd20f5d5aecd98908d953b5a360e5e19ea25bb93c07e4c37e708289c20d0e98c6cb8866a1435c9bdf637d8084a6719f49d747d37be066b6ca0249138b9c902ea63a32eb978e8a2965d9b24c5b13e41c2f379a6402d1e1d01c62a0c41765ee143dfb25262f67903057b9c0ddf77ca5f75d90d259dddb74bcfe6088a40d8633ad647869071cbb3c0bd6a77481abb5c76eefc17b9b4b5def224ef513a81f8a2a3dc89503caae61defc35c6dc0d2b5a031ae330250b78eb5560e5999676d9370f317a08fb710f21989e469456b9f3e70b55a1a988babd77180f5114ec986b1920a5afa34e6ec040593060a9ff59f9836cad921e3b75b1403de38b387d027ddf87fed956c6c6b7214e7bc3d1677e18f8c362dc8f5d5d0e2bdd966890b211cbdc5d43acf49d0aae6d5b4d2ec030bb0c60fb2de3beb43236a0c9b06798e087a2ddee1016d514f13e32f514177e19b171958bc546fd7e4a8e5fed953194e6a2f4326b6f558bafd8dae369393f8900	0	\N
\.


--
-- Data for Name: _posts_v_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._posts_v_rels (id, "order", parent_id, path, posts_id, categories_id, users_id) FROM stdin;
1	1	1	version.authors	\N	\N	2
2	1	2	version.authors	\N	\N	2
3	1	3	version.authors	\N	\N	2
4	1	4	version.relatedPosts	2	\N	\N
5	2	4	version.relatedPosts	3	\N	\N
6	1	4	version.authors	\N	\N	2
7	1	5	version.relatedPosts	1	\N	\N
8	2	5	version.relatedPosts	3	\N	\N
9	1	5	version.authors	\N	\N	2
10	1	6	version.relatedPosts	1	\N	\N
11	2	6	version.relatedPosts	2	\N	\N
12	1	6	version.authors	\N	\N	2
13	1	7	version.relatedPosts	2	\N	\N
14	2	7	version.relatedPosts	3	\N	\N
15	1	7	version.authors	\N	\N	2
16	1	8	version.relatedPosts	1	\N	\N
17	2	8	version.relatedPosts	3	\N	\N
18	1	8	version.authors	\N	\N	2
19	1	9	version.relatedPosts	2	\N	\N
20	2	9	version.relatedPosts	3	\N	\N
21	1	9	version.authors	\N	\N	2
\.


--
-- Data for Name: _posts_v_version_populated_authors; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._posts_v_version_populated_authors (_order, _parent_id, id, _uuid, name) FROM stdin;
\.


--
-- Data for Name: categories_breadcrumbs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.categories_breadcrumbs (_order, _parent_id, id, doc_id, url, label) FROM stdin;
\.


--
-- Data for Name: footer; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.footer (id, updated_at, created_at) FROM stdin;
1	2026-02-04 03:35:57.401+00	2026-02-04 03:35:57.401+00
\.


--
-- Data for Name: footer_nav_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.footer_nav_items (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label) FROM stdin;
1	1	6982c2125b675955ca35c3c5	custom	\N	/admin	Admin
\.


--
-- Data for Name: footer_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.footer_rels (id, "order", parent_id, path, pages_id, posts_id) FROM stdin;
\.


--
-- Data for Name: form_submissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.form_submissions (id, form_id, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: form_submissions_submission_data; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.form_submissions_submission_data (_order, _parent_id, id, field, value) FROM stdin;
\.


--
-- Data for Name: forms_blocks_checkbox; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_checkbox (_order, _parent_id, _path, id, name, label, width, required, default_value, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_country; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_country (_order, _parent_id, _path, id, name, label, width, required, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_email; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_email (_order, _parent_id, _path, id, name, label, width, required, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_message; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_message (_order, _parent_id, _path, id, message, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_number; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_number (_order, _parent_id, _path, id, name, label, width, default_value, required, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_select; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_select (_order, _parent_id, _path, id, name, label, width, default_value, placeholder, required, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_select_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_select_options (_order, _parent_id, id, label, value) FROM stdin;
\.


--
-- Data for Name: forms_blocks_state; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_state (_order, _parent_id, _path, id, name, label, width, required, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_text; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_text (_order, _parent_id, _path, id, name, label, width, default_value, required, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_textarea; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_textarea (_order, _parent_id, _path, id, name, label, width, default_value, required, block_name) FROM stdin;
\.


--
-- Data for Name: forms_emails; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_emails (_order, _parent_id, id, email_to, cc, bcc, reply_to, email_from, subject, message) FROM stdin;
\.


--
-- Data for Name: header; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.header (id, updated_at, created_at) FROM stdin;
1	2026-02-04 03:35:57.401+00	2026-02-04 03:35:57.401+00
\.


--
-- Data for Name: header_nav_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.header_nav_items (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label) FROM stdin;
1	1	6982c2125b675955ca35c3c3	custom	\N	/#about	About
2	1	6982d9c3a3874645a6087872	custom	\N	#what-we-do	What We Do
3	1	6982d67ba3874645a608786c	custom	\N	/#team	Team
4	1	6982d6c4a3874645a6087870	custom	\N	/#projects	Projects
5	1	6982c2125b675955ca35c3c4	custom	\N	/#contact	Contact
6	1	698436669c40f6dff68b88a2	custom	\N	/#contact	contact
\.


--
-- Data for Name: header_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.header_rels (id, "order", parent_id, path, pages_id, posts_id) FROM stdin;
\.


--
-- Data for Name: pages_blocks_archive; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_archive (_order, _parent_id, _path, id, intro_content, populate_by, relation_to, "limit", block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_content; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_content (_order, _parent_id, _path, id, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_content_columns; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_content_columns (_order, _parent_id, id, size, rich_text, enable_link, link_type, link_new_tab, link_url, link_label, link_appearance) FROM stdin;
\.


--
-- Data for Name: pages_blocks_cta; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_cta (_order, _parent_id, _path, id, rich_text, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_cta_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_cta_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label, link_appearance) FROM stdin;
\.


--
-- Data for Name: pages_blocks_featured_project; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_featured_project (_order, _parent_id, _path, id, pre_heading, heading, subheading, description, project_image_id, link_label, link_url, block_name) FROM stdin;
5	2	layout	6982d1ff95af8a311609ac1c	FEATURED PROJECT	LIONHEART MEDICAL CITY	A World-Class Teaching, Research & Level 6 Referral Centre	A flagship healthcare infrastructure initiative designed to address Africa's growing demand for advanced, accessible, and high-quality healthcare services. Structured to become a regional center of excellence—combining clinical care, medical education, research, and innovation.	19	Call us Now: +888-BARFECT	#	\N
\.


--
-- Data for Name: pages_blocks_featured_project_features; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_featured_project_features (_order, _parent_id, id, title, description) FROM stdin;
1	6982d1ff95af8a311609ac1c	6982d1ff6c9c3b7d77300be8	Level 6 Referral Hospital	Comprehensive tertiary & specialized care
2	6982d1ff95af8a311609ac1c	6982d1ff6c9c3b7d77300be9	Teaching Hospital	Training the next generation of professionals
3	6982d1ff95af8a311609ac1c	6982d1ff6c9c3b7d77300bea	Research Center	Clinical trials & biotechnology innovation
4	6982d1ff95af8a311609ac1c	6982d1ff6c9c3b7d77300beb	Smart Infrastructure	AI-assisted diagnostics & digital health
\.


--
-- Data for Name: pages_blocks_form_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_form_block (_order, _parent_id, _path, id, form_id, enable_intro, intro_content, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_media_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_media_block (_order, _parent_id, _path, id, media_id, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_team; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_team (_order, _parent_id, _path, id, heading, background_image_id, block_name) FROM stdin;
3	2	layout	6982d1c03b35b33808415922	LEADERSHIP	\N	\N
\.


--
-- Data for Name: pages_blocks_team_leaders; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_team_leaders (_order, _parent_id, id, image_id, name, role, description) FROM stdin;
1	6982d1c03b35b33808415922	6982d1c06c9c3b7d77300be0	\N	RAYMOND KAPTICH	CHIEF EXECUTIVE OFFICER	Leads partnerships, communications, and stakeholder engagement.
2	6982d1c03b35b33808415922	6982d1c06c9c3b7d77300be1	\N	DR. JOE SAGINI	CHIEF STRATEGIST	Oversees governance, venture structuring, and long-term sustainability alignment.
3	6982d1c03b35b33808415922	6982d1c06c9c3b7d77300be2	\N	EMMACULATE CHEPTOO	BRAND VISIONARY	Leads strategic direction, innovation, and brand positioning.
4	6982d1c03b35b33808415922	6982d1c06c9c3b7d77300be3	\N	HON. PROF. DICKSON N. ORUKO	DIRECTOR, PROJECTS	Oversees project execution, technical delivery, and performance oversight.
\.


--
-- Data for Name: pages_blocks_thesis; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_thesis (_order, _parent_id, _path, id, pre_heading, heading, content, background_image_id, block_name) FROM stdin;
2	2	layout	6982c6fa8be43a21d8c09c3c	01 • THE THESIS	The Thesis	We believe Africa is the future engine of the global economy.	15	\N
\.


--
-- Data for Name: pages_blocks_thesis_features; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_thesis_features (_order, _parent_id, id, icon, title, description) FROM stdin;
1	6982c6fa8be43a21d8c09c3c	6982c7653b0778497b174319	globe	Pan-African	Networks that span sectors and borders, connecting vision with execution.
2	6982c6fa8be43a21d8c09c3c	6982c7a53b0778497b17431b	lightning	Adaptive Model	Operating as strategic advisors, development partners, or integrated management teams.
3	6982c6fa8be43a21d8c09c3c	6982c7d13b0778497b17431d	chart	Project Excellence	Feasibility, capital structuring, and end-to-end implementation.
\.


--
-- Data for Name: pages_blocks_ventures; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_ventures (_order, _parent_id, _path, id, pre_heading, heading, intro_text, background_image_id, block_name) FROM stdin;
4	2	layout	6982cba781482f4a39dfb733	02 • VENTURES	Our Ventures	Our portfolio spans critical sectors driving the African renaissance.	10	\N
\.


--
-- Data for Name: pages_blocks_ventures_ventures; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_ventures_ventures (_order, _parent_id, id, icon, title, description) FROM stdin;
1	6982cba781482f4a39dfb733	6982cba75590e57141dae7a8	activity	Barfect Energy	Investments in next-generation renewable energy, hydrokinetic power, and decentralized solutions.
2	6982cba781482f4a39dfb733	6982cba75590e57141dae7a9	layers	Barfect Estates	Development of premium real estate, sustainable communities, and strategic land assets.
3	6982cba781482f4a39dfb733	6982cba75590e57141dae7aa	sprout	Barfect Earth	Responsible resource development, ethical mining, and regenerative agriculture.
\.


--
-- Data for Name: pages_blocks_what_we_do; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_what_we_do (_order, _parent_id, _path, id, heading, intro_text, background_image_id, block_name) FROM stdin;
1	2	layout	6982cb9681482f4a39dfb731	WHAT WE DO	Our work is anchored in comprehensive, end-to-end project development—bridging the gap between concept and commission.	14	\N
\.


--
-- Data for Name: pages_blocks_what_we_do_columns; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_what_we_do_columns (_order, _parent_id, id, title, description) FROM stdin;
1	6982cb9681482f4a39dfb731	6982cb975590e57141dae7a2	FEASIBILITY & STUDIES	Rigorous technical, financial, and environmental assessments through reputable consultants.
2	6982cb9681482f4a39dfb731	6982cb975590e57141dae7a3	PROFESSIONAL MANAGEMENT	Structured governance and experienced management teams to ensure operational excellence.
3	6982cb9681482f4a39dfb731	6982cb975590e57141dae7a4	OPPORTUNITY IDENTIFICATION	Structuring high-impact projects across energy, real estate, and natural resources.
4	6982cb9681482f4a39dfb731	6982cb975590e57141dae7a5	CAPITAL STRUCTURING	Designing blended financing solutions with DFIs and private investors.
5	6982cb9681482f4a39dfb731	6982cb975590e57141dae7a6	IMPLEMENTATION	Managing execution with precision, accountability, and measurable outcomes.
6	6982cb9681482f4a39dfb731	6982cb975590e57141dae7a7	STRATEGIC ADVISORY	Data-driven strategies and stakeholder engagement for complex ventures.
\.


--
-- Data for Name: pages_hero_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_hero_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label, link_appearance) FROM stdin;
1	2	6982c2125b675955ca35c3b6	custom	f	\\#ventures	DISCOVER OUR VENTURES	default
\.


--
-- Data for Name: pages_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_rels (id, "order", parent_id, path, pages_id, posts_id, categories_id) FROM stdin;
\.


--
-- Data for Name: payload_folders_folder_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_folders_folder_type ("order", parent_id, value, id) FROM stdin;
\.


--
-- Data for Name: payload_jobs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_jobs (id, input, completed_at, total_tried, has_error, error, task_slug, queue, wait_until, processing, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: payload_jobs_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_jobs_log (_order, _parent_id, id, executed_at, completed_at, task_slug, task_i_d, input, output, state, error) FROM stdin;
\.


--
-- Data for Name: payload_kv; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_kv (id, key, data) FROM stdin;
\.


--
-- Data for Name: payload_locked_documents; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_locked_documents (id, global_slug, updated_at, created_at) FROM stdin;
3	\N	2026-02-05 06:23:57.209+00	2026-02-05 06:23:57.209+00
\.


--
-- Data for Name: redirects; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.redirects (id, "from", to_type, to_url, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: search; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.search (id, title, priority, slug, meta_title, meta_description, meta_image_id, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: payload_locked_documents_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_locked_documents_rels (id, "order", parent_id, path, pages_id, posts_id, media_id, categories_id, users_id, redirects_id, forms_id, form_submissions_id, search_id, payload_folders_id) FROM stdin;
3	\N	3	document	\N	\N	15	\N	\N	\N	\N	\N	\N	\N
4	\N	3	user	\N	\N	\N	\N	1	\N	\N	\N	\N	\N
\.


--
-- Data for Name: payload_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_migrations (id, name, batch, updated_at, created_at) FROM stdin;
1	20260205_035507_initial	1	2026-02-05 05:19:46.976+00	2026-02-05 05:19:46.976+00
2	20260205_040038_initial	1	2026-02-05 05:19:46.987+00	2026-02-05 05:19:46.987+00
3	20260205_051944_initial	1	2026-02-05 05:19:46.993+00	2026-02-05 05:19:46.993+00
4	dev	-1	2026-02-05 12:40:40.129+00	2026-02-05 05:45:55.292+00
\.


--
-- Data for Name: payload_preferences; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_preferences (id, key, value, updated_at, created_at) FROM stdin;
11	collection-posts	{"editViewType": "default"}	2026-02-05 06:02:35.771+00	2026-02-05 06:02:33.41+00
12	collection-categories	{}	2026-02-05 06:02:41.837+00	2026-02-05 06:02:41.837+00
14	nav	{"groups": {"Globals": {"open": true}}}	2026-02-05 06:02:48.838+00	2026-02-05 06:02:48.079+00
15	collection-users	{}	2026-02-05 06:02:57.121+00	2026-02-05 06:02:57.121+00
16	collection-pages	{"limit": 10, "editViewType": "default"}	2026-02-05 06:14:34.545+00	2026-02-05 06:06:21.436+00
18	global-footer	{"fields": {"navItems": {"collapsed": []}}, "editViewType": "default"}	2026-02-05 06:18:32.901+00	2026-02-05 06:18:19.206+00
19	global-header	{"fields": {"navItems": {"collapsed": ["6982d67ba3874645a608786c", "6982d6c4a3874645a6087870", "6982c2125b675955ca35c3c4"]}}, "editViewType": "default"}	2026-02-05 06:20:02.682+00	2026-02-05 06:18:44.549+00
13	collection-media	{"editViewType": "default"}	2026-02-05 06:23:44.349+00	2026-02-05 06:02:45.402+00
20	collection-redirects	{}	2026-02-05 06:33:50.957+00	2026-02-05 06:33:50.957+00
21	collection-forms	{}	2026-02-05 06:33:51.574+00	2026-02-05 06:33:51.574+00
22	collection-search	{}	2026-02-05 06:33:54.255+00	2026-02-05 06:33:54.254+00
17	collection-pages-2	{"fields": {"layout": {"collapsed": ["6982c6fa8be43a21d8c09c3c", "6982d1c03b35b33808415922", "6982cba781482f4a39dfb733", "6982d1ff95af8a311609ac1c"]}, "_index-1": {"tabIndex": 1}}}	2026-02-05 12:40:43.283+00	2026-02-05 06:14:39.58+00
\.


--
-- Data for Name: payload_preferences_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_preferences_rels (id, "order", parent_id, path, users_id) FROM stdin;
17	\N	11	user	1
18	\N	12	user	1
21	\N	14	user	1
22	\N	15	user	1
24	\N	16	user	1
28	\N	18	user	1
35	\N	19	user	1
40	\N	13	user	1
57	\N	20	user	1
58	\N	21	user	1
59	\N	22	user	1
61	\N	17	user	1
\.


--
-- Data for Name: posts_populated_authors; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.posts_populated_authors (_order, _parent_id, id, name) FROM stdin;
\.


--
-- Data for Name: posts_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.posts_rels (id, "order", parent_id, path, posts_id, categories_id, users_id) FROM stdin;
7	1	2	relatedPosts	1	\N	\N
8	2	2	relatedPosts	3	\N	\N
9	1	2	authors	\N	\N	2
10	1	3	relatedPosts	1	\N	\N
11	2	3	relatedPosts	2	\N	\N
12	1	3	authors	\N	\N	2
13	1	1	relatedPosts	2	\N	\N
14	2	1	relatedPosts	3	\N	\N
15	1	1	authors	\N	\N	2
\.


--
-- Data for Name: redirects_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.redirects_rels (id, "order", parent_id, path, pages_id, posts_id) FROM stdin;
\.


--
-- Data for Name: search_categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.search_categories (_order, _parent_id, id, relation_to, category_i_d, title) FROM stdin;
\.


--
-- Data for Name: search_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.search_rels (id, "order", parent_id, path, posts_id) FROM stdin;
\.


--
-- Data for Name: users_sessions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users_sessions (_order, _parent_id, id, created_at, expires_at) FROM stdin;
1	1	4216a2fc-9e97-4033-af58-7b70a69136c2	2026-02-05 12:40:31.188+00	2026-02-05 14:40:31.188+00
\.


--
-- Name: _pages_v_blocks_archive_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_archive_id_seq', 1, false);


--
-- Name: _pages_v_blocks_content_columns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_content_columns_id_seq', 1, false);


--
-- Name: _pages_v_blocks_content_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_content_id_seq', 1, false);


--
-- Name: _pages_v_blocks_cta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_cta_id_seq', 1, false);


--
-- Name: _pages_v_blocks_cta_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_cta_links_id_seq', 1, false);


--
-- Name: _pages_v_blocks_featured_project_features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_featured_project_features_id_seq', 12, true);


--
-- Name: _pages_v_blocks_featured_project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_featured_project_id_seq', 8, true);


--
-- Name: _pages_v_blocks_form_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_form_block_id_seq', 1, false);


--
-- Name: _pages_v_blocks_media_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_media_block_id_seq', 1, false);


--
-- Name: _pages_v_blocks_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_team_id_seq', 8, true);


--
-- Name: _pages_v_blocks_team_leaders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_team_leaders_id_seq', 32, true);


--
-- Name: _pages_v_blocks_thesis_features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_thesis_features_id_seq', 9, true);


--
-- Name: _pages_v_blocks_thesis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_thesis_id_seq', 8, true);


--
-- Name: _pages_v_blocks_ventures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_ventures_id_seq', 8, true);


--
-- Name: _pages_v_blocks_ventures_ventures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_ventures_ventures_id_seq', 24, true);


--
-- Name: _pages_v_blocks_what_we_do_columns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_what_we_do_columns_id_seq', 18, true);


--
-- Name: _pages_v_blocks_what_we_do_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_what_we_do_id_seq', 8, true);


--
-- Name: _pages_v_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_id_seq', 42, true);


--
-- Name: _pages_v_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_rels_id_seq', 1, false);


--
-- Name: _pages_v_version_hero_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_version_hero_links_id_seq', 8, true);


--
-- Name: _posts_v_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._posts_v_id_seq', 9, true);


--
-- Name: _posts_v_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._posts_v_rels_id_seq', 1, false);


--
-- Name: _posts_v_version_populated_authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._posts_v_version_populated_authors_id_seq', 1, false);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, false);


--
-- Name: footer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.footer_id_seq', 1, false);


--
-- Name: footer_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.footer_rels_id_seq', 1, false);


--
-- Name: form_submissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.form_submissions_id_seq', 1, false);


--
-- Name: forms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.forms_id_seq', 1, false);


--
-- Name: header_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.header_id_seq', 1, false);


--
-- Name: header_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.header_rels_id_seq', 1, false);


--
-- Name: media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.media_id_seq', 1, false);


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_id_seq', 1, false);


--
-- Name: pages_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_rels_id_seq', 1, false);


--
-- Name: payload_folders_folder_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_folders_folder_type_id_seq', 1, false);


--
-- Name: payload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_folders_id_seq', 1, false);


--
-- Name: payload_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_jobs_id_seq', 1, false);


--
-- Name: payload_kv_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_kv_id_seq', 1, false);


--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_locked_documents_id_seq', 3, true);


--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_locked_documents_rels_id_seq', 4, true);


--
-- Name: payload_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_migrations_id_seq', 4, true);


--
-- Name: payload_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_preferences_id_seq', 22, true);


--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_preferences_rels_id_seq', 61, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.posts_id_seq', 1, false);


--
-- Name: posts_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.posts_rels_id_seq', 1, false);


--
-- Name: redirects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.redirects_id_seq', 1, false);


--
-- Name: redirects_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.redirects_rels_id_seq', 1, false);


--
-- Name: search_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.search_id_seq', 1, false);


--
-- Name: search_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.search_rels_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

\unrestrict OiP96olBvfVDeRGbB6YNuHMbKHXwQANYeQlxzmHTha0XTtyoAb6hn2gdFAOHkE8

