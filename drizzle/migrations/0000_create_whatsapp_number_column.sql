ALTER TABLE public.card_profile ADD COLUMN whatsapp_number text;

-- Existing cards used phone for WhatsApp; carry it over so links keep working.
UPDATE public.card_profile SET whatsapp_number = phone WHERE (whatsapp_number IS NULL OR whatsapp_number = '') AND phone IS NOT NULL AND phone <> '';

COMMENT ON COLUMN public.card_profile.whatsapp_number IS 'WhatsApp number used for wa.me links; phone remains the call/SMS number';