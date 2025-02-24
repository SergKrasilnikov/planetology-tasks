## TempGradient - Model the Thermal Gradient for Mars


## Basics
___
- **Thermal Gradient**: The rate of temperature change with depth in the soil.

- **Martian Soil Properties**:
  - Thermal conductivity (k): ~0.02–0.08 W/m·K (lower than Earth due to thin atmosphere).
  - Heat capacity (C): ~800 J/kg·K.
  - Density (ρ): ~1,500 kg/m³.

- Surface Temperature: Varies from -125°C to 20°C depending on location and time.

## Model the Thermal Gradient
___
The temperature at depth *z* can be modeled using the **heat diffusion equation**:

$$T(z,t) = T<sub>avg</sub> + A * e^{-z/d}*$\cos$(2$\pi$t/P - z/d) $$

where:
- $$T(z,t)$$: Temperature at depth zz and time tt.
- $$T<sub>avg</sub>$$: Average surface temperature.
- $$A$$: Amplitude of surface temperature variation.
- $$d$$: Skin depth $$(d = \sqrt{2k/wpC})$$ $$w = 2$\pi$t/P$$
- $$P$$: Period of temperature variation (e.g., 1 Martian day = 24.65 hours).

## How to cite:
___
```

```
