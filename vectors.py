COLOR_BACKGROUND = (0.9, 0.9, 0.9)
COLOR_MARKER = (0.0, 0.5, 0.0)
COLOR_LINE = (0.1, 0.1, 0.1)


class VectorImage:
    def __init__(self, background, lines=[], markers=[]) -> None:
        self.background = background
        self.markers = markers
        self.lines = lines

    def __repr__(self) -> str:
        return f"VectorImage(background={self.background}, lines={self.lines}, markers={self.markers})"


vectors = dict()

vectors["blank"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
)

vectors["gap_start"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.5)], "color": COLOR_LINE},
    ],
)

vectors["gap_end"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 0.0), (0.5, 0.5)], "color": COLOR_LINE},
    ],
)

vectors["corner_left_90"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.5), (0, 0.5)], "color": COLOR_LINE},
    ],
)

vectors["corner_right_90"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.5), (1.0, 0.5)], "color": COLOR_LINE},
    ],
)

vectors["intersection_straight_unmarked"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.5)], "color": COLOR_LINE},
        {"points": [(0.0, 0.5), (1.0, 0.5)], "color": COLOR_LINE},
    ],
)

vectors["intersection_straight_marked_left"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.5)], "color": COLOR_LINE},
        {"points": [(0.0, 0.5), (1.0, 0.5)], "color": COLOR_LINE},
    ],
    markers=[
        {"position": (0.4, 0.6), "color": COLOR_MARKER},
    ],
)

vectors["intersection_straight_marked_right"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.5)], "color": COLOR_LINE},
        {"points": [(0.0, 0.5), (1.0, 0.5)], "color": COLOR_LINE},
    ],
    markers=[
        {"position": (0.6, 0.6), "color": COLOR_MARKER},
    ],
)

vectors["intersection_straight_marked_both"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.5)], "color": COLOR_LINE},
        {"points": [(0.0, 0.5), (1.0, 0.5)], "color": COLOR_LINE},
    ],
    markers=[
        {"position": (0.4, 0.6), "color": COLOR_MARKER},
        {"position": (0.6, 0.6), "color": COLOR_MARKER},
    ],
)

vectors["intersection_left_unmarked"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.0)], "color": COLOR_LINE},
        {"points": [(0.0, 0.5), (0.5, 0.5)], "color": COLOR_LINE},
    ],
)

vectors["intersection_left_marked_top"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.0)], "color": COLOR_LINE},
        {"points": [(0.0, 0.5), (0.5, 0.5)], "color": COLOR_LINE},
    ],
    markers=[
        {"position": (0.4, 0.4), "color": COLOR_MARKER},
    ],
)

vectors["intersection_left_marked_bottom"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.0)], "color": COLOR_LINE},
        {"points": [(0.0, 0.5), (0.5, 0.5)], "color": COLOR_LINE},
    ],
    markers=[
        {"position": (0.4, 0.6), "color": COLOR_MARKER},
    ],
)

vectors["intersection_left_marked_both"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.0)], "color": COLOR_LINE},
        {"points": [(0.0, 0.5), (0.5, 0.5)], "color": COLOR_LINE},
    ],
    markers=[
        {"position": (0.4, 0.4), "color": COLOR_MARKER},
        {"position": (0.4, 0.6), "color": COLOR_MARKER},
    ],
)

vectors["intersection_right_unmarked"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.0)], "color": COLOR_LINE},
        {"points": [(1.0, 0.5), (0.5, 0.5)], "color": COLOR_LINE},
    ],
)

vectors["intersection_right_marked_top"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.0)], "color": COLOR_LINE},
        {"points": [(1.0, 0.5), (0.5, 0.5)], "color": COLOR_LINE},
    ],
    markers=[
        {"position": (0.6, 0.4), "color": COLOR_MARKER},
    ],
)

vectors["intersection_right_marked_bottom"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.0)], "color": COLOR_LINE},
        {"points": [(1.0, 0.5), (0.5, 0.5)], "color": COLOR_LINE},
    ],
    markers=[
        {"position": (0.6, 0.6), "color": COLOR_MARKER},
    ],
)

vectors["intersection_right_marked_both"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.0)], "color": COLOR_LINE},
        {"points": [(1.0, 0.5), (0.5, 0.5)], "color": COLOR_LINE},
    ],
    markers=[
        {"position": (0.6, 0.4), "color": COLOR_MARKER},
        {"position": (0.6, 0.6), "color": COLOR_MARKER},
    ],
)

vectors["crossing_unmarked"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.0)], "color": COLOR_LINE},
        {"points": [(1.0, 0.5), (0.0, 0.5)], "color": COLOR_LINE},
    ],
)

vectors["crossing_marked_single_bottom_left"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.0)], "color": COLOR_LINE},
        {"points": [(1.0, 0.5), (0.0, 0.5)], "color": COLOR_LINE},
    ],
    markers=[
        {"position": (0.4, 0.6), "color": COLOR_MARKER},
    ],
)

vectors["crossing_marked_single_bottom_right"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.0)], "color": COLOR_LINE},
        {"points": [(1.0, 0.5), (0.0, 0.5)], "color": COLOR_LINE},
    ],
    markers=[
        {"position": (0.6, 0.6), "color": COLOR_MARKER},
    ],
)

