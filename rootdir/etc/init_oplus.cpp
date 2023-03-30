/*
 * Copyright (C) 2022-2023 The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

#include <android-base/logging.h>
#include <android-base/properties.h>

#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>

using android::base::GetProperty;

/*
 * SetProperty does not allow updating read only properties and as a result
 * does not work for our use case. Write "OverrideProperty" to do practically
 * the same thing as "SetProperty" without this restriction.
 */
void OverrideProperty(const char* name, const char* value) {
    size_t valuelen = strlen(value);

    prop_info* pi = (prop_info*)__system_property_find(name);
    if (pi != nullptr) {
        __system_property_update(pi, value, valuelen);
    } else {
        __system_property_add(name, strlen(name), value, valuelen);
    }
}

/*
 * Only for read-only properties. Properties that can be wrote to more
 * than once should be set in a typical init script (e.g. init.oplus.hw.rc)
 * after the original property has been set.
 */
void vendor_load_properties() {
    auto device = GetProperty("ro.product.product.device", "");
    auto soft = GetProperty("ro.separate.soft", "");

    if (soft == "216AC") { // Global
        OverrideProperty("ro.product.product.model", "RMX3301");
        OverrideProperty("ro.product.vendor.device", "RED8ACL1");
    } else if (soft == "21631") { // CN
        OverrideProperty("ro.product.product.model", "RMX3300");
        OverrideProperty("ro.product.vendor.device", "RE547F");
    } else {
        LOG(ERROR) << "Unexpected project name: " << soft;
    }
}

