use std::collections::HashMap;
use std::sync::OnceLock;
use wasm_bindgen::prelude::*;

static DATA: OnceLock<HashMap<String, f64>> = OnceLock::new();

#[wasm_bindgen]
pub fn initialise_with_handlers() {
	DATA.get_or_init(|| HashMap::new());
}