vectors["crossing_marked_single_top_left"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.0)], "color": COLOR_LINE},
        {"points": [(1.0, 0.5), (0.0, 0.5)], "color": COLOR_LINE},
    ],
    markers=[
        {"position": (0.4, 0.4), "color": COLOR_MARKER},
    ],
)

vectors["crossing_marked_single_top_right"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.0)], "color": COLOR_LINE},
        {"points": [(1.0, 0.5), (0.0, 0.5)], "color": COLOR_LINE},
    ],
    markers=[
        {"position": (0.6, 0.4), "color": COLOR_MARKER},
    ],
)

vectors["crossing_marked_double_bottom"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.0)], "color": COLOR_LINE},
        {"points": [(1.0, 0.5), (0.0, 0.5)], "color": COLOR_LINE},
    ],
    markers=[
        {"position": (0.4, 0.6), "color": COLOR_MARKER},
        {"position": (0.6, 0.6), "color": COLOR_MARKER},
    ],
)

vectors["crossing_marked_double_top"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.0)], "color": COLOR_LINE},
        {"points": [(1.0, 0.5), (0.0, 0.5)], "color": COLOR_LINE},
    ],
    markers=[
        {"position": (0.4, 0.4), "color": COLOR_MARKER},
        {"position": (0.6, 0.4), "color": COLOR_MARKER},
    ],
)

vectors["crossing_marked_double_left"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.0)], "color": COLOR_LINE},
        {"points": [(1.0, 0.5), (0.0, 0.5)], "color": COLOR_LINE},
    ],
    markers=[
        {"position": (0.4, 0.4), "color": COLOR_MARKER},
        {"position": (0.4, 0.6), "color": COLOR_MARKER},
    ],
)

vectors["crossing_marked_double_right"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.0)], "color": COLOR_LINE},
        {"points": [(1.0, 0.5), (0.0, 0.5)], "color": COLOR_LINE},
    ],
    markers=[
        {"position": (0.6, 0.4), "color": COLOR_MARKER},
        {"position": (0.6, 0.6), "color": COLOR_MARKER},
    ],
)

vectors["crossing_marked_triple_bottom_left"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.0)], "color": COLOR_LINE},
        {"points": [(1.0, 0.5), (0.0, 0.5)], "color": COLOR_LINE},
    ],
    markers=[
        {"position": (0.4, 0.4), "color": COLOR_MARKER},
        {"position": (0.4, 0.6), "color": COLOR_MARKER},
        {"position": (0.6, 0.6), "color": COLOR_MARKER},
    ],
)

vectors["crossing_marked_triple_bottom_right"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.0)], "color": COLOR_LINE},
        {"points": [(1.0, 0.5), (0.0, 0.5)], "color": COLOR_LINE},
    ],
    markers=[
        {"position": (0.6, 0.4), "color": COLOR_MARKER},
        {"position": (0.4, 0.6), "color": COLOR_MARKER},
        {"position": (0.6, 0.6), "color": COLOR_MARKER},
    ],
)

vectors["crossing_marked_triple_top_left"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.0)], "color": COLOR_LINE},
        {"points": [(1.0, 0.5), (0.0, 0.5)], "color": COLOR_LINE},
    ],
    markers=[
        {"position": (0.4, 0.4), "color": COLOR_MARKER},
        {"position": (0.6, 0.4), "color": COLOR_MARKER},
        {"position": (0.4, 0.6), "color": COLOR_MARKER},
    ],
)

vectors["crossing_marked_triple_top_right"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.0)], "color": COLOR_LINE},
        {"points": [(1.0, 0.5), (0.0, 0.5)], "color": COLOR_LINE},
    ],
    markers=[
        {"position": (0.4, 0.4), "color": COLOR_MARKER},
        {"position": (0.6, 0.4), "color": COLOR_MARKER},
        {"position": (0.6, 0.6), "color": COLOR_MARKER},
    ],
)

vectors["crossing_marked_double_diag_right"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.0)], "color": COLOR_LINE},
        {"points": [(1.0, 0.5), (0.0, 0.5)], "color": COLOR_LINE},
    ],
    markers=[
        {"position": (0.4, 0.4), "color": COLOR_MARKER},
        {"position": (0.6, 0.6), "color": COLOR_MARKER},
    ],
)

vectors["crossing_marked_double_diag_left"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.0)], "color": COLOR_LINE},
        {"points": [(1.0, 0.5), (0.0, 0.5)], "color": COLOR_LINE},
    ],
    markers=[
        {"position": (0.6, 0.4), "color": COLOR_MARKER},
        {"position": (0.4, 0.6), "color": COLOR_MARKER},
    ],
)

vectors["crossing_marked_quad"] = VectorImage(
    background={"color": COLOR_BACKGROUND},
    lines=[
        {"points": [(0.5, 1.0), (0.5, 0.0)], "color": COLOR_LINE},
        {"points": [(1.0, 0.5), (0.0, 0.5)], "color": COLOR_LINE},
    ],
    markers=[
        {"position": (0.4, 0.4), "color": COLOR_MARKER},  # top left
        {"position": (0.6, 0.4), "color": COLOR_MARKER},  # top right
        {"position": (0.4, 0.6), "color": COLOR_MARKER},  # bottom left
        {"position": (0.6, 0.6), "color": COLOR_MARKER},  # bottom right
    ],
)
