defmodule MapLibre.Styles do
  @moduledoc false

  @dark %{
    "version" => 8,
    "sources" => %{
      "protomaps" => %{
        "type" => "vector",
        "tiles" => ["https://demo.buoy.fish/mvtiles/world/{z}/{x}/{y}.mvt"],
        "maxzoom" => 15
      }
    },
    "glyphs" => "https://cdn.protomaps.com/fonts/pbf/{fontstack}/{range}.pbf",
    "layers" => [
      %{
        "id" => "background",
        "paint" => %{"background-color" => "#2A2A2A"},
        "type" => "background"
      },
      %{
        "id" => "earth",
        "paint" => %{"fill-color" => "#2A2A2A"},
        "source" => "protomaps",
        "source-layer" => "earth",
        "type" => "fill"
      },
      %{
        "filter" => [
          "any",
          ["==", "pmap:kind", "park"],
          ["==", "landuse", "cemetery"]
        ],
        "id" => "landuse_park",
        "paint" => %{"fill-color" => "#2A2A2A"},
        "source" => "protomaps",
        "source-layer" => "landuse",
        "type" => "fill"
      },
      %{
        "filter" => ["any", ["==", "pmap:kind", "hospital"]],
        "id" => "landuse_hospital",
        "paint" => %{"fill-color" => "#2A2A2A"},
        "source" => "protomaps",
        "source-layer" => "landuse",
        "type" => "fill"
      },
      %{
        "filter" => ["any", ["==", "pmap:kind", "industrial"]],
        "id" => "landuse_industrial",
        "paint" => %{"fill-color" => "#2A2A2A"},
        "source" => "protomaps",
        "source-layer" => "landuse",
        "type" => "fill"
      },
      %{
        "filter" => ["any", ["==", "pmap:kind", "school"]],
        "id" => "landuse_school",
        "paint" => %{"fill-color" => "#2A2A2A"},
        "source" => "protomaps",
        "source-layer" => "landuse",
        "type" => "fill"
      },
      %{
        "filter" => [
          "any",
          ["==", "natural", "wood"],
          ["==", "leisure", "nature_reserve"],
          ["==", "landuse", "forest"]
        ],
        "id" => "natural_wood",
        "paint" => %{"fill-color" => "#2A2A2A"},
        "source" => "protomaps",
        "source-layer" => "natural",
        "type" => "fill"
      },
      %{
        "filter" => ["any", ["==", "highway", "footway"]],
        "id" => "landuse_pedestrian",
        "paint" => %{"fill-color" => "#2A2A2A"},
        "source" => "protomaps",
        "source-layer" => "landuse",
        "type" => "fill"
      },
      %{
        "filter" => ["==", "natural", "glacier"],
        "id" => "natural_glacier",
        "paint" => %{"fill-color" => "#2A2A2A"},
        "source" => "protomaps",
        "source-layer" => "natural",
        "type" => "fill"
      },
      %{
        "filter" => ["==", "natural", "sand"],
        "id" => "natural_sand",
        "paint" => %{"fill-color" => "#2A2A2A"},
        "source" => "protomaps",
        "source-layer" => "natural",
        "type" => "fill"
      },
      %{
        "filter" => ["==", "aeroway", "aerodrome"],
        "id" => "landuse_aerodrome",
        "paint" => %{"fill-color" => "#2A2A2A"},
        "source" => "protomaps",
        "source-layer" => "landuse",
        "type" => "fill"
      },
      %{
        "filter" => ["has", "aeroway"],
        "id" => "transit_runway",
        "paint" => %{"line-color" => "#2A2A2A", "line-width" => 6},
        "source" => "protomaps",
        "source-layer" => "transit",
        "type" => "line"
      },
      %{
        "filter" => [
          "any",
          ["==", "aeroway", "runway"],
          ["==", "area:aeroway", "runway"],
          ["==", "area:aeroway", "taxiway"]
        ],
        "id" => "landuse_runway",
        "paint" => %{"fill-color" => "#2A2A2A"},
        "source" => "protomaps",
        "source-layer" => "landuse",
        "type" => "fill"
      },
      %{
        "id" => "water",
        "paint" => %{"fill-color" => "#202020"},
        "source" => "protomaps",
        "source-layer" => "water",
        "type" => "fill"
      },
      %{
        "filter" => ["all", ["<", "pmap:level", 0], ["==", "pmap:kind", "other"]],
        "id" => "roads_tunnels_other",
        "paint" => %{
          "line-color" => "#3D3D3D",
          "line-dasharray" => [1, 1],
          "line-width" => [
            "interpolate",
            ["exponential", 1.6],
            ["zoom"],
            14,
            0,
            14.5,
            0.5,
            20,
            12
          ]
        },
        "source" => "protomaps",
        "source-layer" => "roads",
        "type" => "line"
      },
      %{
        "filter" => [
          "all",
          ["<", "pmap:level", 0],
          ["==", "pmap:kind", "minor_road"]
        ],
        "id" => "roads_tunnels_minor",
        "paint" => %{
          "line-color" => "#3D3D3D",
          "line-width" => [
            "interpolate",
            ["exponential", 1.6],
            ["zoom"],
            12,
            0,
            12.5,
            0.5,
            20,
            32
          ]
        },
        "source" => "protomaps",
        "source-layer" => "roads",
        "type" => "line"
      },
      %{
        "filter" => [
          "all",
          ["<", "pmap:level", 0],
          ["==", "pmap:kind", "medium_road"]
        ],
        "id" => "roads_tunnels_medium",
        "paint" => %{
          "line-color" => "#3D3D3D",
          "line-width" => [
            "interpolate",
            ["exponential", 1.6],
            ["zoom"],
            7,
            0,
            7.5,
            0.5,
            20,
            32
          ]
        },
        "source" => "protomaps",
        "source-layer" => "roads",
        "type" => "line"
      },
      %{
        "filter" => [
          "all",
          ["<", "pmap:level", 0],
          ["==", "pmap:kind", "major_road"]
        ],
        "id" => "roads_tunnels_major",
        "paint" => %{
          "line-color" => "#3D3D3D",
          "line-width" => [
            "interpolate",
            ["exponential", 1.6],
            ["zoom"],
            7,
            0,
            7.5,
            0.5,
            19,
            32
          ]
        },
        "source" => "protomaps",
        "source-layer" => "roads",
        "type" => "line"
      },
      %{
        "filter" => ["all", ["<", "pmap:level", 0], ["==", "pmap:kind", "highway"]],
        "id" => "roads_tunnels_highway",
        "paint" => %{
          "line-color" => "#3D3D3D",
          "line-width" => [
            "interpolate",
            ["exponential", 1.6],
            ["zoom"],
            3,
            0,
            3.5,
            0.5,
            18,
            32
          ]
        },
        "source" => "protomaps",
        "source-layer" => "roads",
        "type" => "line"
      },
      %{
        "filter" => ["==", ["get", "pmap:kind"], "waterway"],
        "id" => "physical_line_waterway",
        "paint" => %{"line-color" => "#202020", "line-width" => 0.5},
        "source" => "protomaps",
        "source-layer" => "physical_line",
        "type" => "line"
      },
      %{
        "filter" => ["all", ["==", "pmap:level", 0], ["==", "pmap:kind", "other"]],
        "id" => "roads_other",
        "paint" => %{
          "line-color" => "#3D3D3D",
          "line-dasharray" => [2, 1],
          "line-width" => [
            "interpolate",
            ["exponential", 1.6],
            ["zoom"],
            14,
            0,
            14.5,
            0.5,
            20,
            12
          ]
        },
        "source" => "protomaps",
        "source-layer" => "roads",
        "type" => "line"
      },
      %{
        "filter" => [
          "all",
          ["==", "pmap:level", 0],
          ["==", "pmap:kind", "minor_road"]
        ],
        "id" => "roads_minor",
        "paint" => %{
          "line-color" => "#3D3D3D",
          "line-width" => [
            "interpolate",
            ["exponential", 1.6],
            ["zoom"],
            12,
            0,
            12.5,
            0.5,
            20,
            32
          ]
        },
        "source" => "protomaps",
        "source-layer" => "roads",
        "type" => "line"
      },
      %{
        "filter" => [
          "all",
          ["==", "pmap:level", 0],
          ["==", "pmap:kind", "medium_road"]
        ],
        "id" => "roads_medium",
        "paint" => %{
          "line-color" => "#3D3D3D",
          "line-width" => [
            "interpolate",
            ["exponential", 1.6],
            ["zoom"],
            7,
            0,
            7.5,
            0.5,
            20,
            32
          ]
        },
        "source" => "protomaps",
        "source-layer" => "roads",
        "type" => "line"
      },
      %{
        "filter" => [
          "all",
          ["==", "pmap:level", 0],
          ["==", "pmap:kind", "major_road"]
        ],
        "id" => "roads_major",
        "paint" => %{
          "line-color" => "#3D3D3D",
          "line-width" => [
            "interpolate",
            ["exponential", 1.6],
            ["zoom"],
            7,
            0,
            7.5,
            0.5,
            19,
            32
          ]
        },
        "source" => "protomaps",
        "source-layer" => "roads",
        "type" => "line"
      },
      %{
        "filter" => ["all", ["==", "pmap:level", 0], ["==", "pmap:kind", "highway"]],
        "id" => "roads_highway",
        "paint" => %{
          "line-color" => "#3D3D3D",
          "line-width" => [
            "interpolate",
            ["exponential", 1.6],
            ["zoom"],
            3,
            0,
            3.5,
            0.5,
            18,
            32
          ]
        },
        "source" => "protomaps",
        "source-layer" => "roads",
        "type" => "line"
      },
      %{
        "filter" => ["all", ["==", "pmap:kind", "railway"]],
        "id" => "transit_railway",
        "paint" => %{"line-color" => "#3D3D3D", "line-width" => 2},
        "source" => "protomaps",
        "source-layer" => "transit",
        "type" => "line"
      },
      %{
        "filter" => ["all", ["==", "pmap:kind", "railway"]],
        "id" => "transit_railway_tracks",
        "paint" => %{
          "line-color" => "#3D3D3D",
          "line-dasharray" => [6, 10],
          "line-width" => 0.8
        },
        "source" => "protomaps",
        "source-layer" => "transit",
        "type" => "line"
      },
      %{
        "filter" => ["<=", "pmap:min_admin_level", 2],
        "id" => "boundaries_country",
        "paint" => %{"line-color" => "#696969", "line-width" => 1.5},
        "source" => "protomaps",
        "source-layer" => "boundaries",
        "type" => "line"
      },
      %{
        "filter" => [">", "pmap:min_admin_level", 2],
        "id" => "boundaries",
        "paint" => %{
          "line-color" => "#696969",
          "line-dasharray" => [1, 2],
          "line-width" => 1
        },
        "source" => "protomaps",
        "source-layer" => "boundaries",
        "type" => "line"
      },
      %{
        "filter" => ["all", [">", "pmap:level", 0], ["==", "pmap:kind", "other"]],
        "id" => "roads_bridges_other",
        "paint" => %{
          "line-color" => "#3D3D3D",
          "line-dasharray" => [2, 1],
          "line-width" => [
            "interpolate",
            ["exponential", 1.6],
            ["zoom"],
            14,
            0,
            14.5,
            0.5,
            20,
            12
          ]
        },
        "source" => "protomaps",
        "source-layer" => "roads",
        "type" => "line"
      },
      %{
        "filter" => [
          "all",
          [">", "pmap:level", 0],
          ["==", "pmap:kind", "minor_road"]
        ],
        "id" => "roads_bridges_minor",
        "paint" => %{
          "line-color" => "#3D3D3D",
          "line-width" => [
            "interpolate",
            ["exponential", 1.6],
            ["zoom"],
            12,
            0,
            12.5,
            0.5,
            20,
            32
          ]
        },
        "source" => "protomaps",
        "source-layer" => "roads",
        "type" => "line"
      },
      %{
        "filter" => [
          "all",
          [">", "pmap:level", 0],
          ["==", "pmap:kind", "medium_road"]
        ],
        "id" => "roads_bridges_medium",
        "paint" => %{
          "line-color" => "#3D3D3D",
          "line-width" => [
            "interpolate",
            ["exponential", 1.6],
            ["zoom"],
            7,
            0,
            7.5,
            0.5,
            20,
            32
          ]
        },
        "source" => "protomaps",
        "source-layer" => "roads",
        "type" => "line"
      },
      %{
        "filter" => [
          "all",
          [">", "pmap:level", 0],
          ["==", "pmap:kind", "major_road"]
        ],
        "id" => "roads_bridges_major",
        "paint" => %{
          "line-color" => "#3D3D3D",
          "line-width" => [
            "interpolate",
            ["exponential", 1.6],
            ["zoom"],
            7,
            0,
            7.5,
            0.5,
            19,
            32
          ]
        },
        "source" => "protomaps",
        "source-layer" => "roads",
        "type" => "line"
      },
      %{
        "filter" => ["all", [">", "pmap:level", 0], ["==", "pmap:kind", "highway"]],
        "id" => "roads_bridges_highway",
        "paint" => %{
          "line-color" => "#3D3D3D",
          "line-width" => [
            "interpolate",
            ["exponential", 1.6],
            ["zoom"],
            3,
            0,
            3.5,
            0.5,
            18,
            32
          ]
        },
        "source" => "protomaps",
        "source-layer" => "roads",
        "type" => "line"
      },
      %{
        "id" => "physical_line_waterway_label",
        "layout" => %{
          "symbol-placement" => "line",
          "text-field" => ["get", "name"],
          "text-font" => ["NotoSans-Regular"],
          "text-letter-spacing" => 0.3,
          "text-size" => 10
        },
        "minzoom" => 14,
        "paint" => %{
          "text-color" => "#6D6D6D",
          "text-halo-color" => "#151515",
          "text-halo-width" => 1
        },
        "source" => "protomaps",
        "source-layer" => "physical_line",
        "type" => "symbol"
      },
      %{
        "id" => "roads_labels",
        "layout" => %{
          "symbol-placement" => "line",
          "text-field" => ["get", "name"],
          "text-font" => ["NotoSans-Regular"],
          "text-size" => 12
        },
        "paint" => %{
          "text-color" => "#6D6D6D",
          "text-halo-color" => "#151515",
          "text-halo-width" => 2
        },
        "source" => "protomaps",
        "source-layer" => "roads",
        "type" => "symbol"
      },
      %{
        "id" => "mask",
        "paint" => %{"fill-color" => "#F3F3F1"},
        "source" => "protomaps",
        "source-layer" => "mask",
        "type" => "fill"
      },
      %{
        "filter" => ["any", ["==", "place", "sea"], ["==", "place", "ocean"]],
        "id" => "physical_point_ocean",
        "layout" => %{
          "text-field" => ["get", "name"],
          "text-font" => ["NotoSans-Regular"],
          "text-letter-spacing" => 0.2,
          "text-size" => 13
        },
        "paint" => %{"text-color" => "#6D6D6D"},
        "source" => "protomaps",
        "source-layer" => "physical_point",
        "type" => "symbol"
      },
      %{
        "filter" => ["==", "pmap:kind", "neighbourhood"],
        "id" => "places_subplace",
        "layout" => %{
          "text-field" => "{name:en}",
          "text-font" => ["NotoSans-Regular"],
          "text-size" => 10,
          "text-transform" => "uppercase"
        },
        "paint" => %{
          "text-color" => "#6D6D6D",
          "text-halo-color" => "#151515",
          "text-halo-width" => 0.5
        },
        "source" => "protomaps",
        "source-layer" => "places",
        "type" => "symbol"
      },
      %{
        "filter" => ["==", "pmap:kind", "city"],
        "id" => "places_city",
        "layout" => %{
          "text-field" => "{name:en}",
          "text-font" => ["NotoSans-Regular"],
          "text-radial-offset" => 0.2,
          "text-size" => ["step", ["get", "pmap:rank"], 0, 1, 12, 2, 10],
          "text-variable-anchor" => ["bottom-left"]
        },
        "paint" => %{
          "text-color" => "#6D6D6D",
          "text-halo-color" => "#151515",
          "text-halo-width" => 1
        },
        "source" => "protomaps",
        "source-layer" => "places",
        "type" => "symbol"
      },
      %{
        "filter" => ["==", "pmap:kind", "state"],
        "id" => "places_state",
        "layout" => %{
          "text-anchor" => "center",
          "text-field" => "{name:en}",
          "text-font" => ["NotoSans-Regular"],
          "text-letter-spacing" => 0.1,
          "text-radial-offset" => 0.2,
          "text-size" => 14,
          "text-transform" => "uppercase"
        },
        "paint" => %{
          "text-color" => "#6D6D6D",
          "text-halo-color" => "#151515",
          "text-halo-width" => 1
        },
        "source" => "protomaps",
        "source-layer" => "places",
        "type" => "symbol"
      },
      %{
        "filter" => ["==", "place", "country"],
        "id" => "places_country",
        "layout" => %{
          "text-field" => "{name:en}",
          "text-font" => ["NotoSans-Regular"],
          "text-size" => 10
        },
        "paint" => %{
          "text-color" => "#6D6D6D",
          "text-halo-color" => "#151515",
          "text-halo-width" => 1
        },
        "source" => "protomaps",
        "source-layer" => "places",
        "type" => "symbol"
      }
    ]
  }

  @default %{
    "bearing" => 0,
    "center" => [17.65431710431244, 32.954120326746775],
    "glyphs" => "https://demotiles.maplibre.org/font/{fontstack}/{range}.pbf",
    "id" => "43f36e14-e3f5-43c1-84c0-50a9c80dc5c7",
    "layers" => [
      %{
        "filter" => ["all"],
        "id" => "background",
        "layout" => %{"visibility" => "visible"},
        "maxzoom" => 24,
        "paint" => %{"background-color" => "#D8F2FF"},
        "type" => "background"
      },
      %{
        "filter" => ["all"],
        "id" => "coastline",
        "layout" => %{
          "line-cap" => "round",
          "line-join" => "round",
          "visibility" => "visible"
        },
        "maxzoom" => 24,
        "minzoom" => 0,
        "paint" => %{
          "line-blur" => 0.5,
          "line-color" => "#198EC8",
          "line-width" => %{"stops" => [[0, 2], [6, 6], [14, 9], [22, 18]]}
        },
        "source" => "maplibre",
        "source-layer" => "countries",
        "type" => "line"
      },
      %{
        "filter" => ["all"],
        "id" => "countries-fill",
        "layout" => %{"visibility" => "visible"},
        "maxzoom" => 24,
        "paint" => %{
          "fill-color" => [
            "match",
            ["get", "ADM0_A3"],
            [
              "ARM",
              "ATG",
              "AUS",
              "BTN",
              "CAN",
              "COG",
              "CZE",
              "GHA",
              "GIN",
              "HTI",
              "ISL",
              "JOR",
              "KHM",
              "KOR",
              "LVA",
              "MLT",
              "MNE",
              "MOZ",
              "PER",
              "SAH",
              "SGP",
              "SLV",
              "SOM",
              "TJK",
              "TUV",
              "UKR",
              "WSM"
            ],
            "#D6C7FF",
            [
              "AZE",
              "BGD",
              "CHL",
              "CMR",
              "CSI",
              "DEU",
              "DJI",
              "GUY",
              "HUN",
              "IOA",
              "JAM",
              "LBN",
              "LBY",
              "LSO",
              "MDG",
              "MKD",
              "MNG",
              "MRT",
              "NIU",
              "NZL",
              "PCN",
              "PYF",
              "SAU",
              "SHN",
              "STP",
              "TTO",
              "UGA",
              "UZB",
              "ZMB"
            ],
            "#EBCA8A",
            [
              "AGO",
              "ASM",
              "ATF",
              "BDI",
              "BFA",
              "BGR",
              "BLZ",
              "BRA",
              "CHN",
              "CRI",
              "ESP",
              "HKG",
              "HRV",
              "IDN",
              "IRN",
              "ISR",
              "KNA",
              "LBR",
              "LCA",
              "MAC",
              "MUS",
              "NOR",
              "PLW",
              "POL",
              "PRI",
              "SDN",
              "TUN",
              "UMI",
              "USA",
              "USG",
              "VIR",
              "VUT"
            ],
            "#C1E599",
            [
              "ARE",
              "ARG",
              "BHS",
              "CIV",
              "CLP",
              "DMA",
              "ETH",
              "GAB",
              "GRD",
              "HMD",
              "IND",
              "IOT",
              "IRL",
              "IRQ",
              "ITA",
              "KOS",
              "LUX",
              "MEX",
              "NAM",
              "NER",
              "PHL",
              "PRT",
              "RUS",
              "SEN",
              "SUR",
              "TZA",
              "VAT"
            ],
            "#E7E58F",
            [
              "AUT",
              "BEL",
              "BHR",
              "BMU",
              "BRB",
              "CYN",
              "DZA",
              "EST",
              "FLK",
              "GMB",
              "GUM",
              "HND",
              "JEY",
              "KGZ",
              "LIE",
              "MAF",
              "MDA",
              "NGA",
              "NRU",
              "SLB",
              "SOL",
              "SRB",
              "SWZ",
              "THA",
              "TUR",
              "VEN",
              "VGB"
            ],
            "#98DDA1",
            [
              "AIA",
              "BIH",
              "BLM",
              "BRN",
              "CAF",
              "CHE",
              "COM",
              "CPV",
              "CUB",
              "ECU",
              "ESB",
              "FSM",
              "GAZ",
              "GBR",
              "GEO",
              "KEN",
              "LTU",
              "MAR",
              "MCO",
              "MDV",
              "NFK",
              "NPL",
              "PNG",
              "PRY",
              "QAT",
              "SLE",
              "SPM",
              "SYC",
              "TCA",
              "TKM",
              "TLS",
              "VNM",
              "WEB",
              "WSB",
              "YEM",
              "ZWE"
            ],
            "#83D5F4",
            [
              "ABW",
              "ALB",
              "AND",
              "ATC",
              "BOL",
              "COD",
              "CUW",
              "CYM",
              "CYP",
              "EGY",
              "FJI",
              "GGY",
              "IMN",
              "KAB",
              "KAZ",
              "KWT",
              "LAO",
              "MLI",
              "MNP",
              "MSR",
              "MYS",
              "NIC",
              "NLD",
              "PAK",
              "PAN",
              "PRK",
              "ROU",
              "SGS",
              "SVN",
              "SWE",
              "TGO",
              "TWN",
              "VCT",
              "ZAF"
            ],
            "#B1BBF9",
            ["ATA", "GRL"],
            "#FFFFFF",
            "#EAB38F"
          ]
        },
        "source" => "maplibre",
        "source-layer" => "countries",
        "type" => "fill"
      },
      %{
        "id" => "countries-boundary",
        "layout" => %{
          "line-cap" => "round",
          "line-join" => "round",
          "visibility" => "visible"
        },
        "maxzoom" => 24,
        "paint" => %{
          "line-color" => "rgba(255, 255, 255, 1)",
          "line-opacity" => %{"stops" => [[3, 0.5], [6, 1]]},
          "line-width" => %{"stops" => [[1, 1], [6, 2], [14, 6], [22, 12]]}
        },
        "source" => "maplibre",
        "source-layer" => "countries",
        "type" => "line"
      },
      %{
        "filter" => ["all", ["!=", "name", "International Date Line"]],
        "id" => "geolines",
        "layout" => %{"visibility" => "visible"},
        "maxzoom" => 24,
        "paint" => %{
          "line-color" => "#1077B0",
          "line-dasharray" => [3, 3],
          "line-opacity" => 1
        },
        "source" => "maplibre",
        "source-layer" => "geolines",
        "type" => "line"
      },
      %{
        "filter" => ["all", ["!=", "name", "International Date Line"]],
        "id" => "geolines-label",
        "layout" => %{
          "symbol-placement" => "line",
          "text-field" => "{name}",
          "text-font" => ["Open Sans Semibold"],
          "text-size" => %{"stops" => [[2, 12], [6, 16]]},
          "visibility" => "visible"
        },
        "maxzoom" => 24,
        "minzoom" => 1,
        "paint" => %{
          "text-color" => "#1077B0",
          "text-halo-blur" => 1,
          "text-halo-color" => "rgba(255, 255, 255, 1)",
          "text-halo-width" => 1
        },
        "source" => "maplibre",
        "source-layer" => "geolines",
        "type" => "symbol"
      },
      %{
        "filter" => ["all"],
        "id" => "countries-label",
        "layout" => %{
          "text-field" => %{"stops" => [[2, "{ABBREV}"], [4, "{NAME}"]]},
          "text-font" => ["Open Sans Semibold"],
          "text-max-width" => 10,
          "text-size" => %{"stops" => [[2, 10], [4, 12], [6, 16]]},
          "text-transform" => %{"stops" => [[0, "uppercase"], [2, "none"]]},
          "visibility" => "visible"
        },
        "maxzoom" => 24,
        "minzoom" => 2,
        "paint" => %{
          "text-color" => "rgba(8, 37, 77, 1)",
          "text-halo-blur" => %{"stops" => [[2, 0.2], [6, 0]]},
          "text-halo-color" => "rgba(255, 255, 255, 1)",
          "text-halo-width" => %{"stops" => [[2, 1], [6, 1.6]]}
        },
        "source" => "maplibre",
        "source-layer" => "centroids",
        "type" => "symbol"
      },
      %{
        "id" => "crimea-fill",
        "paint" => %{"fill-color" => "#D6C7FF"},
        "source" => "crimea",
        "type" => "fill"
      }
    ],
    "metadata" => %{
      "maptiler:copyright" =>
        "This style was generated on MapTiler Cloud. Usage is governed by the license terms in https://github.com/maplibre/demotiles/blob/gh-pages/LICENSE",
      "openmaptiles:version" => "3.x"
    },
    "name" => "MapLibre",
    "pitch" => 0,
    "sources" => %{
      "crimea" => %{
        "data" => %{
          "geometry" => %{
            "coordinates" => [
              [
                [34.00905273547181, 46.55925987559425],
                [33.64325260204026, 46.34533545368038],
                [33.628682598560204, 46.12569762665683],
                [33.64292861730951, 46.10476396128129],
                [33.648473474905984, 46.09033047763651],
                [33.63876482059936, 46.077976784785335],
                [33.62782672238245, 46.06747935719011],
                [33.62911357645072, 46.05708111413949],
                [33.642686868727424, 46.02192963417187],
                [33.6429723910654, 46.01521185644708],
                [33.636224138774026, 46.006705833212465],
                [33.63052626465907, 45.99692992186792],
                [33.63193836679693, 45.988472992911284],
                [33.64276684834442, 45.984575360297384],
                [33.646928693041986, 45.97981936210982],
                [33.638745893564305, 45.96829769147004],
                [33.61958133326394, 45.951176418494185],
                [33.63181380398527, 45.9445404758078],
                [33.638921676216, 45.94737012930554],
                [33.64561542516918, 45.95403251372139],
                [33.65666403976448, 45.95687114427736],
                [33.6825817382811, 45.95878100879199],
                [33.738791807037614, 45.94836945227263],
                [33.758180142697, 45.94072970008301],
                [33.77735917288169, 45.92923970233858],
                [33.75927796793485, 45.92241179584471],
                [33.72529865009221, 45.91587363154565],
                [33.70875012326826, 45.91008760988058],
                [33.69378857293381, 45.91480850795665],
                [33.69092650243843, 45.89657370898402],
                [33.693592356906805, 45.87271465766318],
                [33.69226765972388, 45.86041392418218],
                [33.6704813511748, 45.8584273836251],
                [33.65936345808916, 45.85944682601249],
                [33.653870582376726, 45.86425922279372],
                [33.65107345584843, 45.87089907254003],
                [33.63067378180233, 45.88040685247182],
                [33.61945300059696, 45.88147266102649],
                [33.60987421595539, 45.88048951126686],
                [33.59906957603934, 45.877610457390375],
                [33.57828877687868, 45.86810261756233],
                [33.55357394560386, 45.84700625141778],
                [33.530220674480375, 45.84221983655459],
                [33.5192297395441, 45.84121682367507],
                [33.50832088442496, 45.84313067048083],
                [33.48901101848409, 45.85268298292175],
                [33.482152996405716, 45.854578171799005],
                [33.46719955896293, 45.849912739405056],
                [33.42447496599681, 45.83075886348303],
                [33.40940172404095, 45.82691953557702],
                [33.37918350072067, 45.802867525073566],
                [33.37362145339398, 45.79619281922518],
                [33.33805543634864, 45.78577808972071],
                [33.26498872665803, 45.75410774187094],
                [33.22887541283427, 45.75131270772724],
                [33.19548267281132, 45.7644887297206],
                [33.1789202379222, 45.78010311364778],
                [33.1688456078636, 45.78470227904205],
                [33.161012432811674, 45.77921593899549],
                [33.15951585299757, 45.76864464913777],
                [33.165962301438725, 45.762685940125465],
                [33.1750888126426, 45.759218220695715],
                [33.181464829753, 45.75490447884948],
                [33.17613930782352, 45.7437961960276],
                [33.16369168844906, 45.735912015025065],
                [32.93692665480876, 45.662114646778264],
                [32.86839112407645, 45.63044340698664],
                [32.83803944575723, 45.60834075026611],
                [32.82702772424804, 45.59576101516498],
                [32.82433467080986, 45.58705137380335],
                [32.82563941622885, 45.579605763895614],
                [32.82993674258438, 45.56978311819469],
                [32.82851940940563, 45.56227808675749],
                [32.813310142795274, 45.55930933158257],
                [32.80213583657516, 45.560145780074464],
                [32.78258622159436, 45.565158335073846],
                [32.77333922465823, 45.56689313356526],
                [32.758306734735356, 45.565030173463356],
                [32.750177256846115, 45.55943726334968],
                [32.74340732630185, 45.55261895849793],
                [32.73524549539499, 45.54598788110354],
                [32.72031700779701, 45.53735927760957],
                [32.70536040418847, 45.53169142131733],
                [32.68589438933773, 45.52663379187257],
                [32.66370583186284, 45.52563107058867],
                [32.64312077736798, 45.52188979044979],
                [32.525284074162556, 45.45838108691365],
                [32.49490411219156, 45.43524910229854],
                [32.48107654411925, 45.408986638827514],
                [32.48514589713025, 45.39458067125969],
                [32.51256939517424, 45.34060655033625],
                [32.535915460470335, 45.33777248012882],
                [32.57027153843481, 45.32510892683359],
                [32.590830644991826, 45.32038723212662],
                [32.66380378113439, 45.320421746458976],
                [32.67760722618917, 45.32609231279554],
                [32.71316246802607, 45.353283572618125],
                [32.72817188836078, 45.36074681043402],
                [32.750518060251466, 45.36371725645313],
                [32.89973931692998, 45.35412322462227],
                [32.941197846443885, 45.34245505845169],
                [32.97701667405008, 45.32596743563991],
                [33.04296090827762, 45.2853982930032],
                [33.05274355585479, 45.28154273654923],
                [33.06850284417635, 45.27703461892352],
                [33.07825272648239, 45.272210805127315],
                [33.089426322403455, 45.25656353201492],
                [33.09897492343546, 45.247820101667884],
                [33.12384611720435, 45.238235755071685],
                [33.15767197859745, 45.20755227709648],
                [33.172959979330074, 45.19681657531794],
                [33.21837666514142, 45.187878368659824],
                [33.24017433636709, 45.180191106261134],
                [33.248571989896675, 45.16588271012458],
                [33.259649216030766, 45.155918961282026],
                [33.28309785485047, 45.16064860772312],
                [33.31767999550894, 45.17535522412791],
                [33.35458473323109, 45.18598673360148],
                [33.39725661527919, 45.18973663076909],
                [33.41344561756824, 45.18490731877088],
                [33.468468576977216, 45.149132412229676],
                [33.537128652906205, 45.11719769268973],
                [33.56161328289443, 45.094099022711475],
                [33.57837628774928, 45.053145935448015],
                [33.58247744978442, 45.027377243150454],
                [33.5851414316958, 45.01816461606674],
                [33.6031021265521, 44.993103583251695],
                [33.605922209331794, 44.986905272229734],
                [33.60843524291815, 44.97039962759274],
                [33.61943161357851, 44.93184946652454],
                [33.619484500808824, 44.90819321920554],
                [33.61549738593425, 44.88894092276257],
                [33.608561183117274, 44.871288478948514],
                [33.59889474705494, 44.859790298912856],
                [33.55904244709464, 44.850057575124595],
                [33.54667558363471, 44.83724531175508],
                [33.53701832136994, 44.81871953508235],
                [33.5303157846202, 44.798338017069625],
                [33.5249116915937, 44.78918633101301],
                [33.51669091675143, 44.784809980590666],
                [33.524785531609865, 44.77183212449111],
                [33.5302902535075, 44.75724515985675],
                [33.53710734694323, 44.73034290771247],
                [33.54650992495621, 44.70989226909535],
                [33.5481286806762, 44.699106546699085],
                [33.543995566510915, 44.68230506537358],
                [33.53580273994743, 44.6726082589706],
                [33.52337411931097, 44.661863083605255],
                [33.515320778874354, 44.6491266698327],
                [33.516377841582795, 44.63464990118433],
                [33.52466971637648, 44.62863961572572],
                [33.557474298027785, 44.62473000923737],
                [33.5710648827386, 44.620853511273225],
                [33.55105839203679, 44.61506440493406],
                [33.499905706797676, 44.61452599304897],
                [33.48451102966331, 44.60992438254493],
                [33.47658499621011, 44.60714391514574],
                [33.46705078205747, 44.60616254193252],
                [33.44476599234898, 44.607062134677875],
                [33.4353466482458, 44.60509936890821],
                [33.413591053005575, 44.593500212748125],
                [33.40543527945235, 44.59055535193136],
                [33.37510958624222, 44.58564691897425],
                [33.37074452434078, 44.58851022190515],
                [33.372237834990756, 44.576810695127364],
                [33.37913003799301, 44.56412673079859],
                [33.48759131590526, 44.51024086451031],
                [33.50011215135888, 44.50041002882833],
                [33.517917009115365, 44.49074142372788],
                [33.53836387802215, 44.49164280212756],
                [33.56041892763031, 44.4966411022441],
                [33.57822378538677, 44.497542389459795],
                [33.59062975079095, 44.48975808594983],
                [33.619577003408466, 44.46229988129974],
                [33.62635433636015, 44.45336293328907],
                [33.63175322871038, 44.434828756313124],
                [33.645537634715026, 44.42498521035591],
                [33.721007257593925, 44.39946630464436],
                [33.74168386660085, 44.39560878121904],
                [33.80727466517129, 44.39454176175843],
                [33.81841706002561, 44.39552670349164],
                [33.83909366903248, 44.40143600575672],
                [33.85149963444792, 44.40143600575945],
                [33.91467816197718, 44.38387049706651],
                [33.938111652185, 44.38083293528811],
                [33.957065210440874, 44.38272116790142],
                [34.06614966692763, 44.42019923628979],
                [34.088893936836286, 44.42200415824283],
                [34.10279321289039, 44.42487551014821],
                [34.135933345669, 44.44163597968952],
                [34.14696087047267, 44.44959070749778],
                [34.16058918507403, 44.466287285335795],
                [34.170123399227776, 44.48186111741296],
                [34.182759104731986, 44.49267838558103],
                [34.22923417224524, 44.49949719774551],
                [34.24301857824986, 44.50744404277697],
                [34.263903954150294, 44.53186886058606],
                [34.26631622520165, 44.53555362837611],
                [34.26631622520165, 44.54153064468656],
                [34.27033667695244, 44.545378535987936],
                [34.2757355693048, 44.54644280144541],
                [34.285384653508004, 44.54562413743594],
                [34.299973149863405, 44.54554227040174],
                [34.32260254971496, 44.543577427039224],
                [34.3308731933177, 44.54546040325087],
                [34.340292537420794, 44.55798473830754],
                [34.38042135640006, 44.631830317636684],
                [34.41495238900856, 44.673669777529994],
                [34.424193090575585, 44.68239452736094],
                [34.42959198292681, 44.68884644523774],
                [34.469399167794535, 44.730194532749294],
                [34.47376422969597, 44.73011292571252],
                [34.47376422969597, 44.72635887754967],
                [34.475142670296464, 44.723502373339585],
                [34.499724861011515, 44.74292382044041],
                [34.532800295801195, 44.752620844929055],
                [34.61217550038418, 44.76534519537847],
                [34.65065696715081, 44.777088262503725],
                [34.72084256772871, 44.811080759265764],
                [34.756796893391225, 44.82094054159748],
                [34.82646979041766, 44.81208604604609],
                [34.84289620758207, 44.816893835303176],
                [34.856910353686715, 44.82373813182468],
                [34.889648317948144, 44.817871641692506],
                [34.90733830566026, 44.820886440346584],
                [34.922960632465504, 44.83050015059965],
                [34.92950822531711, 44.83652826953224],
                [34.94179932067178, 44.84019370922482],
                [34.95282684547897, 44.841415470643284],
                [34.98567967978991, 44.840275160795755],
                [35.0053224583441, 44.83538786296728],
                [35.017958163849414, 44.82219008824552],
                [35.02703289780189, 44.80890779582285],
                [35.037933245998005, 44.79869792240089],
                [35.08073333784134, 44.793525442788905],
                [35.1080207326404, 44.824553365795765],
                [35.130368105574235, 44.86879838545747],
                [35.15485200090768, 44.90071251697748],
                [35.17111229780758, 44.90746386008772],
                [35.21522068940149, 44.91421441031795],
                [35.233163085981715, 44.925728224907715],
                [35.25636688416236, 44.95896657181197],
                [35.27300098099195, 44.96690119386028],
                [35.29748487632534, 44.95605693543271],
                [35.30496087491386, 44.96121482614441],
                [35.315240372954605, 44.965711070514175],
                [35.31935217217088, 44.96941359539801],
                [35.36757236298112, 44.94362319076086],
                [35.36103086422793, 44.97364475976596],
                [35.362152264014156, 44.98593980935419],
                [35.374674561627444, 44.997835734117416],
                [35.389439658813274, 45.00180049366759],
                [35.42270785247763, 45.00087540764923],
                [35.43504325012745, 45.00470780964241],
                [35.43504325012745, 45.011446929213974],
                [35.40631957913584, 45.02015821022701],
                [35.40089948016896, 45.025046135473445],
                [35.39790908073891, 45.03482073400548],
                [35.40052568024015, 45.042216617888045],
                [35.40631957913584, 45.051328088783805],
                [35.40744097892215, 45.06294640963205],
                [35.41734667704213, 45.0708666385693],
                [35.469304867139925, 45.10068964922732],
                [35.5070260597534, 45.113341616151644],
                [35.54758335202416, 45.12019982412133],
                [35.59019654390909, 45.11993606213795],
                [35.63411803553862, 45.11439677872579],
                [35.70669729572677, 45.09480210570922],
                [35.771782422456766, 45.06572995732262],
                [35.78430472007, 45.057941041321754],
                [35.81250040352472, 45.031852200991295],
                [35.81941570220667, 45.021152336906454],
                [35.82763930064016, 44.99895365027004],
                [35.848198296721705, 44.99208088455586],
                [35.916977483614176, 45.00172895661731],
                [35.99360646900681, 44.997896355361604],
                [36.00893226608571, 45.00926125333629],
                [36.02539976723364, 45.03288661039673],
                [36.047827762958946, 45.048074065419456],
                [36.078666257082034, 45.03883000769565],
                [36.079137312377895, 45.046610970582435],
                [36.135020401727616, 45.02125162210126],
                [36.2241716847341, 45.00751061631556],
                [36.24398308095806, 45.011474706353084],
                [36.24828178013877, 45.01649549321965],
                [36.25332807917695, 45.03247980324494],
                [36.25743987839326, 45.03842324279259],
                [36.267158676549116, 45.043573724415154],
                [36.2783726744118, 45.04555455542638],
                [36.36740852558336, 45.04833265291825],
                [36.44029951169139, 45.06787222615526],
                [36.45375630913995, 45.07631970334319],
                [36.455251508854985, 45.09202341204062],
                [36.44142091149291, 45.10709638287736],
                [36.41432041665814, 45.12872568311289],
                [36.40852651776157, 45.149160473330085],
                [36.409997342308856, 45.171615955386955],
                [36.418312796420764, 45.23001671705953],
                [36.42672329481775, 45.25186253492981],
                [36.43756477765089, 45.27227491599612],
                [36.4497132753354, 45.28542626329343],
                [36.45905827355429, 45.28753019598713],
                [36.4814862692796, 45.28845064200263],
                [36.4909554290368, 45.29213135137758],
                [36.49637552800283, 45.300940007322055],
                [36.49394582846682, 45.305015191082816],
                [36.48871262946426, 45.30935296803605],
                [36.48460083024801, 45.315924724862185],
                [36.489647129296515, 45.336413860372005],
                [36.502169426909745, 45.34731734941451],
                [36.52104632331191, 45.35033842661815],
                [36.544281237819945, 45.34731734942025],
                [36.57455903204905, 45.33601971904315],
                [36.585399229982954, 45.333917585593355],
                [36.59810088537549, 45.334837278577254],
                [36.630808379142394, 45.34048649352954],
                [36.637536777859964, 45.3511265071989],
                [36.63099527910589, 45.3741073632589],
                [36.61359545390113, 45.40895280985421],
                [36.59845655678569, 45.421547717459106],
                [36.58331765967199, 45.42731944465129],
                [36.566309762912795, 45.42548305000767],
                [36.54836736633254, 45.41210180010589],
                [36.53285466928139, 45.4090840212946],
                [36.51565987255873, 45.41957994832251],
                [36.49117597722616, 45.44279525429408],
                [36.47043008117939, 45.4458112314303],
                [36.411182792482634, 45.43610707766504],
                [36.391371396258705, 45.43991025572652],
                [36.35959840231365, 45.45407156049933],
                [36.33960010612526, 45.45695583486963],
                [36.33025510790637, 45.454464879327446],
                [36.32053630976225, 45.44856480887407],
                [36.31156511147125, 45.4438443081136],
                [36.29885591389362, 45.442795254299995],
                [36.3072664122906, 45.46115087970253],
                [36.30016421364425, 45.47320989503609],
                [36.283717016779036, 45.476355300848866],
                [36.267082919949445, 45.46704963343626],
                [36.25213092279836, 45.46115087970253],
                [36.13681364478941, 45.46219959214511],
                [36.11700224855986, 45.45721803432335],
                [36.097003952371466, 45.441483909606006],
                [36.06952965760803, 45.43046741078453],
                [36.0655449627526, 45.42553028973455],
                [36.05134056545904, 45.39535242162091],
                [36.022557970944945, 45.368441166003805],
                [35.986486277818386, 45.362926059418186],
                [35.94723728529826, 45.372380198658874],
                [35.87220216002379, 45.404075760536614],
                [35.85388596351393, 45.413916621802144],
                [35.84715756479628, 45.426379251448395],
                [35.8524047739447, 45.44386497541683],
                [35.85950697259193, 45.45933624762881],
                [35.857824872912545, 45.469953901705],
                [35.83278027768503, 45.47087138287168],
                [35.8167068807486, 45.46392436820739],
                [35.80362388324218, 45.44963442058864],
                [35.79469305616038, 45.42980210462429],
                [35.791889556694684, 45.41209230278156],
                [35.772265060435046, 45.39214572935421],
                [35.767405661361295, 45.38873311015669],
                [35.75189296431793, 45.386632934388984],
                [35.7481549650407, 45.379938103368545],
                [35.746846665290036, 45.369960021421576],
                [35.74423006578874, 45.36076812520648],
                [35.71619507113218, 45.34040932557082],
                [35.69451467527287, 45.32989869277279],
                [35.51720627467216, 45.29506847418358],
                [35.48038698168983, 45.2979608697527],
                [35.33194061536096, 45.371562726652314],
                [35.04491375777232, 45.669545248704424],
                [35.00230056589345, 45.7290693869553],
                [34.70631294999043, 46.024929846739866],
                [34.35868883309806, 46.106725558140795],
                [34.00905273547181, 46.55925987559425]
              ]
            ],
            "type" => "Polygon"
          },
          "type" => "Feature"
        },
        "type" => "geojson"
      },
      "maplibre" => %{
        "type" => "vector",
        "url" => "https://demotiles.maplibre.org/tiles/tiles.json"
      }
    },
    "version" => 8,
    "zoom" => 0.8619833357855968
  }

  def style(:default, _key), do: @default
  def style(:street, key), do: street(key)
  def style(:terrain, key), do: terrain(key)
  def style(:dark, _key), do: @dark

  def style(style, _key),
    do:
      raise(
        ArgumentError,
        "unknown style #{inspect(style)}, the available styles are :default, :terrain and :street"
      )

  defp street(maptiler_key) do
    %{
      "bearing" => 0,
      "center" => [0, 0],
      "glyphs" => "https://api.maptiler.com/fonts/{fontstack}/{range}.pbf?key=#{maptiler_key}",
      "id" => "streets",
      "layers" => [
        %{
          "id" => "background",
          "layout" => %{"visibility" => "visible"},
          "paint" => %{
            "background-color" => %{
              "stops" => [
                [6, "rgba(252, 247, 229, 1)"],
                [10, "rgba(252, 247, 229, 1)"],
                [14, "rgba(246, 241, 229, 1)"],
                [15, "rgba(246, 241, 229, 1)"]
              ]
            }
          },
          "type" => "background"
        },
        %{
          "filter" => ["all", ["==", "class", "crop"]],
          "id" => "landcover_cropland",
          "layout" => %{"visibility" => "visible"},
          "paint" => %{
            "fill-color" => "rgba(243, 235, 195, 1)",
            "fill-opacity" => %{"base" => 1, "stops" => [[4, 1], [8, 0]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "globallandcover",
          "type" => "fill"
        },
        %{
          "filter" => ["all", ["==", "class", "grass"]],
          "id" => "landcover_grassland",
          "paint" => %{
            "fill-color" => "rgba(226, 236, 197, 1)",
            "fill-opacity" => %{"base" => 1, "stops" => [[4, 1], [8, 0]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "globallandcover",
          "type" => "fill"
        },
        %{
          "filter" => ["all", ["==", "class", "scrub"]],
          "id" => "landcover_scrubland",
          "paint" => %{
            "fill-color" => "rgba(199, 230, 179, 1)",
            "fill-opacity" => %{"base" => 1, "stops" => [[4, 1], [8, 0]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "globallandcover",
          "type" => "fill"
        },
        %{
          "filter" => ["all", ["==", "class", "tree"]],
          "id" => "landcover_treeland",
          "paint" => %{
            "fill-color" => "rgba(190, 222, 173, 1)",
            "fill-opacity" => %{"base" => 1, "stops" => [[4, 1], [8, 0]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "globallandcover",
          "type" => "fill"
        },
        %{
          "filter" => ["all", ["==", "class", "forest"]],
          "id" => "landcover_forestland",
          "paint" => %{
            "fill-color" => "rgba(171, 217, 170, 1)",
            "fill-opacity" => %{"base" => 1, "stops" => [[4, 1], [8, 0]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "globallandcover",
          "type" => "fill"
        },
        %{
          "filter" => ["all", ["==", "class", "snow"]],
          "id" => "landcover_snowland",
          "layout" => %{"visibility" => "visible"},
          "paint" => %{
            "fill-color" => "hsl(0, 0%, 100%)",
            "fill-opacity" => %{"base" => 1, "stops" => [[4, 1], [8, 0]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "globallandcover",
          "type" => "fill"
        },
        %{
          "filter" => ["all"],
          "id" => "park_outline",
          "layout" => %{"visibility" => "visible"},
          "minzoom" => 9,
          "paint" => %{
            "line-color" => "rgba(167, 203, 131, 1)",
            "line-dasharray" => [1, 1.5],
            "line-opacity" => 1,
            "line-width" => %{"stops" => [[9, 0.5], [14, 2]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "park",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["in", "class", "residential", "suburbs", "neighbourhood"]
          ],
          "id" => "landuse_residential",
          "layout" => %{"visibility" => "visible"},
          "maxzoom" => 24,
          "metadata" => %{},
          "paint" => %{
            "fill-color" => %{
              "base" => 1,
              "stops" => [
                [9, "rgba(233, 227, 210, 0.80)"],
                [12, "rgba(233, 227, 210, 0.55)"],
                [16, "rgba(233, 227, 210, 0.35)"]
              ]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "landuse",
          "type" => "fill"
        },
        %{
          "filter" => ["all", ["==", "class", "wood"]],
          "id" => "landcover_wood",
          "layout" => %{"visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "fill-antialias" => false,
            "fill-color" => "hsla(98, 61%, 72%, 0.7)",
            "fill-opacity" => 0.4
          },
          "source" => "openmaptiles",
          "source-layer" => "landcover",
          "type" => "fill"
        },
        %{
          "filter" => ["all", ["==", "class", "grass"]],
          "id" => "landcover_grass",
          "layout" => %{"visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "fill-antialias" => false,
            "fill-color" => "rgba(224, 232, 201, 1)",
            "fill-opacity" => 0.3
          },
          "source" => "openmaptiles",
          "source-layer" => "landcover",
          "type" => "fill"
        },
        %{
          "filter" => ["==", "class", "cemetery"],
          "id" => "landuse_cemetery",
          "layout" => %{"visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{"fill-color" => "hsl(75, 37%, 81%)"},
          "source" => "openmaptiles",
          "source-layer" => "landuse",
          "type" => "fill"
        },
        %{
          "filter" => ["==", "class", "hospital"],
          "id" => "landuse_hospital",
          "layout" => %{"visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{"fill-color" => "rgba(249, 225, 220, 1)"},
          "source" => "openmaptiles",
          "source-layer" => "landuse",
          "type" => "fill"
        },
        %{
          "filter" => ["==", "class", "school"],
          "id" => "landuse_school",
          "layout" => %{"visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{"fill-color" => "rgb(236,238,204)"},
          "source" => "openmaptiles",
          "source-layer" => "landuse",
          "type" => "fill"
        },
        %{
          "filter" => ["all", ["in", "class", "stadium", "pitch", "track"]],
          "id" => "landuse_stadium",
          "layout" => %{"visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{"fill-color" => "rgb(236,238,204)"},
          "source" => "openmaptiles",
          "source-layer" => "landuse",
          "type" => "fill"
        },
        %{
          "filter" => ["all", ["in", "class", "garages"]],
          "id" => "landuse_garage",
          "layout" => %{"visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{"fill-color" => "rgba(236, 236, 236, 1)"},
          "source" => "openmaptiles",
          "source-layer" => "landuse",
          "type" => "fill"
        },
        %{
          "filter" => ["all", ["in", "class", "dam"]],
          "id" => "landuse_dam",
          "layout" => %{"visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{"fill-color" => "rgba(209, 212, 190, 1)"},
          "source" => "openmaptiles",
          "source-layer" => "landuse",
          "type" => "fill"
        },
        %{
          "filter" => ["all", ["==", "brunnel", "tunnel"]],
          "id" => "waterway_tunnel",
          "layout" => %{"line-cap" => "round", "visibility" => "visible"},
          "minzoom" => 14,
          "paint" => %{
            "line-color" => "#a0c8f0",
            "line-dasharray" => [2, 4],
            "line-width" => %{"base" => 1.3, "stops" => [[13, 0.5], [20, 6]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "waterway",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "class", "river"],
            ["!=", "brunnel", "tunnel"],
            ["!=", "intermittent", 1]
          ],
          "id" => "waterway_river",
          "layout" => %{"line-cap" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#a0c8f0",
            "line-width" => %{"base" => 1.2, "stops" => [[11, 0.5], [20, 6]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "waterway",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "class", "river"],
            ["!=", "brunnel", "tunnel"],
            ["==", "intermittent", 1]
          ],
          "id" => "waterway_river_intermittent",
          "layout" => %{"line-cap" => "round"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#a0c8f0",
            "line-dasharray" => [3, 2],
            "line-width" => %{"base" => 1.2, "stops" => [[11, 0.5], [20, 6]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "waterway",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["!=", "class", "river"],
            ["!=", "brunnel", "tunnel"],
            ["!=", "intermittent", 1]
          ],
          "id" => "waterway_other",
          "layout" => %{"line-cap" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#a0c8f0",
            "line-width" => %{"base" => 1.3, "stops" => [[13, 0.5], [20, 6]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "waterway",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["!=", "class", "river"],
            ["!=", "brunnel", "tunnel"],
            ["==", "intermittent", 1]
          ],
          "id" => "waterway_other_intermittent",
          "layout" => %{"line-cap" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#a0c8f0",
            "line-dasharray" => [4, 3],
            "line-width" => %{"base" => 1.3, "stops" => [[13, 0.5], [20, 6]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "waterway",
          "type" => "line"
        },
        %{
          "filter" => ["all", ["==", "intermittent", 1]],
          "id" => "water_intermittent",
          "layout" => %{"visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "fill-color" => "rgba(172, 218, 251, 1)",
            "fill-opacity" => 0.85
          },
          "source" => "openmaptiles",
          "source-layer" => "water",
          "type" => "fill"
        },
        %{
          "filter" => [
            "all",
            ["!=", "intermittent", 1],
            ["!=", "brunnel", "tunnel"]
          ],
          "id" => "water",
          "layout" => %{"visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{"fill-color" => "rgba(134, 204, 250, 1)"},
          "source" => "openmaptiles",
          "source-layer" => "water",
          "type" => "fill"
        },
        %{
          "filter" => ["all", ["in", "class", "sand"]],
          "id" => "landcover_sand",
          "layout" => %{"visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "fill-antialias" => false,
            "fill-color" => "#f2e9ac",
            "fill-opacity" => 1
          },
          "source" => "openmaptiles",
          "source-layer" => "landcover",
          "type" => "fill"
        },
        %{
          "filter" => ["all", ["in", "class", "sand"]],
          "id" => "landcover_sand_outline",
          "layout" => %{"visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{"line-color" => "#f2e9ac", "line-width" => 2},
          "source" => "openmaptiles",
          "source-layer" => "landcover",
          "type" => "line"
        },
        %{
          "filter" => ["==", "$type", "Polygon"],
          "id" => "aeroway_fill",
          "layout" => %{"visibility" => "visible"},
          "metadata" => %{},
          "minzoom" => 11,
          "paint" => %{
            "fill-color" => "rgba(229, 228, 224, 1)",
            "fill-opacity" => 0.7
          },
          "source" => "openmaptiles",
          "source-layer" => "aeroway",
          "type" => "fill"
        },
        %{
          "filter" => [
            "all",
            ["==", "$type", "LineString"],
            ["==", "class", "runway"]
          ],
          "id" => "aeroway_runway",
          "layout" => %{"visibility" => "visible"},
          "metadata" => %{},
          "minzoom" => 11,
          "paint" => %{
            "line-color" => "#f0ede9",
            "line-width" => %{"base" => 1.2, "stops" => [[11, 3], [20, 16]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "aeroway",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "$type", "LineString"],
            ["==", "class", "taxiway"]
          ],
          "id" => "aeroway_taxiway",
          "layout" => %{"visibility" => "visible"},
          "metadata" => %{},
          "minzoom" => 11,
          "paint" => %{
            "line-color" => "#f0ede9",
            "line-width" => %{"base" => 1.2, "stops" => [[11, 0.5], [20, 6]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "aeroway",
          "type" => "line"
        },
        %{
          "filter" => ["all", ["in", "class", "ferry"]],
          "id" => "ferry",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "paint" => %{
            "line-color" => "rgba(108, 159, 182, 1)",
            "line-dasharray" => [2, 2],
            "line-width" => 1.1
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "class", "motorway"],
            ["==", "ramp", 1],
            ["==", "brunnel", "tunnel"]
          ],
          "id" => "tunnel_motorway_link_casing",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "minzoom" => 5,
          "paint" => %{
            "line-color" => "#e9ac77",
            "line-dasharray" => [0.5, 0.25],
            "line-opacity" => 1,
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[12, 1], [13, 3], [14, 4], [20, 15]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "brunnel", "tunnel"],
            ["in", "class", "service", "track"]
          ],
          "id" => "tunnel_service_track_casing",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#cfcdca",
            "line-dasharray" => [0.5, 0.25],
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[12, 0.5], [13, 1], [14, 4], [20, 11]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "ramp", "1"],
            ["==", "brunnel", "tunnel"],
            [">", "layer", 0]
          ],
          "id" => "tunnel_link_casing",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#e9ac77",
            "line-opacity" => 1,
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[12, 1], [13, 3], [14, 4], [20, 15]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => ["all", ["==", "brunnel", "tunnel"], ["==", "class", "minor"]],
          "id" => "tunnel_minor_casing",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#cfcdca",
            "line-dasharray" => [0.5, 0.25],
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[12, 0.5], [13, 1.5], [14, 4], [20, 16]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "brunnel", "tunnel"],
            ["in", "class", "street", "street_limited"]
          ],
          "id" => "tunnel_street_casing",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#cfcdca",
            "line-opacity" => %{"stops" => [[12, 0], [12.5, 1]]},
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[12, 0.5], [13, 1], [14, 4], [20, 15]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "brunnel", "tunnel"],
            ["in", "class", "secondary", "tertiary"]
          ],
          "id" => "tunnel_secondary_tertiary_casing",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "rgba(195, 189, 187, 1)",
            "line-dasharray" => [0.5, 0.25],
            "line-opacity" => 1,
            "line-width" => %{"base" => 1.2, "stops" => [[8, 1.5], [20, 17]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "brunnel", "tunnel"],
            ["in", "class", "primary", "trunk"]
          ],
          "id" => "tunnel_trunk_primary_casing",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#e9ac77",
            "line-dasharray" => [0.5, 0.25],
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[5, 0.4], [6, 0.7], [7, 1.75], [20, 22]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "class", "motorway"],
            ["==", "brunnel", "tunnel"]
          ],
          "id" => "tunnel_motorway_casing",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "minzoom" => 5,
          "paint" => %{
            "line-color" => "#e9ac77",
            "line-dasharray" => [0.5, 0.25],
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[5, 0.4], [6, 0.7], [7, 1.75], [20, 22]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "$type", "LineString"],
            ["==", "brunnel", "tunnel"],
            ["in", "class", "path", "pedestrian"]
          ],
          "id" => "tunnel_path_pedestrian",
          "layout" => %{"visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "rgba(204, 196, 176, 0.45)",
            "line-dasharray" => [1, 0.75],
            "line-width" => %{"base" => 1.2, "stops" => [[14, 0.5], [20, 6]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "class", "motorway_link"],
            ["==", "ramp", 1],
            ["==", "brunnel", "tunnel"]
          ],
          "id" => "tunnel_motorway_link",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "minzoom" => 5,
          "paint" => %{
            "line-color" => "#fc8",
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[12.5, 0], [13, 1.5], [14, 2.5], [20, 11.5]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "brunnel", "tunnel"],
            ["in", "class", "service", "track"]
          ],
          "id" => "tunnel_service_track",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#fff",
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[13, 1.5], [16, 2], [20, 8]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "brunnel", "tunnel"],
            ["in", "class", "service_construction", "track_construction"]
          ],
          "id" => "tunnel_service_track_construction",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#fff",
            "line-dasharray" => [2, 2],
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[13, 1.5], [16, 2], [20, 8]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "ramp", "1"],
            ["==", "brunnel", "tunnel"],
            [">", "layer", 0]
          ],
          "id" => "tunnel_link",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#fff4c6",
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[12.5, 0], [13, 1.5], [14, 2.5], [20, 11.5]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => ["all", ["==", "brunnel", "tunnel"], ["in", "class", "minor"]],
          "id" => "tunnel_minor",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#fff",
            "line-opacity" => 1,
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[12.9, 0], [13, 1], [14, 2.5], [20, 13]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "brunnel", "tunnel"],
            ["in", "class", "minor_construction"]
          ],
          "id" => "tunnel_minor_construction",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#fff",
            "line-dasharray" => [2, 2],
            "line-opacity" => 1,
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[12.9, 0], [13, 1], [14, 2.5], [20, 13]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "brunnel", "tunnel"],
            ["in", "class", "secondary", "tertiary"]
          ],
          "id" => "tunnel_secondary_tertiary",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "rgba(245, 245, 243, 1)",
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[6.5, 0], [8, 0.5], [20, 13]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "brunnel", "tunnel"],
            ["in", "class", "secondary_construction", "tertiary_construction"]
          ],
          "id" => "tunnel_secondary_tertiary_construction",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#fff",
            "line-dasharray" => [2, 2],
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[6.5, 0], [8, 0.5], [20, 13]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "brunnel", "tunnel"],
            ["in", "class", "primary", "trunk"]
          ],
          "id" => "tunnel_trunk_primary",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#fff4c6",
            "line-width" => %{"base" => 1.2, "stops" => [[5, 0], [7, 1], [20, 18]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "brunnel", "tunnel"],
            ["in", "class", "primary_construction", "trunk_construction"]
          ],
          "id" => "tunnel_trunk_primary_construction",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#fff4c6",
            "line-dasharray" => [2, 2],
            "line-width" => %{"base" => 1.2, "stops" => [[5, 0], [7, 1], [20, 18]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "class", "motorway"],
            ["==", "brunnel", "tunnel"]
          ],
          "id" => "tunnel_motorway",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "minzoom" => 5,
          "paint" => %{
            "line-color" => "#ffdaa6",
            "line-width" => %{"base" => 1.2, "stops" => [[5, 0], [7, 1], [20, 18]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "class", "motorway_construction"],
            ["==", "brunnel", "tunnel"]
          ],
          "id" => "tunnel_motorway_construction",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "minzoom" => 5,
          "paint" => %{
            "line-color" => "#ffdaa6",
            "line-dasharray" => [2, 2],
            "line-width" => %{"base" => 1.2, "stops" => [[5, 0], [7, 1], [20, 18]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => ["all", ["==", "brunnel", "tunnel"], ["in", "class", "rail"]],
          "id" => "tunnel_major_rail",
          "layout" => %{"visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#bbb",
            "line-width" => %{
              "base" => 1.4,
              "stops" => [[14, 0.4], [15, 0.75], [20, 2]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => ["all", ["==", "brunnel", "tunnel"], ["==", "class", "rail"]],
          "id" => "tunnel_major_rail_hatching",
          "layout" => %{"visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#bbb",
            "line-dasharray" => [0.2, 8],
            "line-width" => %{
              "base" => 1.4,
              "stops" => [[14.5, 0], [15, 3], [20, 8]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => ["all", ["==", "$type", "Polygon"], ["==", "class", "pier"]],
          "id" => "road_area_pier",
          "layout" => %{"visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "fill-antialias" => true,
            "fill-color" => "rgba(246, 241, 229, 1)"
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "fill"
        },
        %{
          "filter" => [
            "all",
            ["==", "$type", "LineString"],
            ["in", "class", "pier"]
          ],
          "id" => "road_pier",
          "layout" => %{"line-cap" => "round", "line-join" => "round"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "rgba(246, 241, 229, 1)",
            "line-width" => %{"base" => 1.2, "stops" => [[15, 1], [17, 4]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "$type", "Polygon"],
            ["==", "brunnel", "bridge"]
          ],
          "id" => "road_area_bridge",
          "layout" => %{"visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "fill-antialias" => true,
            "fill-color" => "rgba(246, 241, 229, 0.6)"
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "fill"
        },
        %{
          "filter" => [
            "all",
            ["==", "$type", "Polygon"],
            ["!has", "brunnel"],
            ["!in", "class", "bridge", "pier"]
          ],
          "id" => "road_area_pattern",
          "layout" => %{"visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{"fill-pattern" => "pedestrian_polygon"},
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "fill"
        },
        %{
          "filter" => [
            "all",
            ["!in", "brunnel", "bridge", "tunnel"],
            ["in", "class", "service", "track"]
          ],
          "id" => "road_service_track_casing",
          "layout" => %{
            "line-cap" => "round",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#cfcdca",
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[12, 0.5], [13, 1], [14, 4], [20, 11]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["!in", "brunnel", "bridge", "tunnel"],
            [
              "!in",
              "class",
              "motorway",
              "trunk",
              "primary",
              "pedestrian",
              "path",
              "track",
              "service"
            ],
            ["==", "ramp", 1]
          ],
          "id" => "road_link_casing",
          "layout" => %{
            "line-cap" => "round",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "metadata" => %{},
          "minzoom" => 13,
          "paint" => %{
            "line-color" => "#e9ac77",
            "line-opacity" => 1,
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[12, 1], [13, 3], [14, 4], [20, 15]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["!in", "brunnel", "bridge", "tunnel"],
            ["==", "ramp", 1],
            ["in", "class", "primary", "trunk"]
          ],
          "id" => "road_trunk_primary_link_casing",
          "layout" => %{
            "line-cap" => "butt",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#e9ac77",
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[5, 0], [7, 0.7], [20, 14]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["!in", "brunnel", "bridge", "tunnel"],
            ["==", "class", "motorway"],
            ["==", "ramp", 1]
          ],
          "id" => "road_motorway_link_casing",
          "layout" => %{
            "line-cap" => "butt",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "metadata" => %{},
          "minzoom" => 10,
          "paint" => %{
            "line-color" => "#e9ac77",
            "line-opacity" => 1,
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[9.9, 0], [10, 1.4], [14, 8], [20, 12]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "$type", "LineString"],
            ["!in", "brunnel", "bridge", "tunnel"],
            ["in", "class", "minor"],
            ["!=", "ramp", "1"]
          ],
          "id" => "road_minor_casing",
          "layout" => %{
            "line-cap" => "round",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#cfcdca",
            "line-opacity" => 1,
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[12, 0.7], [13, 1], [14, 4], [20, 16]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["!in", "brunnel", "bridge", "tunnel"],
            ["in", "class", "secondary", "tertiary"],
            ["!=", "ramp", 1]
          ],
          "id" => "road_secondary_tertiary_casing",
          "layout" => %{
            "line-cap" => "round",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "metadata" => %{},
          "paint" => %{
            "line-color" => "rgba(195, 189, 187, 1)",
            "line-opacity" => 1,
            "line-width" => %{"base" => 1.2, "stops" => [[8, 1.5], [20, 17]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["!in", "brunnel", "bridge", "tunnel"],
            ["!=", "ramp", 1],
            ["in", "class", "primary", "trunk"],
            ["!=", "ramp", 1]
          ],
          "id" => "road_trunk_primary_casing",
          "layout" => %{
            "line-cap" => "butt",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#e9ac77",
            "line-opacity" => 1,
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[5, 0.4], [6, 0.7], [7, 1.75], [20, 22]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["!in", "brunnel", "bridge", "tunnel"],
            ["==", "class", "motorway"],
            ["!=", "ramp", 1]
          ],
          "id" => "road_motorway_casing",
          "layout" => %{
            "line-cap" => "butt",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "metadata" => %{},
          "minzoom" => 5,
          "paint" => %{
            "line-color" => "#e9ac77",
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[5, 0.4], [6, 0.7], [7, 1.75], [20, 22]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "$type", "LineString"],
            ["!in", "brunnel", "bridge", "tunnel"],
            ["in", "class", "path", "pedestrian"]
          ],
          "id" => "road_path_pedestrian",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "minzoom" => 12,
          "paint" => %{
            "line-color" => "rgba(176, 169, 150, 0.45)",
            "line-dasharray" => [1, 1],
            "line-width" => %{"base" => 1.2, "stops" => [[12, 1], [16, 2], [20, 3]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["!in", "brunnel", "bridge", "tunnel"],
            ["==", "ramp", 1],
            [
              "!in",
              "class",
              "motorway",
              "trunk",
              "primary",
              "pedestrian",
              "path",
              "track",
              "service"
            ]
          ],
          "id" => "road_link",
          "layout" => %{
            "line-cap" => "round",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "metadata" => %{},
          "minzoom" => 13,
          "paint" => %{
            "line-color" => "#fea",
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[12.5, 0], [13, 1.5], [14, 2.5], [20, 11.5]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["!in", "brunnel", "bridge", "tunnel"],
            ["==", "ramp", 1],
            ["in", "class", "primary", "trunk"]
          ],
          "id" => "road_trunk_primary_link",
          "layout" => %{
            "line-cap" => "round",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#fea",
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[5, 0], [7, 0.5], [20, 10]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["!in", "brunnel", "bridge", "tunnel"],
            ["==", "class", "motorway"],
            ["==", "ramp", 1]
          ],
          "id" => "road_motorway_link",
          "layout" => %{
            "line-cap" => "round",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "metadata" => %{},
          "minzoom" => 10,
          "paint" => %{
            "line-color" => "#fc8",
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[9.9, 0], [10, 1], [14, 6], [20, 10]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["!in", "brunnel", "bridge", "tunnel"],
            ["in", "class", "service", "track"]
          ],
          "id" => "road_service_track",
          "layout" => %{
            "line-cap" => "round",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "metadata" => %{},
          "minzoom" => 13,
          "paint" => %{
            "line-color" => "rgba(255, 255, 255, 1)",
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[13, 1.5], [16, 2], [20, 8]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["!in", "brunnel", "bridge", "tunnel"],
            ["in", "class", "service_construction", "track_construction"]
          ],
          "id" => "road_service_track_construction",
          "layout" => %{
            "line-cap" => "round",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "metadata" => %{},
          "minzoom" => 13,
          "paint" => %{
            "line-color" => "#fff",
            "line-dasharray" => [2, 2],
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[13, 1.5], [16, 2], [20, 8]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "$type", "LineString"],
            [
              "all",
              ["!in", "brunnel", "bridge", "tunnel"],
              ["in", "class", "minor"]
            ]
          ],
          "id" => "road_minor",
          "layout" => %{
            "line-cap" => "round",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#fff",
            "line-opacity" => 1,
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[12.9, 0], [13, 1], [14, 2.5], [20, 13]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "$type", "LineString"],
            [
              "all",
              ["!in", "brunnel", "bridge", "tunnel"],
              ["in", "class", "minor_construction"]
            ]
          ],
          "id" => "road_minor_construction",
          "layout" => %{
            "line-cap" => "round",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#fff",
            "line-dasharray" => [2, 2],
            "line-opacity" => 1,
            "line-width" => %{"base" => 1.2, "stops" => [[14, 2.5], [20, 18]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["!in", "brunnel", "bridge", "tunnel"],
            ["in", "class", "secondary", "tertiary"]
          ],
          "id" => "road_secondary_tertiary",
          "layout" => %{
            "line-cap" => "round",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "metadata" => %{},
          "paint" => %{
            "line-color" => "rgba(245, 245, 243, 1)",
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[6.5, 0], [8, 0.5], [20, 13]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["!in", "brunnel", "bridge", "tunnel"],
            ["in", "class", "secondary_construction", "tertiary_construction"]
          ],
          "id" => "road_secondary_tertiary_construction",
          "layout" => %{
            "line-cap" => "round",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#fff",
            "line-dasharray" => [2, 2],
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[6.5, 0], [8, 0.5], [20, 13]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["!in", "brunnel", "bridge", "tunnel"],
            ["!=", "ramp", 1],
            ["in", "class", "primary", "trunk"]
          ],
          "id" => "road_trunk_primary",
          "layout" => %{
            "line-cap" => "round",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#fea",
            "line-width" => %{"base" => 1.2, "stops" => [[5, 0], [7, 1], [20, 18]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["!in", "brunnel", "bridge", "tunnel"],
            ["!=", "ramp", 1],
            ["in", "class", "primary_construction", "trunk_construction"]
          ],
          "id" => "road_trunk_primary_construction",
          "layout" => %{
            "line-cap" => "round",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#fea",
            "line-dasharray" => [2, 2],
            "line-width" => %{"base" => 1.2, "stops" => [[5, 0], [7, 1], [20, 18]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["!in", "brunnel", "bridge", "tunnel"],
            ["==", "class", "motorway"],
            ["!=", "ramp", 1]
          ],
          "id" => "road_motorway",
          "layout" => %{
            "line-cap" => "round",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "metadata" => %{},
          "minzoom" => 5,
          "paint" => %{
            "line-color" => %{
              "base" => 1,
              "stops" => [[5, "hsl(26, 87%, 62%)"], [6, "#fc8"]]
            },
            "line-width" => %{"base" => 1.2, "stops" => [[5, 0], [7, 1], [20, 18]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["!in", "brunnel", "bridge", "tunnel"],
            ["==", "class", "motorway_construction"],
            ["!=", "ramp", 1]
          ],
          "id" => "road_motorway_construction",
          "layout" => %{
            "line-cap" => "round",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "metadata" => %{},
          "minzoom" => 5,
          "paint" => %{
            "line-color" => %{
              "base" => 1,
              "stops" => [[5, "hsl(26, 87%, 62%)"], [6, "#fc8"]]
            },
            "line-dasharray" => [2, 2],
            "line-width" => %{"base" => 1.2, "stops" => [[5, 0], [7, 1], [20, 18]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["!in", "brunnel", "bridge", "tunnel"],
            ["in", "class", "rail"]
          ],
          "id" => "road_major_rail",
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#bbb",
            "line-width" => %{
              "base" => 1.4,
              "stops" => [[14, 0.4], [15, 0.75], [20, 2]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["!in", "brunnel", "bridge", "tunnel"],
            ["==", "class", "rail"]
          ],
          "id" => "road_major_rail_hatching",
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#bbb",
            "line-dasharray" => [0.2, 8],
            "line-width" => %{
              "base" => 1.4,
              "stops" => [[14.5, 0], [15, 3], [20, 8]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["!in", "brunnel", "bridge", "tunnel"],
            ["in", "subclass", "tram", "light_rail"]
          ],
          "id" => "road_minor_rail",
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#bbb",
            "line-width" => %{
              "base" => 1.4,
              "stops" => [[14, 0.4], [15, 0.75], [20, 2]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["!in", "brunnel", "bridge", "tunnel"],
            ["in", "subclass", "tram", "light_rail"]
          ],
          "id" => "road_minor_rail_hatching",
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#bbb",
            "line-dasharray" => [0.2, 4],
            "line-width" => %{
              "base" => 1.4,
              "stops" => [[14.5, 0], [15, 2], [20, 6]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "id" => "building",
          "layout" => %{"visibility" => "visible"},
          "maxzoom" => 14,
          "metadata" => %{},
          "minzoom" => 13,
          "paint" => %{
            "fill-color" => "rgba(189, 185, 181, 0.3)",
            "fill-outline-color" => %{
              "base" => 1,
              "stops" => [[13, "hsla(35, 6%, 79%, 0.32)"], [14, "hsl(35, 6%, 79%)"]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "building",
          "type" => "fill"
        },
        %{
          "filter" => ["all", ["!has", "hide_3d"]],
          "id" => "building-3d",
          "layout" => %{"visibility" => "visible"},
          "metadata" => %{},
          "minzoom" => 14,
          "paint" => %{
            "fill-extrusion-base" => %{
              "property" => "render_min_height",
              "type" => "identity"
            },
            "fill-extrusion-color" => "rgba(189, 185, 181, 1)",
            "fill-extrusion-height" => %{
              "property" => "render_height",
              "type" => "identity"
            },
            "fill-extrusion-opacity" => 0.3
          },
          "source" => "openmaptiles",
          "source-layer" => "building",
          "type" => "fill-extrusion"
        },
        %{
          "filter" => [
            "all",
            ["==", "$type", "LineString"],
            ["==", "brunnel", "bridge"]
          ],
          "id" => "waterway-bridge-case",
          "layout" => %{"line-cap" => "butt", "line-join" => "miter"},
          "paint" => %{
            "line-color" => "#bbbbbb",
            "line-gap-width" => %{"base" => 1.3, "stops" => [[13, 0.5], [20, 6]]},
            "line-width" => %{"base" => 1.6, "stops" => [[12, 0.5], [20, 5]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "waterway",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "$type", "LineString"],
            ["==", "brunnel", "bridge"]
          ],
          "id" => "waterway-bridge",
          "layout" => %{"line-cap" => "round", "line-join" => "round"},
          "paint" => %{
            "line-color" => "rgba(134, 204, 250, 1)",
            "line-width" => %{"base" => 1.3, "stops" => [[13, 0.5], [20, 6]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "waterway",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "class", "motorway"],
            ["==", "ramp", 1],
            ["==", "brunnel", "bridge"]
          ],
          "id" => "bridge_motorway_link_casing",
          "layout" => %{"line-join" => "round"},
          "metadata" => %{},
          "minzoom" => 5,
          "paint" => %{
            "line-color" => "#e9ac77",
            "line-opacity" => 1,
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[9.9, 0], [10, 1.4], [14, 8], [20, 12]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "brunnel", "bridge"],
            ["in", "class", "service", "track"]
          ],
          "id" => "bridge_service_track_casing",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#cfcdca",
            "line-width" => %{"base" => 1.2, "stops" => [[13, 1.5], [20, 11]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => ["all", ["==", "class", "link"], ["==", "brunnel", "bridge"]],
          "id" => "bridge_link_casing",
          "layout" => %{"line-join" => "round"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#e9ac77",
            "line-opacity" => 1,
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[12, 1], [13, 3], [14, 4], [20, 15]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "brunnel", "bridge"],
            ["in", "class", "street", "street_limited"]
          ],
          "id" => "bridge_street_casing",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "hsl(36, 6%, 74%)",
            "line-opacity" => %{"stops" => [[12, 0], [12.5, 1]]},
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[12, 0.5], [13, 1], [14, 4], [20, 18]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "$type", "LineString"],
            ["==", "brunnel", "bridge"],
            ["in", "class", "path", "pedestrian"]
          ],
          "id" => "bridge_path_pedestrian_casing",
          "layout" => %{"line-join" => "miter", "visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "hsl(35, 6%, 80%)",
            "line-dasharray" => [1, 0],
            "line-width" => %{"base" => 1.2, "stops" => [[14, 1.5], [20, 18]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "$type", "LineString"],
            ["in", "brunnel", "bridge", "tunnel"],
            ["in", "class", "minor"],
            ["!=", "ramp", "1"]
          ],
          "id" => "bridge_minor_casing",
          "layout" => %{
            "line-cap" => "butt",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#cfcdca",
            "line-opacity" => 1,
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[12, 0.7], [13, 1], [14, 4], [20, 16]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "brunnel", "bridge"],
            ["in", "class", "secondary", "tertiary"]
          ],
          "id" => "bridge_secondary_tertiary_casing",
          "layout" => %{"line-join" => "round"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "rgba(195, 189, 187, 1)",
            "line-opacity" => 1,
            "line-width" => %{"base" => 1.2, "stops" => [[8, 1.5], [20, 17]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "brunnel", "bridge"],
            ["in", "class", "primary", "trunk"]
          ],
          "id" => "bridge_trunk_primary_casing",
          "layout" => %{"line-join" => "round"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#e9ac77",
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[5, 0.4], [6, 0.7], [7, 1.75], [20, 22]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "class", "motorway"],
            ["==", "brunnel", "bridge"],
            ["!=", "ramp", 1]
          ],
          "id" => "bridge_motorway_casing",
          "layout" => %{"line-join" => "round"},
          "metadata" => %{},
          "minzoom" => 5,
          "paint" => %{
            "line-color" => "#e9ac77",
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[5, 0.4], [6, 0.7], [7, 1.75], [20, 22]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "$type", "LineString"],
            ["==", "brunnel", "bridge"],
            ["in", "class", "path", "pedestrian"]
          ],
          "id" => "bridge_path_pedestrian",
          "metadata" => %{},
          "paint" => %{
            "line-color" => "hsl(0, 0%, 100%)",
            "line-dasharray" => [1, 0.3],
            "line-width" => %{"base" => 1.2, "stops" => [[14, 0.5], [20, 10]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "class", "motorway"],
            ["==", "ramp", 1],
            ["==", "brunnel", "bridge"]
          ],
          "id" => "bridge_motorway_link",
          "layout" => %{"line-join" => "round"},
          "metadata" => %{},
          "minzoom" => 5,
          "paint" => %{
            "line-color" => "#fc8",
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[9.9, 0], [10, 1], [14, 6], [20, 10]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "brunnel", "bridge"],
            ["in", "class", "service", "track"]
          ],
          "id" => "bridge_service_track",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#fff",
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[13, 1.5], [16, 2], [20, 8]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "brunnel", "bridge"],
            ["in", "class", "service_construction", "track_construction"]
          ],
          "id" => "bridge_service_track_construction",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#fff",
            "line-dasharray" => [2, 2],
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[13, 1.5], [16, 2], [20, 8]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => ["all", ["==", "class", "link"], ["==", "brunnel", "bridge"]],
          "id" => "bridge_link",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#fea",
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[12.5, 0], [13, 1.5], [14, 2.5], [20, 11.5]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "brunnel", "bridge"],
            ["in", "class", "street", "street_limited"]
          ],
          "id" => "bridge_street",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#fff",
            "line-opacity" => 1,
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[13.5, 0], [14, 2.5], [20, 16]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => ["all", ["==", "brunnel", "bridge"], ["in", "class", "minor"]],
          "id" => "bridge_minor",
          "layout" => %{"line-join" => "round"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#fff",
            "line-opacity" => 1,
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[12.9, 0], [13, 1], [14, 2.5], [20, 13]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "brunnel", "bridge"],
            ["in", "class", "minor_construction"]
          ],
          "id" => "bridge_minor_construction",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#fff",
            "line-dasharray" => [2, 2],
            "line-opacity" => 1,
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[12.9, 0], [13, 1], [14, 2.5], [20, 13]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "brunnel", "bridge"],
            ["in", "class", "secondary", "tertiary"]
          ],
          "id" => "bridge_secondary_tertiary",
          "layout" => %{"line-join" => "round"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "rgba(245, 245, 243, 1)",
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[6.5, 0], [8, 0.5], [20, 13]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "brunnel", "bridge"],
            ["in", "class", "secondary_construction", "tertiary_construction"]
          ],
          "id" => "bridge_secondary_tertiary_construction",
          "layout" => %{"line-join" => "round"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#fff",
            "line-dasharray" => [2, 2],
            "line-width" => %{
              "base" => 1.2,
              "stops" => [[6.5, 0], [8, 0.5], [20, 13]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "brunnel", "bridge"],
            ["in", "class", "primary", "trunk"]
          ],
          "id" => "bridge_trunk_primary",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#fea",
            "line-width" => %{"base" => 1.2, "stops" => [[5, 0], [7, 1], [20, 18]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "brunnel", "bridge"],
            ["in", "class", "primary_construction", "trunk_construction"]
          ],
          "id" => "bridge_trunk_primary_construction",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#fea",
            "line-dasharray" => [2, 2],
            "line-width" => %{"base" => 1.2, "stops" => [[5, 0], [7, 1], [20, 18]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "class", "motorway"],
            ["==", "brunnel", "bridge"],
            ["!=", "ramp", 1]
          ],
          "id" => "bridge_motorway",
          "layout" => %{"line-join" => "round"},
          "metadata" => %{},
          "minzoom" => 5,
          "paint" => %{
            "line-color" => "#fc8",
            "line-width" => %{"base" => 1.2, "stops" => [[5, 0], [7, 1], [20, 18]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "class", "motorway_construction"],
            ["==", "brunnel", "bridge"],
            ["!=", "ramp", 1]
          ],
          "id" => "bridge_motorway_construction",
          "layout" => %{"line-join" => "round"},
          "metadata" => %{},
          "minzoom" => 5,
          "paint" => %{
            "line-color" => "#fc8",
            "line-dasharray" => [2, 2],
            "line-width" => %{"base" => 1.2, "stops" => [[5, 0], [7, 1], [20, 18]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => ["all", ["==", "class", "rail"], ["==", "brunnel", "bridge"]],
          "id" => "bridge_major_rail",
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#bbb",
            "line-width" => %{
              "base" => 1.4,
              "stops" => [[14, 0.4], [15, 0.75], [20, 2]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => ["all", ["==", "class", "rail"], ["==", "brunnel", "bridge"]],
          "id" => "bridge_major_rail_hatching",
          "metadata" => %{},
          "paint" => %{
            "line-color" => "#bbb",
            "line-dasharray" => [0.2, 8],
            "line-width" => %{
              "base" => 1.4,
              "stops" => [[14.5, 0], [15, 3], [20, 8]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => ["==", "class", "aerialway"],
          "id" => "cablecar",
          "layout" => %{"line-cap" => "round", "visibility" => "visible"},
          "minzoom" => 13,
          "paint" => %{
            "line-color" => "hsl(0, 0%, 70%)",
            "line-width" => %{"base" => 1, "stops" => [[13, 1], [19, 2]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => ["==", "class", "aerialway"],
          "id" => "cablecar-dash",
          "layout" => %{
            "line-cap" => "round",
            "line-join" => "bevel",
            "visibility" => "visible"
          },
          "minzoom" => 13,
          "paint" => %{
            "line-color" => "rgba(164, 164, 164, 1)",
            "line-dasharray" => [2, 2],
            "line-width" => %{"base" => 1, "stops" => [[13, 2], [19, 4]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => ["all", ["in", "admin_level", 3, 4], ["==", "maritime", 0]],
          "id" => "boundary_3",
          "layout" => %{"line-join" => "round", "visibility" => "visible"},
          "metadata" => %{},
          "minzoom" => 3,
          "paint" => %{
            "line-color" => "#9e9cab",
            "line-dasharray" => [5, 3],
            "line-width" => %{
              "base" => 1,
              "stops" => [[4, 0.4], [5, 0.7], [12, 1.6]]
            }
          },
          "source" => "openmaptiles",
          "source-layer" => "boundary",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "admin_level", 2],
            ["==", "maritime", 0],
            ["==", "disputed", 0],
            ["!has", "claimed_by"]
          ],
          "id" => "boundary_2_z0-4",
          "layout" => %{
            "line-cap" => "round",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "maxzoom" => 5,
          "metadata" => %{},
          "minzoom" => 0,
          "paint" => %{
            "line-color" => "rgba(139, 139, 139, 1)",
            "line-opacity" => 1,
            "line-width" => %{"base" => 1, "stops" => [[3, 1], [5, 1.2]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "boundary",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "admin_level", 2],
            ["!has", "claimed_by"],
            ["==", "disputed", 0],
            ["==", "maritime", 1]
          ],
          "id" => "boundary_2_z0-4_maritime",
          "layout" => %{
            "line-cap" => "round",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "maxzoom" => 5,
          "metadata" => %{},
          "minzoom" => 0,
          "paint" => %{
            "line-color" => "rgba(98,185,229,1)",
            "line-opacity" => 1,
            "line-width" => %{"base" => 1, "stops" => [[3, 1], [5, 1.2]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "boundary",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "admin_level", 2],
            ["==", "maritime", 0],
            ["==", "disputed", 1]
          ],
          "id" => "boundary_2_z0-4_disputed",
          "layout" => %{
            "line-cap" => "round",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "maxzoom" => 5,
          "metadata" => %{},
          "minzoom" => 0,
          "paint" => %{
            "line-color" => "rgba(139, 139, 139, 1)",
            "line-dasharray" => [2, 2],
            "line-opacity" => 1,
            "line-width" => %{"base" => 1, "stops" => [[3, 1], [5, 1.2]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "boundary",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "admin_level", 2],
            ["==", "maritime", 1],
            ["==", "disputed", 1]
          ],
          "id" => "boundary_2_z0-4_disputed_maritime",
          "layout" => %{
            "line-cap" => "round",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "maxzoom" => 5,
          "metadata" => %{},
          "minzoom" => 0,
          "paint" => %{
            "line-color" => "rgba(98,185,229,1)",
            "line-dasharray" => [2, 2],
            "line-opacity" => 1,
            "line-width" => %{"base" => 1, "stops" => [[3, 1], [5, 1.2]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "boundary",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "admin_level", 2],
            ["==", "disputed", 0],
            ["==", "maritime", 0]
          ],
          "id" => "boundary_2_z5",
          "layout" => %{
            "line-cap" => "round",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "metadata" => %{},
          "minzoom" => 5,
          "paint" => %{
            "line-color" => "rgba(139, 139, 139, 1)",
            "line-opacity" => 1,
            "line-width" => %{"base" => 1, "stops" => [[5, 1.2], [12, 3]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "boundary",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "admin_level", 2],
            ["==", "disputed", 1],
            ["==", "maritime", 0]
          ],
          "id" => "boundary_2_z5_disputed",
          "layout" => %{
            "line-cap" => "round",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "metadata" => %{},
          "minzoom" => 5,
          "paint" => %{
            "line-color" => "rgba(120, 120, 120, 1)",
            "line-dasharray" => [4, 3],
            "line-opacity" => 1,
            "line-width" => %{"base" => 1, "stops" => [[5, 1.2], [12, 3]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "boundary",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "admin_level", 2],
            ["==", "disputed", 1],
            ["==", "maritime", 1]
          ],
          "id" => "boundary_2_z5_disputed_maritime",
          "layout" => %{
            "line-cap" => "round",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "metadata" => %{},
          "minzoom" => 5,
          "paint" => %{
            "line-color" => "rgba(98,185,229,1)",
            "line-dasharray" => [4, 3],
            "line-opacity" => 1,
            "line-width" => %{"base" => 1, "stops" => [[5, 1.2], [12, 3]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "boundary",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "admin_level", 2],
            ["==", "disputed", 0],
            ["==", "maritime", 1]
          ],
          "id" => "boundary_2_z5_maritime",
          "layout" => %{
            "line-cap" => "round",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "metadata" => %{},
          "minzoom" => 5,
          "paint" => %{
            "line-color" => "rgba(98,185,229,1)",
            "line-opacity" => 1,
            "line-width" => %{"base" => 1, "stops" => [[5, 1.2], [12, 3]]}
          },
          "source" => "openmaptiles",
          "source-layer" => "boundary",
          "type" => "line"
        },
        %{
          "filter" => ["all", ["==", "$type", "LineString"]],
          "id" => "water_name_line",
          "layout" => %{
            "symbol-placement" => "line",
            "text-field" => [
              "concat",
              ["get", "name:latin"],
              " ",
              ["get", "name:nonlatin"]
            ],
            "text-font" => ["Roboto Regular", "Noto Sans Regular"],
            "text-max-width" => 5,
            "text-size" => 12,
            "visibility" => "visible"
          },
          "metadata" => %{},
          "minzoom" => 0,
          "paint" => %{
            "text-color" => "#5d60be",
            "text-halo-color" => "rgba(255,255,255,0.7)",
            "text-halo-width" => 1
          },
          "source" => "openmaptiles",
          "source-layer" => "water_name",
          "type" => "symbol"
        },
        %{
          "filter" => ["all", ["==", "$type", "Point"], ["!=", "class", "ocean"]],
          "id" => "water_name_point",
          "layout" => %{
            "text-field" => [
              "concat",
              ["get", "name:latin"],
              "\n",
              ["get", "name:nonlatin"]
            ],
            "text-font" => ["Roboto Regular", "Noto Sans Regular"],
            "text-max-width" => 5,
            "text-size" => 12,
            "visibility" => "visible"
          },
          "maxzoom" => 24,
          "metadata" => %{},
          "minzoom" => 2,
          "paint" => %{
            "text-color" => "rgba(76, 125, 173, 1)",
            "text-halo-color" => "rgba(255,255,255,0)",
            "text-halo-width" => 1
          },
          "source" => "openmaptiles",
          "source-layer" => "water_name",
          "type" => "symbol"
        },
        %{
          "filter" => ["all", ["==", "$type", "Point"], ["==", "class", "ocean"]],
          "id" => "water_ocean_name_point",
          "layout" => %{
            "text-field" => [
              "concat",
              ["get", "name:latin"],
              "\n",
              ["get", "name:nonlatin"]
            ],
            "text-font" => ["Roboto Regular", "Noto Sans Regular"],
            "text-max-width" => 5,
            "text-size" => 12,
            "visibility" => "visible"
          },
          "metadata" => %{},
          "minzoom" => 0,
          "paint" => %{
            "text-color" => "rgba(76, 125, 173, 1)",
            "text-halo-color" => "rgba(255,255,255,0)",
            "text-halo-width" => 1
          },
          "source" => "openmaptiles",
          "source-layer" => "water_name",
          "type" => "symbol"
        },
        %{
          "filter" => [
            "all",
            ["==", "$type", "Point"],
            [">=", "rank", 20],
            [
              "any",
              [
                "all",
                ["in", "class", "pitch"],
                [
                  "in",
                  "subclass",
                  "soccer",
                  "tennis",
                  "baseball",
                  "basketball",
                  "swimming",
                  "golf"
                ]
              ]
            ],
            ["any", ["!has", "level"], ["==", "level", 0]]
          ],
          "id" => "poi_z16_subclass",
          "layout" => %{
            "icon-image" => "{subclass}_11",
            "text-anchor" => "top",
            "text-field" => [
              "concat",
              ["get", "name:latin"],
              "\n",
              ["get", "name:nonlatin"]
            ],
            "text-font" => ["Roboto Condensed Italic", "Noto Sans Italic"],
            "text-max-width" => 9,
            "text-offset" => [0, 0.6],
            "text-padding" => 2,
            "text-size" => 12,
            "visibility" => "visible"
          },
          "metadata" => %{},
          "minzoom" => 16,
          "paint" => %{
            "text-color" => "#666",
            "text-halo-blur" => 0.5,
            "text-halo-color" => "#ffffff",
            "text-halo-width" => 1
          },
          "source" => "openmaptiles",
          "source-layer" => "poi",
          "type" => "symbol"
        },
        %{
          "filter" => [
            "all",
            ["==", "$type", "Point"],
            ["!=", "class", "swimming_pool"],
            [">=", "rank", 20],
            [
              "none",
              [
                "all",
                ["in", "class", "pitch"],
                [
                  "in",
                  "subclass",
                  "soccer",
                  "tennis",
                  "baseball",
                  "basketball",
                  "swimming",
                  "golf"
                ]
              ]
            ],
            ["any", ["!has", "level"], ["==", "level", 0]]
          ],
          "id" => "poi_z16",
          "layout" => %{
            "icon-image" => "{class}_11",
            "text-anchor" => "top",
            "text-field" => [
              "concat",
              ["get", "name:latin"],
              "\n",
              ["get", "name:nonlatin"]
            ],
            "text-font" => ["Roboto Condensed Italic", "Noto Sans Italic"],
            "text-max-width" => 9,
            "text-offset" => [0, 0.6],
            "text-padding" => 2,
            "text-size" => 12,
            "visibility" => "visible"
          },
          "metadata" => %{},
          "minzoom" => 16,
          "paint" => %{
            "text-color" => "#666",
            "text-halo-blur" => 0.5,
            "text-halo-color" => "#ffffff",
            "text-halo-width" => 1
          },
          "source" => "openmaptiles",
          "source-layer" => "poi",
          "type" => "symbol"
        },
        %{
          "filter" => [
            "all",
            ["==", "$type", "Point"],
            ["!=", "class", "swimming_pool"],
            [">=", "rank", 7],
            ["<", "rank", 20],
            ["any", ["!has", "level"], ["==", "level", 0]]
          ],
          "id" => "poi_z15",
          "layout" => %{
            "icon-image" => "{class}_11",
            "text-anchor" => "top",
            "text-field" => [
              "concat",
              ["get", "name:latin"],
              "\n",
              ["get", "name:nonlatin"]
            ],
            "text-font" => ["Roboto Condensed Italic", "Noto Sans Italic"],
            "text-max-width" => 9,
            "text-offset" => [0, 0.6],
            "text-padding" => 2,
            "text-size" => 12,
            "visibility" => "visible"
          },
          "metadata" => %{},
          "minzoom" => 15,
          "paint" => %{
            "text-color" => "#666",
            "text-halo-blur" => 0.5,
            "text-halo-color" => "#ffffff",
            "text-halo-width" => 1
          },
          "source" => "openmaptiles",
          "source-layer" => "poi",
          "type" => "symbol"
        },
        %{
          "filter" => [
            "all",
            ["==", "$type", "Point"],
            ["!=", "class", "swimming_pool"],
            ["any", ["<", "rank", 7]],
            ["any", ["!has", "level"], ["==", "level", 0]]
          ],
          "id" => "poi_z14",
          "layout" => %{
            "icon-image" => "{class}_11",
            "icon-size" => 0.9,
            "text-anchor" => "top",
            "text-field" => [
              "concat",
              ["get", "name:latin"],
              "\n",
              ["get", "name:nonlatin"]
            ],
            "text-font" => ["Roboto Condensed Italic", "Noto Sans Italic"],
            "text-max-width" => 9,
            "text-offset" => [0, 0.6],
            "text-padding" => 2,
            "text-size" => 12,
            "visibility" => "visible"
          },
          "metadata" => %{},
          "minzoom" => 14.2,
          "paint" => %{
            "text-color" => "#666",
            "text-halo-blur" => 0.5,
            "text-halo-color" => "#ffffff",
            "text-halo-width" => 1
          },
          "source" => "openmaptiles",
          "source-layer" => "poi",
          "type" => "symbol"
        },
        %{
          "filter" => [
            "all",
            ["in", "class", "bus", "railway", "airport"],
            ["==", "subclass", "station"]
          ],
          "id" => "poi_transit",
          "layout" => %{
            "icon-image" => "{class}_11",
            "icon-size" => 0.9,
            "text-anchor" => "left",
            "text-field" => [
              "concat",
              ["get", "name:latin"],
              "\n",
              ["get", "name:nonlatin"]
            ],
            "text-font" => ["Roboto Condensed Italic", "Noto Sans Italic"],
            "text-max-width" => 9,
            "text-offset" => [0.9, 0],
            "text-padding" => 2,
            "text-size" => 12,
            "visibility" => "visible"
          },
          "metadata" => %{},
          "minzoom" => 15,
          "paint" => %{
            "text-color" => "rgba(102, 102, 102, 1)",
            "text-halo-blur" => 0.5,
            "text-halo-color" => "#ffffff",
            "text-halo-width" => 1
          },
          "source" => "openmaptiles",
          "source-layer" => "poi",
          "type" => "symbol"
        },
        %{
          "filter" => [
            "all",
            ["==", "oneway", 1],
            [
              "in",
              "class",
              "motorway",
              "trunk",
              "primary",
              "secondary",
              "tertiary",
              "minor",
              "service"
            ]
          ],
          "id" => "road_oneway",
          "layout" => %{
            "icon-image" => "oneway",
            "icon-padding" => 2,
            "icon-rotate" => 90,
            "icon-rotation-alignment" => "map",
            "icon-size" => %{"stops" => [[15, 0.5], [19, 1]]},
            "symbol-placement" => "line",
            "symbol-spacing" => 75,
            "visibility" => "visible"
          },
          "minzoom" => 15,
          "paint" => %{"icon-opacity" => 0.5},
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "symbol"
        },
        %{
          "filter" => [
            "all",
            ["==", "oneway", -1],
            [
              "in",
              "class",
              "motorway",
              "trunk",
              "primary",
              "secondary",
              "tertiary",
              "minor",
              "service"
            ]
          ],
          "id" => "road_oneway_opposite",
          "layout" => %{
            "icon-image" => "oneway",
            "icon-padding" => 2,
            "icon-rotate" => -90,
            "icon-rotation-alignment" => "map",
            "icon-size" => %{"stops" => [[15, 0.5], [19, 1]]},
            "symbol-placement" => "line",
            "symbol-spacing" => 75
          },
          "minzoom" => 15,
          "paint" => %{"icon-opacity" => 0.5},
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "symbol"
        },
        %{
          "filter" => ["all", ["in", "subclass", "gondola", "cable_car"]],
          "id" => "road_gondola_label",
          "layout" => %{
            "symbol-placement" => "line",
            "text-anchor" => "center",
            "text-field" => [
              "concat",
              ["get", "name:latin"],
              " ",
              ["get", "name:nonlatin"]
            ],
            "text-font" => ["Roboto Italic", "Noto Sans Italic"],
            "text-offset" => [0.8, 0.8],
            "text-size" => %{"base" => 1, "stops" => [~c"\r\v", [15, 12]]}
          },
          "metadata" => %{},
          "minzoom" => 13,
          "paint" => %{
            "text-color" => "rgba(113, 103, 95, 1)",
            "text-halo-blur" => 0.5,
            "text-halo-color" => "rgba(255, 255, 255, 1)",
            "text-halo-width" => 1
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation_name",
          "type" => "symbol"
        },
        %{
          "filter" => ["all", ["==", "subclass", "ferry"]],
          "id" => "road_ferry_label",
          "layout" => %{
            "symbol-placement" => "line",
            "text-anchor" => "center",
            "text-field" => [
              "concat",
              ["get", "name:latin"],
              " ",
              ["get", "name:nonlatin"]
            ],
            "text-font" => ["Roboto Italic", "Noto Sans Italic"],
            "text-offset" => [0.8, 0.8],
            "text-size" => %{"base" => 1, "stops" => [~c"\r\v", [15, 12]]}
          },
          "minzoom" => 12,
          "paint" => %{
            "text-color" => "rgba(46, 126, 168, 1)",
            "text-halo-blur" => 0.5,
            "text-halo-width" => 1
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation_name",
          "type" => "symbol"
        },
        %{
          "filter" => ["all", ["!in", "subclass", "ferry", "gondola", "cable_car"]],
          "id" => "road_label",
          "layout" => %{
            "symbol-placement" => "line",
            "text-anchor" => "center",
            "text-field" => [
              "concat",
              ["get", "name:latin"],
              " ",
              ["get", "name:nonlatin"]
            ],
            "text-font" => ["Roboto Regular", "Noto Sans Regular"],
            "text-offset" => [0, 0.15],
            "text-size" => %{"base" => 1, "stops" => [~c"\r\v", [14, 13]]}
          },
          "metadata" => %{},
          "paint" => %{
            "text-color" => "#765",
            "text-halo-blur" => 0.5,
            "text-halo-width" => 1
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation_name",
          "type" => "symbol"
        },
        %{
          "filter" => [
            "all",
            ["==", "$type", "Point"],
            ["==", "subclass", "junction"],
            [">", "ref_length", 0]
          ],
          "id" => "highway-junction",
          "layout" => %{
            "icon-image" => "circle_8",
            "icon-rotation-alignment" => "viewport",
            "icon-size" => 1,
            "icon-text-fit" => "none",
            "symbol-avoid-edges" => true,
            "symbol-placement" => "point",
            "symbol-spacing" => 200,
            "symbol-z-order" => "auto",
            "text-anchor" => "bottom-left",
            "text-field" => "Exit {ref}",
            "text-font" => ["Noto Sans Regular"],
            "text-justify" => "center",
            "text-offset" => [0.55, -0.4],
            "text-pitch-alignment" => "auto",
            "text-rotation-alignment" => "viewport",
            "text-size" => 10,
            "visibility" => "visible"
          },
          "minzoom" => 15.5,
          "paint" => %{"icon-opacity" => 1, "text-color" => "rgba(79, 77, 77, 1)"},
          "source" => "openmaptiles",
          "source-layer" => "transportation_name",
          "type" => "symbol"
        },
        %{
          "filter" => [
            "all",
            ["<=", "ref_length", 6],
            ["==", "$type", "LineString"],
            ["!in", "network", "us-interstate", "us-highway", "us-state"]
          ],
          "id" => "highway-shield",
          "layout" => %{
            "icon-image" => "road_{ref_length}",
            "icon-rotation-alignment" => "viewport",
            "icon-size" => 1,
            "symbol-avoid-edges" => true,
            "symbol-placement" => %{
              "base" => 1,
              "stops" => [[10, "point"], [11, "line"]]
            },
            "symbol-spacing" => 200,
            "text-field" => "{ref}",
            "text-font" => ["Noto Sans Regular"],
            "text-rotation-alignment" => "viewport",
            "text-size" => 10
          },
          "minzoom" => 8,
          "paint" => %{"text-color" => "rgba(37, 36, 36, 1)"},
          "source" => "openmaptiles",
          "source-layer" => "transportation_name",
          "type" => "symbol"
        },
        %{
          "filter" => [
            "all",
            ["<=", "ref_length", 6],
            ["==", "$type", "LineString"],
            ["in", "network", "us-interstate"]
          ],
          "id" => "highway-shield-us-interstate",
          "layout" => %{
            "icon-image" => "{network}_{ref_length}",
            "icon-rotation-alignment" => "viewport",
            "icon-size" => 1,
            "symbol-avoid-edges" => true,
            "symbol-placement" => %{
              "base" => 1,
              "stops" => [[7, "point"], [7, "line"], [8, "line"]]
            },
            "symbol-spacing" => 200,
            "text-field" => "{ref}",
            "text-font" => ["Noto Sans Regular"],
            "text-rotation-alignment" => "viewport",
            "text-size" => 9
          },
          "minzoom" => 7,
          "paint" => %{"text-color" => "rgba(255, 255, 255, 1)"},
          "source" => "openmaptiles",
          "source-layer" => "transportation_name",
          "type" => "symbol"
        },
        %{
          "filter" => [
            "all",
            ["<=", "ref_length", 6],
            ["==", "$type", "LineString"],
            ["in", "network", "us-highway", "us-state"]
          ],
          "id" => "highway-shield-us-other",
          "layout" => %{
            "icon-image" => "{network}_{ref_length}",
            "icon-rotation-alignment" => "viewport",
            "icon-size" => 1,
            "symbol-avoid-edges" => true,
            "symbol-placement" => %{
              "base" => 1,
              "stops" => [[10, "point"], [11, "line"]]
            },
            "symbol-spacing" => 200,
            "text-field" => "{ref}",
            "text-font" => ["Noto Sans Regular"],
            "text-rotation-alignment" => "viewport",
            "text-size" => 9
          },
          "minzoom" => 9,
          "paint" => %{"text-color" => "rgba(37, 36, 36, 1)"},
          "source" => "openmaptiles",
          "source-layer" => "transportation_name",
          "type" => "symbol"
        },
        %{
          "filter" => ["all", ["has", "iata"]],
          "id" => "airport_label",
          "layout" => %{
            "icon-image" => "airport_11",
            "icon-size" => 1,
            "text-anchor" => "top",
            "text-field" => [
              "concat",
              ["get", "name:latin"],
              "\n",
              ["get", "name:nonlatin"]
            ],
            "text-font" => ["Noto Sans Regular"],
            "text-max-width" => 9,
            "text-offset" => [0, 0.6],
            "text-optional" => true,
            "text-padding" => 2,
            "text-size" => %{"stops" => [~c"\b\n", [14, 13]]},
            "visibility" => "visible"
          },
          "minzoom" => 8.5,
          "paint" => %{
            "text-color" => "#666",
            "text-halo-blur" => 0.5,
            "text-halo-color" => "#ffffff",
            "text-halo-width" => 1
          },
          "source" => "openmaptiles",
          "source-layer" => "aerodrome_label",
          "type" => "symbol"
        },
        %{
          "filter" => ["all", ["==", "class", "gate"]],
          "id" => "airport_gate",
          "layout" => %{
            "text-field" => "{ref}",
            "text-font" => ["Roboto Medium", "Noto Sans Regular"],
            "text-size" => %{"stops" => [[17, 9], [19, 15]]}
          },
          "minzoom" => 16.5,
          "paint" => %{
            "text-color" => "rgba(135, 135, 135, 1)",
            "text-halo-color" => "rgba(255, 255, 255, 1)",
            "text-halo-width" => 1.5
          },
          "source" => "openmaptiles",
          "source-layer" => "aeroway",
          "type" => "symbol"
        },
        %{
          "filter" => ["all", ["==", "rank", 1]],
          "id" => "place_park",
          "layout" => %{
            "symbol-avoid-edges" => false,
            "symbol-spacing" => 1250,
            "text-field" => [
              "concat",
              ["get", "name:latin"],
              "\n",
              ["get", "name:nonlatin"]
            ],
            "text-font" => ["Roboto Condensed Italic", "Noto Sans Italic"],
            "text-letter-spacing" => 0.1,
            "text-max-width" => 9,
            "text-size" => %{"base" => 1.2, "stops" => [~c"\f\n", [15, 14]]},
            "text-transform" => "none",
            "visibility" => "visible"
          },
          "metadata" => %{},
          "minzoom" => 12,
          "paint" => %{
            "text-color" => "rgba(94, 141, 58, 1)",
            "text-halo-blur" => 0.5,
            "text-halo-color" => "rgba(255,255,255,0.8)",
            "text-halo-width" => 1.2
          },
          "source" => "openmaptiles",
          "source-layer" => "park",
          "type" => "symbol"
        },
        %{
          "filter" => [
            "all",
            ["in", "class", "hamlet", "island", "islet", "neighbourhood", "suburb"]
          ],
          "id" => "place_other",
          "layout" => %{
            "text-field" => [
              "concat",
              ["get", "name:latin"],
              "\n",
              ["get", "name:nonlatin"]
            ],
            "text-font" => ["Roboto Condensed Italic", "Noto Sans Italic"],
            "text-letter-spacing" => 0.1,
            "text-max-width" => 9,
            "text-size" => %{"base" => 1.2, "stops" => [~c"\f\n", [15, 14]]},
            "text-transform" => "uppercase",
            "visibility" => "visible"
          },
          "metadata" => %{},
          "minzoom" => 8,
          "paint" => %{
            "text-color" => "rgba(66, 62, 62, 1)",
            "text-halo-color" => "rgba(255,255,255,0.8)",
            "text-halo-width" => 1.2
          },
          "source" => "openmaptiles",
          "source-layer" => "place",
          "type" => "symbol"
        },
        %{
          "filter" => ["all", ["==", "class", "village"]],
          "id" => "place_village",
          "layout" => %{
            "text-field" => [
              "concat",
              ["get", "name:latin"],
              "\n",
              ["get", "name:nonlatin"]
            ],
            "text-font" => ["Roboto Regular", "Noto Sans Regular"],
            "text-max-width" => 8,
            "text-size" => %{"base" => 1.2, "stops" => [~c"\n\f", [15, 22]]}
          },
          "metadata" => %{},
          "minzoom" => 8,
          "paint" => %{
            "text-color" => "#333",
            "text-halo-color" => "rgba(255,255,255,0.8)",
            "text-halo-width" => 1.2
          },
          "source" => "openmaptiles",
          "source-layer" => "place",
          "type" => "symbol"
        },
        %{
          "filter" => ["all", ["==", "class", "town"]],
          "id" => "place_town",
          "layout" => %{
            "icon-image" => %{
              "base" => 1,
              "stops" => [[0, "circle-stroked_16"], [10, ""]]
            },
            "text-anchor" => "bottom",
            "text-field" => [
              "concat",
              ["get", "name:latin"],
              "\n",
              ["get", "name:nonlatin"]
            ],
            "text-font" => ["Roboto Regular", "Noto Sans Regular"],
            "text-max-width" => 8,
            "text-offset" => [0, 0],
            "text-size" => %{"base" => 1.2, "stops" => [~c"\a\f", [11, 16]]}
          },
          "metadata" => %{},
          "minzoom" => 6,
          "paint" => %{
            "text-color" => "#333",
            "text-halo-color" => "rgba(255,255,255,0.8)",
            "text-halo-width" => 1.2
          },
          "source" => "openmaptiles",
          "source-layer" => "place",
          "type" => "symbol"
        },
        %{
          "filter" => ["all", ["==", "class", "state"], ["in", "rank", 3, 4, 5]],
          "id" => "place_region",
          "layout" => %{
            "text-field" => [
              "concat",
              ["get", "name:latin"],
              "\n",
              ["get", "name:nonlatin"]
            ],
            "text-font" => ["Roboto Medium", "Noto Sans Regular"],
            "text-letter-spacing" => 0.1,
            "text-padding" => 2,
            "text-size" => %{"stops" => [[3, 9], [5, 10], [6, 11]]},
            "text-transform" => "uppercase",
            "visibility" => "visible"
          },
          "maxzoom" => 7,
          "metadata" => %{},
          "minzoom" => 5,
          "paint" => %{
            "text-color" => "rgba(118, 116, 108, 1)",
            "text-halo-color" => "rgba(255,255,255,0.7)",
            "text-halo-width" => 0.8
          },
          "source" => "openmaptiles",
          "source-layer" => "place",
          "type" => "symbol"
        },
        %{
          "filter" => ["all", ["==", "class", "state"], ["in", "rank", 1, 2]],
          "id" => "place_state",
          "layout" => %{
            "text-field" => [
              "concat",
              ["get", "name:latin"],
              "\n",
              ["get", "name:nonlatin"]
            ],
            "text-font" => ["Roboto Medium", "Noto Sans Regular"],
            "text-letter-spacing" => 0.1,
            "text-padding" => 2,
            "text-size" => %{"stops" => [[3, 9], [5, 11], [6, 12]]},
            "text-transform" => "uppercase",
            "visibility" => "visible"
          },
          "maxzoom" => 6,
          "metadata" => %{},
          "minzoom" => 3,
          "paint" => %{
            "text-color" => "rgba(118, 116, 108, 1)",
            "text-halo-color" => "rgba(255,255,255,0.7)",
            "text-halo-width" => 0.8
          },
          "source" => "openmaptiles",
          "source-layer" => "place",
          "type" => "symbol"
        },
        %{
          "filter" => ["all", ["==", "class", "city"]],
          "id" => "place_city",
          "layout" => %{
            "icon-allow-overlap" => true,
            "icon-image" => %{
              "base" => 1,
              "stops" => [[0, "circle-stroked_16"], [10, ""]]
            },
            "icon-optional" => false,
            "text-anchor" => "bottom",
            "text-field" => [
              "concat",
              ["get", "name:latin"],
              "\n",
              ["get", "name:nonlatin"]
            ],
            "text-font" => ["Roboto Medium", "Noto Sans Regular"],
            "text-max-width" => 8,
            "text-offset" => [0, 0],
            "text-size" => %{"base" => 1.2, "stops" => [[7, 14], [11, 24]]}
          },
          "metadata" => %{},
          "minzoom" => 5,
          "paint" => %{
            "text-color" => "#333",
            "text-halo-color" => "rgba(255,255,255,0.8)",
            "text-halo-width" => 1.2
          },
          "source" => "openmaptiles",
          "source-layer" => "place",
          "type" => "symbol"
        },
        %{
          "filter" => ["all", ["==", "class", "country"], ["!has", "iso_a2"]],
          "id" => "country_other",
          "layout" => %{
            "text-field" => "{name:latin}",
            "text-font" => ["Roboto Condensed Italic", "Noto Sans Italic"],
            "text-max-width" => 6.25,
            "text-size" => %{"stops" => [[3, 9], [7, 15]]},
            "text-transform" => "none"
          },
          "metadata" => %{},
          "paint" => %{
            "text-color" => "#334",
            "text-halo-blur" => 1,
            "text-halo-color" => "rgba(255,255,255,0.8)",
            "text-halo-width" => 0.8
          },
          "source" => "openmaptiles",
          "source-layer" => "place",
          "type" => "symbol"
        },
        %{
          "filter" => [
            "all",
            [">=", "rank", 3],
            ["==", "class", "country"],
            ["has", "iso_a2"]
          ],
          "id" => "country_3",
          "layout" => %{
            "text-field" => "{name:latin}",
            "text-font" => ["Roboto Condensed Italic", "Noto Sans Italic"],
            "text-max-width" => 6.25,
            "text-size" => %{"stops" => [[3, 11], [7, 17]]},
            "text-transform" => "none"
          },
          "metadata" => %{},
          "paint" => %{
            "text-color" => "#334",
            "text-halo-blur" => 1,
            "text-halo-color" => "rgba(255,255,255,0.8)",
            "text-halo-width" => 0.8
          },
          "source" => "openmaptiles",
          "source-layer" => "place",
          "type" => "symbol"
        },
        %{
          "filter" => [
            "all",
            ["==", "rank", 2],
            ["==", "class", "country"],
            ["has", "iso_a2"]
          ],
          "id" => "country_2",
          "layout" => %{
            "text-field" => "{name:latin}",
            "text-font" => ["Roboto Condensed Italic", "Noto Sans Italic"],
            "text-max-width" => 6.25,
            "text-size" => %{"stops" => [[2, 11], [5, 17]]},
            "text-transform" => "none"
          },
          "metadata" => %{},
          "paint" => %{
            "text-color" => "#334",
            "text-halo-blur" => 1,
            "text-halo-color" => "rgba(255,255,255,0.8)",
            "text-halo-width" => 0.8
          },
          "source" => "openmaptiles",
          "source-layer" => "place",
          "type" => "symbol"
        },
        %{
          "filter" => [
            "all",
            ["==", "rank", 1],
            ["==", "class", "country"],
            ["has", "iso_a2"]
          ],
          "id" => "country_1",
          "layout" => %{
            "text-field" => "{name:latin}",
            "text-font" => ["Roboto Condensed Italic", "Noto Sans Italic"],
            "text-max-width" => 6.25,
            "text-size" => %{"stops" => [[1, 11], [4, 17], [6, 19]]},
            "text-transform" => "none"
          },
          "metadata" => %{},
          "paint" => %{
            "text-color" => "#334",
            "text-halo-blur" => 1,
            "text-halo-color" => "rgba(255,255,255,0.8)",
            "text-halo-width" => 0.8
          },
          "source" => "openmaptiles",
          "source-layer" => "place",
          "type" => "symbol"
        },
        %{
          "filter" => ["all", ["==", "class", "continent"]],
          "id" => "continent",
          "layout" => %{
            "text-field" => "{name:latin}",
            "text-font" => ["Roboto Condensed Italic", "Noto Sans Italic"],
            "text-justify" => "center",
            "text-size" => 13,
            "text-transform" => "uppercase"
          },
          "maxzoom" => 1,
          "metadata" => %{},
          "paint" => %{
            "text-color" => "#633",
            "text-halo-color" => "rgba(255,255,255,0.7)",
            "text-halo-width" => 1
          },
          "source" => "openmaptiles",
          "source-layer" => "place",
          "type" => "symbol"
        },
        %{
          "id" => "housenumber",
          "layout" => %{
            "text-field" => "{housenumber}",
            "text-font" => ["Roboto Medium", "Noto Sans Regular"],
            "text-size" => 10
          },
          "minzoom" => 17.5,
          "paint" => %{"text-color" => "rgba(119, 102, 85, 0.69)"},
          "source" => "openmaptiles",
          "source-layer" => "housenumber",
          "type" => "symbol"
        }
      ],
      "metadata" => %{
        "maptiler:copyright" =>
          "This style was generated on MapTiler Cloud. Usage outside of MapTiler Cloud requires valid MapTiler Data Package: https://www.maptiler.com/data/package/ -- please contact us."
      },
      "name" => "Streets",
      "pitch" => 0,
      "sources" => %{
        "maptiler_attribution" => %{
          "attribution" =>
            "<a href=\"https://www.maptiler.com/copyright/\" target=\"_blank\">&copy; MapTiler</a> <a href=\"https://www.openstreetmap.org/copyright\" target=\"_blank\">&copy; OpenStreetMap contributors</a>",
          "type" => "vector"
        },
        "openmaptiles" => %{
          "type" => "vector",
          "url" => "https://api.maptiler.com/tiles/v3/tiles.json?key=#{maptiler_key}"
        }
      },
      "sprite" => "https://api.maptiler.com/maps/streets/sprite",
      "version" => 8,
      "zoom" => 1
    }
  end

  defp terrain(maptiler_key) do
    %{
      "bearing" => 0,
      "center" => [0, 0],
      "glyphs" => "https://api.maptiler.com/fonts/{fontstack}/{range}.pbf?key=#{maptiler_key}",
      "id" => "hybrid",
      "layers" => [
        %{
          "filter" => ["all"],
          "id" => "satellite",
          "layout" => %{"visibility" => "visible"},
          "minzoom" => 0,
          "paint" => %{"raster-opacity" => 1},
          "source" => "satellite",
          "type" => "raster"
        },
        %{
          "filter" => [
            "all",
            ["==", "$type", "LineString"],
            ["==", "brunnel", "tunnel"],
            ["in", "class", "motorway", "primary", "secondary", "tertiary", "trunk"]
          ],
          "id" => "tunnel",
          "layout" => %{"line-cap" => "butt", "line-join" => "miter"},
          "paint" => %{
            "line-color" => "rgba(255, 255, 255, 0.2)",
            "line-dasharray" => [0.28, 0.14],
            "line-width" => [
              "interpolate",
              ["exponential", 1.5],
              ["zoom"],
              6,
              0.5,
              20,
              30
            ]
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "$type", "LineString"],
            ["in", "class", "path", "track"]
          ],
          "id" => "path",
          "layout" => %{"line-cap" => "square", "line-join" => "bevel"},
          "paint" => %{
            "line-color" => "rgba(247, 247, 247, 0.33)",
            "line-dasharray" => [1, 1],
            "line-width" => [
              "interpolate",
              ["exponential", 1.5],
              ["zoom"],
              14,
              0.5,
              20,
              4
            ]
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "$type", "LineString"],
            ["!in", "class", "rail", "ferry", "path", "track"],
            ["!=", "brunnel", "tunnel"]
          ],
          "id" => "road",
          "layout" => %{"line-cap" => "butt", "line-join" => "round"},
          "minzoom" => 6,
          "paint" => %{
            "line-color" => %{
              "stops" => [
                [8, "rgba(255, 255, 255, 0.2)"],
                [14, "rgba(255, 255, 255, 0.4)"],
                [18, "rgba(255, 255, 255, 0.5)"]
              ]
            },
            "line-width" => [
              "interpolate",
              ["linear"],
              ["zoom"],
              5,
              ["match", ["get", "class"], ["motorway", "motorway_link"], 1, 0],
              7,
              ["match", ["get", "class"], ["motorway", "motorway_link"], 1.4, 0],
              8,
              [
                "match",
                ["get", "class"],
                ["motorway", "motorway_link", "primary", "trunk"],
                0.75,
                0
              ],
              9,
              ["match", ["get", "class"], ["secondary", "tertiary"], 0.7, 1],
              10,
              ["match", ["get", "class"], ["motorway", "motorway_link"], 1.3, 1.3],
              14,
              ["match", ["get", "class"], ["minor", "service"], 0.5, 2.4]
            ]
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => ["==", "class", "rail"],
          "id" => "railway",
          "layout" => %{"visibility" => "visible"},
          "minzoom" => 11,
          "paint" => %{
            "line-color" => "rgba(179, 170, 158, 0.2)",
            "line-opacity" => [
              "interpolate",
              ["linear"],
              ["zoom"],
              11,
              0.5,
              16,
              1.3
            ]
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation",
          "type" => "line"
        },
        %{
          "filter" => ["in", "admin_level", 4, 6, 8],
          "id" => "admin_sub",
          "layout" => %{"visibility" => "visible"},
          "minzoom" => 3,
          "paint" => %{
            "line-color" => "rgba(194, 194, 194, 0.5)",
            "line-dasharray" => [2, 1]
          },
          "source" => "openmaptiles",
          "source-layer" => "boundary",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["<=", "admin_level", 2],
            ["==", "$type", "LineString"]
          ],
          "id" => "admin_country-dark",
          "layout" => %{
            "line-cap" => "butt",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "paint" => %{
            "line-color" => "rgba(0, 0, 0, 0.51)",
            "line-offset" => 1,
            "line-width" => [
              "interpolate",
              ["exponential", 1.5],
              ["zoom"],
              3,
              0.5,
              21,
              32
            ]
          },
          "source" => "openmaptiles",
          "source-layer" => "boundary",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["<=", "admin_level", 2],
            ["==", "$type", "LineString"]
          ],
          "id" => "admin_country",
          "layout" => %{
            "line-cap" => "round",
            "line-join" => "round",
            "visibility" => "visible"
          },
          "paint" => %{
            "line-color" => "rgba(226, 226, 226, 1)",
            "line-width" => [
              "interpolate",
              ["exponential", 1.5],
              ["zoom"],
              3,
              0.5,
              21,
              32
            ]
          },
          "source" => "openmaptiles",
          "source-layer" => "boundary",
          "type" => "line"
        },
        %{
          "filter" => [
            "all",
            ["==", "$type", "LineString"],
            ["!=", "subclass", "ferry"]
          ],
          "id" => "road_label",
          "layout" => %{
            "symbol-placement" => "line",
            "text-field" => [
              "concat",
              ["get", "name:latin"],
              " ",
              ["get", "name:nonlatin"]
            ],
            "text-font" => ["Noto Sans Regular"],
            "text-letter-spacing" => 0.1,
            "text-rotation-alignment" => "map",
            "text-size" => [
              "interpolate",
              ["linear", 0.75, 1, 0.75, 1],
              ["zoom"],
              10,
              8,
              15,
              9
            ],
            "text-transform" => "none"
          },
          "paint" => %{
            "text-color" => "rgba(255, 255, 255, 1)",
            "text-halo-color" => "rgba(43, 43, 43, 1)",
            "text-halo-width" => 1
          },
          "source" => "openmaptiles",
          "source-layer" => "transportation_name",
          "type" => "symbol"
        },
        %{
          "filter" => [
            "all",
            ["==", "$type", "Point"],
            ["!in", "class", "country", "state"]
          ],
          "id" => "place_label",
          "layout" => %{
            "text-field" => [
              "concat",
              ["get", "name:latin"],
              "\n",
              ["get", "name:nonlatin"]
            ],
            "text-font" => ["Noto Sans Regular"],
            "text-max-width" => 10,
            "text-size" => [
              "interpolate",
              ["linear", 0.5, 1, 0.5, 1],
              ["zoom"],
              3,
              ["match", ["get", "class"], "city", 11, 10],
              6,
              ["match", ["get", "class"], "city", 14.5, 11],
              8,
              ["match", ["get", "class"], "city", 16, 12],
              10,
              ["match", ["get", "class"], "city", 20, 13]
            ]
          },
          "maxzoom" => 16,
          "minzoom" => 3,
          "paint" => %{
            "text-color" => "rgba(255, 255, 255, 1)",
            "text-halo-blur" => 0.5,
            "text-halo-color" => "rgba(0, 0, 0, 1)",
            "text-halo-width" => 1
          },
          "source" => "openmaptiles",
          "source-layer" => "place",
          "type" => "symbol"
        },
        %{
          "filter" => [
            "all",
            ["==", "$type", "Point"],
            ["in", "class", "state"],
            ["<", "rank", 3]
          ],
          "id" => "state_label",
          "layout" => %{
            "text-field" => "{name:latin}",
            "text-font" => ["Noto Sans Italic"],
            "text-max-width" => 10,
            "text-size" => [
              "interpolate",
              ["linear", 0.75, 1, 0.75, 1],
              ["zoom"],
              1,
              ["step", ["get", "rank"], 13, 1, 12, 2, 12],
              4,
              ["step", ["get", "rank"], 15, 1, 13, 2, 13],
              6,
              ["step", ["get", "rank"], 23, 1, 17, 2, 17],
              9,
              ["step", ["get", "rank"], 27, 1, 20, 2, 20]
            ]
          },
          "maxzoom" => 12,
          "minzoom" => 3,
          "paint" => %{
            "text-color" => "rgba(255, 255, 255, 1)",
            "text-halo-blur" => 1,
            "text-halo-color" => "rgba(0, 0, 0, 1)",
            "text-halo-width" => 1
          },
          "source" => "openmaptiles",
          "source-layer" => "place",
          "type" => "symbol"
        },
        %{
          "filter" => ["all", ["==", "$type", "Point"], ["in", "class", "country"]],
          "id" => "country_label",
          "layout" => %{
            "text-field" => "{name:latin}",
            "text-font" => ["Noto Sans Bold"],
            "text-max-width" => 10,
            "text-size" => [
              "interpolate",
              ["linear", 0.75, 1, 0.75, 1],
              ["zoom"],
              1,
              ["step", ["get", "rank"], 13, 1, 12, 2, 12],
              4,
              ["step", ["get", "rank"], 15, 1, 14, 2, 14],
              6,
              ["step", ["get", "rank"], 23, 1, 18, 2, 18],
              9,
              ["step", ["get", "rank"], 27, 1, 22, 2, 22]
            ]
          },
          "maxzoom" => 12,
          "paint" => %{
            "text-color" => "rgba(255, 255, 255, 1)",
            "text-halo-blur" => 1,
            "text-halo-color" => "rgba(0, 0, 0, 1)",
            "text-halo-width" => 1
          },
          "source" => "openmaptiles",
          "source-layer" => "place",
          "type" => "symbol"
        }
      ],
      "metadata" => %{
        "maptiler:copyright" =>
          "This style was generated on MapTiler Cloud. Usage outside of MapTiler Cloud requires valid MapTiler Data Package: https://www.maptiler.com/data/package/ -- please contact us."
      },
      "name" => "Satellite Hybrid",
      "pitch" => 0,
      "sources" => %{
        "openmaptiles" => %{
          "type" => "vector",
          "url" => "https://api.maptiler.com/tiles/v3/tiles.json?key=#{maptiler_key}"
        },
        "satellite" => %{
          "tileSize" => 512,
          "type" => "raster",
          "url" => "https://api.maptiler.com/tiles/satellite-v2/tiles.json?key=#{maptiler_key}"
        }
      },
      "version" => 8,
      "zoom" => 1
    }
  end
end
